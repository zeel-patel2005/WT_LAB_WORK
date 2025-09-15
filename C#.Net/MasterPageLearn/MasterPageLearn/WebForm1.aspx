<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="MasterPageLearn.WebForm1" %>
<%@ MasterType VirtualPath="~/Site1.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    hello head
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    hello content
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    right section
    <asp:TextBox ID="TextBox2" runat="server" Font-Size="Large"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button2" runat="server" Font-Size="Large" Text="Button" OnClick="Button2_Click"/>
    &nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label2" runat="server" Font-Size="Large" Text="Label"></asp:Label>
</asp:Content>
