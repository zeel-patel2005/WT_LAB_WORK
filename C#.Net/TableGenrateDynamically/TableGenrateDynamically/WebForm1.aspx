<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="TableGenrateDynamically.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            rows : 
            <asp:DropDownList ID="ddlRows" runat="server">
                <asp:ListItem Text="1" Value="1" />
                <asp:ListItem Text="2" Value="2" />
                <asp:ListItem Text="3" Value="3" />
                <asp:ListItem Text="4" Value="4" />
                <asp:ListItem Text="5" Value="5" />
            </asp:DropDownList>

            cols :
            <asp:DropDownList ID="ddlCol" runat="server">
                <asp:ListItem Text="1" Value="1" />
                <asp:ListItem Text="2" Value="2" />
                <asp:ListItem Text="3" Value="3" />
                <asp:ListItem Text="4" Value="4" />
                <asp:ListItem Text="5" Value="5" /> 
            </asp:DropDownList>

            <asp:Button ID="btngenrate" Text="genrate table" OnClick="btngenrate_Click" runat="server"/>

            <asp:PlaceHolder ID="phtable" runat="server" />

        </div>
    </form>
</body>
</html>
