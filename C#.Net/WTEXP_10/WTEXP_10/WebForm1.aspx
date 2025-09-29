<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WebForm1.aspx.cs" Inherits="WTEXP_10.WebForm1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cache Dependency Demo (XML + SQL)</title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="font-family: Arial; padding:20px;">
            <h2>Zeel Cache Dependency Demo</h2>
            
            <!-- XML File Dependency -->
            <h3>XML File Dependency</h3>
            <asp:Label ID="lblXmlCache" runat="server" Text=""></asp:Label><br />
            <asp:Button ID="btnXmlCache" runat="server" Text="Load XML Cache" OnClick="btnXmlCache_Click" /><br /><br />

            <!-- SQL Database Dependency -->
            <h3>SQL Database Dependency</h3>
            <asp:Label ID="lblSqlCache" runat="server" Text=""></asp:Label><br />
            <asp:Button ID="btnSqlCache" runat="server" Text="Load SQL Cache" OnClick="btnSqlCache_Click" />
        </div>
    </form>
</body>
</html>
