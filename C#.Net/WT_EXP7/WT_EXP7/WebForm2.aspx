<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WT_EXP7.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h2>Employees (SQLDataSource)</h2>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
            ConnectionString="<%$ ConnectionStrings:conString %>"
            SelectCommand="SELECT * FROM Employees"
            InsertCommand="INSERT INTO Employees (Name,Email,Department) VALUES (@Name,@Email,@Department)"
            UpdateCommand="UPDATE Employees SET Name=@Name, Email=@Email, Department=@Department WHERE Id=@Id"
            DeleteCommand="DELETE FROM Employees WHERE Id=@Id">
            <InsertParameters>
                <asp:Parameter Name="Name" Type="String"/>
                <asp:Parameter Name="Email" Type="String"/>
                <asp:Parameter Name="Department" Type="String"/>
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String"/>
                <asp:Parameter Name="Email" Type="String"/>
                <asp:Parameter Name="Department" Type="String"/>
                <asp:Parameter Name="Id" Type="Int32"/>
            </UpdateParameters>
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32"/>
            </DeleteParameters>
        </asp:SqlDataSource>

        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1"
            AutoGenerateColumns="False" DataKeyNames="Id"
            AllowPaging="True" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" InsertVisible="False" />
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
