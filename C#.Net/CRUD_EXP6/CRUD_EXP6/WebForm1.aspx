<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="CRUD_EXP6.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
     <form id="form1" runat="server">
    <div style="width:600px; margin:auto;">

        <h2>Manage Employees</h2>

        <asp:Label ID="lblMessage" runat="server" ForeColor="Green"></asp:Label><br /><br />

        <asp:Label ID="Label1" runat="server" Text="Name:"></asp:Label>
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox><br /><br />

        <asp:Label ID="Label2" runat="server" Text="Position:"></asp:Label>
        <asp:TextBox ID="txtPosition" runat="server"></asp:TextBox><br /><br />

        <asp:Label ID="Label3" runat="server" Text="Salary:"></asp:Label>
        <asp:TextBox ID="txtSalary" runat="server"></asp:TextBox><br /><br />

        <asp:HiddenField ID="hfId" runat="server" />

        <asp:Button ID="btnInsert" runat="server" Text="Insert" OnClick="btnInsert_Click" />
        <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
        <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" />
        <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" /><br /><br />

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id"
            OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="ID" ReadOnly="True" />
                <asp:BoundField DataField="Name" HeaderText="Name" />
                <asp:BoundField DataField="Position" HeaderText="Position" />
                <asp:BoundField DataField="Salary" HeaderText="Salary" />
                <asp:CommandField ShowSelectButton="True" SelectText="Select" />
            </Columns>
        </asp:GridView>

    </div>
    </form>
</body>
</html>
