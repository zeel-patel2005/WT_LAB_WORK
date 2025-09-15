using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MasterPageLearn
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Master.Mstrbtn.Click += Mstrrbtn_Click;

        }

        private void Mstrrbtn_Click(object sender, EventArgs e)
        {
            Master.Mstrlbl.Text = TextBox2.Text;

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            Label2.Text = ((TextBox)Master.FindControl("TextBox1")).Text;
        }
    }
}