using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CRUD_EXP6
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["MyConn"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadData();
            }
        }

        // Load data into GridView
        private void LoadData()
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Employees", con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                string query = "INSERT INTO Employees(Name,Position,Salary) VALUES(@Name,@Position,@Salary)";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@Name", txtName.Text);
                cmd.Parameters.AddWithValue("@Position", txtPosition.Text);
                cmd.Parameters.AddWithValue("@Salary", txtSalary.Text);

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                lblMessage.Text = "Record Inserted!";
                LoadData();
                ClearFields();
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(hfId.Value))
            {
                using (SqlConnection con = new SqlConnection(cs))
                {
                    string query = "UPDATE Employees SET Name=@Name,Position=@Position,Salary=@Salary WHERE Id=@Id";
                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.Parameters.AddWithValue("@Name", txtName.Text);
                    cmd.Parameters.AddWithValue("@Position", txtPosition.Text);
                    cmd.Parameters.AddWithValue("@Salary", txtSalary.Text);
                    cmd.Parameters.AddWithValue("@Id", hfId.Value);

                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    lblMessage.Text = "Record Updated!";
                    LoadData();
                    ClearFields();
                }
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(hfId.Value))
            {
                using (SqlConnection con = new SqlConnection(cs))
                {
                    string query = "DELETE FROM Employees WHERE Id=@Id";
                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.Parameters.AddWithValue("@Id", hfId.Value);

                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    lblMessage.Text = "Record Deleted!";
                    LoadData();
                    ClearFields();
                }
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            // When user clicks Select in GridView, load data into textboxes
            GridViewRow row = GridView1.SelectedRow;
            hfId.Value = row.Cells[0].Text;
            txtName.Text = row.Cells[1].Text;
            txtPosition.Text = row.Cells[2].Text;
            txtSalary.Text = row.Cells[3].Text;
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            ClearFields();
        }

        private void ClearFields()
        {
            txtName.Text = "";
            txtPosition.Text = "";
            txtSalary.Text = "";
            hfId.Value = "";
        }
    }
}
