using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WTEXP9
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Application["ChatHistory"] == null)
            {
                Application["ChatHistory"] = ""; // Initialize chat history
            }

            // Always show chat
            litChat.Text = Application["ChatHistory"].ToString();
        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            string user = txtUser.Text.Trim();
            string message = txtMessage.Text.Trim();

            if (string.IsNullOrEmpty(user))
            {
                litChat.Text = "<span style='color:red'>Enter your username first!</span><br/>"
                               + Application["ChatHistory"].ToString();
                return;
            }

            if (!string.IsNullOrEmpty(message))
            {
                string chatLine = $"<div class='msg'><span class='username'>{user}:</span> {message}</div>";

                // Thread-safe update
                Application.Lock();
                Application["ChatHistory"] += chatLine;
                Application.UnLock();

                txtMessage.Text = ""; // clear input

                litChat.Text = Application["ChatHistory"].ToString();
            }
        }
    }
}