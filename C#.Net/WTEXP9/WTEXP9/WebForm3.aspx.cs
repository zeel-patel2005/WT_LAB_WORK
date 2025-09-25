using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WTEXP9
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Initialize Application storage for orders if not already set
            if (Application["Orders"] == null)
            {
                Application["Orders"] = "";
            }
        }

        protected void btnPlaceOrder_Click(object sender, EventArgs e)
        {
            string selectedItems = "";

            // Collect selected items from CheckBoxList
            foreach (System.Web.UI.WebControls.ListItem item in chkItems.Items)
            {
                if (item.Selected)
                {
                    selectedItems += item.Text + ", ";
                }
            }

            if (!string.IsNullOrEmpty(selectedItems))
            {
                selectedItems = selectedItems.TrimEnd(',', ' ');
                string order = $"Order placed at {DateTime.Now}: {selectedItems}\r\n";

                // Add to application-wide orders list (thread safe)
                Application.Lock();
                Application["Orders"] += order;
                Application.UnLock();

                lblMessage.Text = "Your order has been placed successfully!";
                // Clear selection
                foreach (System.Web.UI.WebControls.ListItem item in chkItems.Items)
                {
                    item.Selected = false;
                }
            }
            else
            {
                lblMessage.Text = "Please select at least one item!";
            }
        }

        protected void btnRetrieveOrder_Click(object sender, EventArgs e)
        {
            // Show all orders to admin
            txtOrders.Text = Application["Orders"].ToString();
        }
    }
}