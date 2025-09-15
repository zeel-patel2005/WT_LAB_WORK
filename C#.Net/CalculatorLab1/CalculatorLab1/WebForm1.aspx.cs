using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CalculatorLab1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void click(object sender, CommandEventArgs e)
        {
            int num1 = int.Parse(text1.Text);
            int num2 = int.Parse(text2.Text);
            int result = 0;
            if(e.CommandName == "calculator")
            {
                if(e.CommandArgument == "+")
                {
                    result = num1 + num2;
                }
                else if(e.CommandArgument == "-")
                {
                    result = num1 - num2;
                }
                else if(e.CommandArgument == "*")
                {
                    result = num1 * num2;
                }
                else if(e.CommandArgument == "/")
                {
                    if(num2 != 0)
                    {
                        result = num1 / num2;
                    }
                    else
                    {
                        result = 0; // Handle division by zero
                    }
                }
            }
            result1.Text = result.ToString();
        }
    }
}