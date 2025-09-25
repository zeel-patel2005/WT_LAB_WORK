<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="WTEXP9.WebForm3" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Orders Page</title>
</head>
<body>
    <form id="form1" runat="server">
        <!-- User section -->
        <div class="section">
            <h2>Zeel – Place Order</h2>
            <asp:CheckBoxList ID="chkItems" runat="server">
                <asp:ListItem>Pen</asp:ListItem>
                <asp:ListItem>Pencil</asp:ListItem>
                <asp:ListItem>Eraser</asp:ListItem>
                <asp:ListItem>Notebook</asp:ListItem>
                <asp:ListItem>Marker</asp:ListItem>
            </asp:CheckBoxList>
            <asp:Button ID="btnPlaceOrder" runat="server" Text="Place Order" CssClass="btn" OnClick="btnPlaceOrder_Click" />
            <asp:Label ID="lblMessage" runat="server" CssClass="message"></asp:Label>
        </div>

        <!-- Admin section -->
        <div class="section">
            <h2>Admin – Retrieve Orders</h2>
            <asp:TextBox ID="txtOrders" runat="server" CssClass="orders-box" TextMode="MultiLine" ReadOnly="true"></asp:TextBox>
            <br />
            <asp:Button ID="btnRetrieveOrder" runat="server" Text="Retrieve Orders" CssClass="btn" OnClick="btnRetrieveOrder_Click" />
        </div>
    </form>
</body>
</html>
