using System;
using System.Linq;
using System.Web.UI.WebControls;
using WTEXP_8.Models;

namespace WTEXP_8
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        EmployeeContext db = new EmployeeContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                BindGrid();
        }

        private void BindGrid()
        {
            GridView1.DataSource = db.Employees.ToList();
            GridView1.DataBind();
        }

        // CREATE
        protected void btnAdd_Click(object sender, EventArgs e)
        {
            Employee emp = new Employee
            {
                Name = txtName.Text,
                Department = txtDepartment.Text,
                Salary = Convert.ToDecimal(txtSalary.Text)
            };

            db.Employees.Add(emp);      // EF Add
            db.SaveChanges();           // EF Save

            BindGrid();
        }

        // EDIT
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            BindGrid();
        }

        // UPDATE
        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);
            Employee emp = db.Employees.SingleOrDefault(x => x.Id == id);

            if (emp != null)
            {
                emp.Name = ((TextBox)GridView1.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
                emp.Department = ((TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
                emp.Salary = Convert.ToDecimal(((TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0]).Text);

                db.SaveChanges();       // EF Save
            }

            GridView1.EditIndex = -1;
            BindGrid();
        }

        // DELETE
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);
            Employee emp = db.Employees.SingleOrDefault(x => x.Id == id);

            if (emp != null)
            {
                db.Employees.Remove(emp);   // EF Remove
                db.SaveChanges();           // EF Save
            }

            BindGrid();
        }

        // CANCEL
        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            BindGrid();
        }
    }
}
