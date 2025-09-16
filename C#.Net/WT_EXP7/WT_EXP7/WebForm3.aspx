<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="WT_EXP7.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h2>Employees (ObjectDataSource)</h2>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server"
            TypeName="EmployeeDAL" 
            SelectMethod="GetAll" 
            InsertMethod="Insert"
            UpdateMethod="Update" 
            DeleteMethod="Delete">
            <InsertParameters>
                <asp:Parameter Name="Name" Type="String"/>
                <asp:Parameter Name="Email" Type="String"/>
                <asp:Parameter Name="Department" Type="String"/>
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Id" Type="Int32"/>
                <asp:Parameter Name="Name" Type="String"/>
                <asp:Parameter Name="Email" Type="String"/>
                <asp:Parameter Name="Department" Type="String"/>
            </UpdateParameters>
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32"/>
            </DeleteParameters>
        </asp:ObjectDataSource>

        <asp:GridView ID="GridView1" runat="server" DataSourceID="ObjectDataSource1"
            AutoGenerateColumns="False" DataKeyNames="Id"
            AllowPaging="True" AllowSorting="True">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" />
                <asp:BoundField DataField="Name" HeaderText="Name" />
                <asp:BoundField DataField="Email" HeaderText="Email" />
                <asp:BoundField DataField="Department" HeaderText="Department" />
                <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" ShowInsertButton="True" />
            </Columns>
        </asp:GridView>
    </div>
</form>
</body>
</html>
