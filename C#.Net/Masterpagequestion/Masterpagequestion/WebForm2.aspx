<%@ Page Title="Content Page" Language="C#" MasterPageFile="~/Site1.master" AutoEventWireup="true" CodeFile="~/WebForm2.aspx.cs" Inherits="Masterpagequestion.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="LeftPanel" runat="server">
    <!-- Optionally override or add to Left Panel -->
    <h3>Left Panel Links</h3>
    <ul>
        <li><a href="#">Link 1</a></li>
        <li><a href="#">Link 2</a></li>
    </ul>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Dynamic Content on Right Panel</h2>
    <asp:Label ID="lblMessage" runat="server" Text="Content loaded dynamically!"></asp:Label>
    <br /><br />
    <asp:Button ID="btnChange" runat="server" Text="Change Content" OnClick="btnChange_Click" />
</asp:Content>
