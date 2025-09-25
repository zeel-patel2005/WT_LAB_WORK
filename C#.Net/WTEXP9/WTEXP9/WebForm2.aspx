<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WTEXP9.WebForm2" %>

<!DOCTYPE html>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Two-User Chat</title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Two-User Chat</h2>
        <div>
            <label>Your Username: </label>
            <asp:TextBox ID="txtUser" runat="server"></asp:TextBox>
        </div>
        <br />
        <div class="chat-box">
            <asp:Literal ID="litChat" runat="server"></asp:Literal>
        </div>
        <div class="input-box">
            <asp:TextBox ID="txtMessage" runat="server" Width="300px"></asp:TextBox>
            <asp:Button ID="btnSend" runat="server" Text="Send" CssClass="btn" OnClick="btnSend_Click" />
        </div>
    </form>
</body>
</html>
