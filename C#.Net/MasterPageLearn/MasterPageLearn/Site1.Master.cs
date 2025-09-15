using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MasterPageLearn
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        public TextBox Mstrtxt
        {
            get
            {
                return this.TextBox1; 
            }
        }
        public Button Mstrbtn
        {
            get
            {
                return this.Button1;
            }
        }
        public Label Mstrlbl
        {
            get
            {
                return this.Label1; 
            }
        } 
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }
       
    }
}