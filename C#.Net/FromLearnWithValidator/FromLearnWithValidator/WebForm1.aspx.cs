using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FromLearnWithValidator
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                // Example: Collect form data
                string name = txtName.Text.Trim();
                string email = txtEmail.Text.Trim();
                string contact = txtContact.Text.Trim();
                string country = ddlCountry.SelectedValue;
                string state = txtState.Text.Trim();
                string city = txtCity.Text.Trim();
                string address = txtAddress.Text.Trim();
                string gender = rblGender.SelectedValue;
                string dob = txtDOB.Text.Trim();
                string password = txtPassword.Text;

                // Certificates
                string certificates = "";
                foreach (ListItem item in cblCertificates.Items)
                {
                    if (item.Selected)
                    {
                        certificates += item.Text + ", ";
                    }
                }
                if (certificates.EndsWith(", "))
                    certificates = certificates.Substring(0, certificates.Length - 2);

                // Display a confirmation message (you can replace this with your logic)
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Registration successful!');", true);
            }
        }
    }
}