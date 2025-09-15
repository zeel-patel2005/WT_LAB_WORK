<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="CalculatorLab1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox id="text1" Text="enter the first number" TextMode="Number" runat="server"></asp:TextBox>
            <asp:TextBox id="text2" Text="enter the second number" TextMode="Number" runat="server"></asp:TextBox>
            <asp:Button id="btn1" Text="plus" CommandName="calculator" CommandArgument="+" OnCommand="click" runat="server"/>
            <asp:Button id="btn2" Text="minus" CommandName="calculator" CommandArgument="-" OnCommand="click" runat="server"/>
            <asp:Button id="btn3" Text="mul" CommandName="calculator" CommandArgument="*" OnCommand="click" runat="server"/>
            <asp:Button id="btn4" Text="div" CommandName="calculator" CommandArgument="/" OnCommand="click" runat="server"/>
            <asp:TextBox id="result1" TextMode="Number" runat="server"></asp:TextBox>
        </div>
    </form>
</body>
</html>
