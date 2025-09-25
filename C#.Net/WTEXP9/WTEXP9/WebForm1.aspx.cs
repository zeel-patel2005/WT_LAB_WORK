using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WTEXP9
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                MultiView1.ActiveViewIndex = 0; // Default to Login view
            }
        }

        // LOGIN
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text.Trim();
            string password = txtPassword.Text.Trim();

            if (username == "zeel" && password == "123") // Dummy credentials
            {
                Session["Username"] = username;
                lblWelcome.Text = "Welcome, " + username;
                MultiView1.ActiveViewIndex = 1; // Switch to Welcome view
            }
            else
            {
                lblLoginMessage.Text = "Invalid username or password!";
            }
        }

        // GO TO CHANGE PASSWORD
        protected void btnChangePassword_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 2; // Change Password view
        }

        // SAVE NEW PASSWORD
        protected void btnSavePassword_Click(object sender, EventArgs e)
        {
            if (Session["Username"] == null)
            {
                MultiView1.ActiveViewIndex = 0; // Back to login
                return;
            }

            string newPassword = txtNewPassword.Text.Trim();
            lblPasswordMessage.Text = "Password changed successfully!";
            MultiView1.ActiveViewIndex = 1; // Back to welcome
        }

        // GO TO EDIT PROFILE
        protected void btnEditProfile_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 3; // Edit Profile view
        }

        // SAVE PROFILE
        protected void btnSaveProfile_Click(object sender, EventArgs e)
        {
            if (Session["Username"] == null)
            {
                MultiView1.ActiveViewIndex = 0;
                return;
            }

            string newName = txtName.Text.Trim();
            lblProfileMessage.Text = "Profile updated successfully!";
            MultiView1.ActiveViewIndex = 1; // Back to welcome
        }

        // LOGOUT
        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            MultiView1.ActiveViewIndex = 0; // Back to login
        }
    }
}