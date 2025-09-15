using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Masterpagequestion
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblMessage.Text = "Welcome! This is your dynamic content area.";
            }
        }

        protected void btnChange_Click(object sender, EventArgs e)
        {
            lblMessage.Text = "Content changed dynamically at " + DateTime.Now.ToString();
        }
    }
}