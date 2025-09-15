using System;
using System.Web.UI.WebControls;

namespace TableGenrateDynamically
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Link_button_click(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            Response.Redirect("https://www.google.com");
        }

        protected void btngenrate_Click(object sender, EventArgs e)
        {
            int rows = int.Parse(ddlRows.SelectedValue);
            int cols = int.Parse(ddlCol.SelectedValue);
            Table t = new Table();
            t.BorderWidth = 1;
            for (int i = 0; i < rows; i++)
            {
                TableRow row = new TableRow();
                for (int j = 0; j < cols; j++)
                {
                    TableCell col = new TableCell();
                    LinkButton btn = new LinkButton();
                    btn.Text = $"Link({i+1},{j+1})";
                    btn.ID = $"Link{i}_{j}";
                    btn.Click += new EventHandler(Link_button_click);
                    col.Controls.Add(btn);
                    row.Cells.Add(col);
                }
                t.Rows.Add(row);
            }
            phtable.Controls.Add(t);
        }
    }
}