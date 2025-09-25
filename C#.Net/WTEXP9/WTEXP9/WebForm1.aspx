<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WTEXP9.WebForm1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Zeel User Management App</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="box">
            <asp:MultiView ID="MultiView1" runat="server">

                <!-- LOGIN VIEW -->
                <asp:View ID="LoginView" runat="server">
                    <h2>Login</h2>
                    <div class="row">
                        <label>Username:</label>
                        <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                    </div>
                    <div class="row">
                        <label>Password:</label>
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                    </div>
                    <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn" OnClick="btnLogin_Click" />
                    <asp:Label ID="lblLoginMessage" runat="server" CssClass="msg"></asp:Label>
                </asp:View>

                <!-- WELCOME VIEW -->
                <asp:View ID="WelcomeView" runat="server">
                    <h2><asp:Label ID="lblWelcome" runat="server"></asp:Label></h2>
                    <asp:Button ID="btnChangePassword" runat="server" Text="Change Password" CssClass="btn" OnClick="btnChangePassword_Click" /><br /><br />
                    <asp:Button ID="btnEditProfile" runat="server" Text="Edit Profile" CssClass="btn" OnClick="btnEditProfile_Click" /><br /><br />
                    <asp:Button ID="btnLogout" runat="server" Text="Logout" CssClass="btn" OnClick="btnLogout_Click" />
                </asp:View>

                <!-- CHANGE PASSWORD VIEW -->
                <asp:View ID="ChangePasswordView" runat="server">
                    <h2>Change Password</h2>
                    <div class="row">
                        <label>New Password:</label>
                        <asp:TextBox ID="txtNewPassword" runat="server" TextMode="Password"></asp:TextBox>
                    </div>
                    <asp:Button ID="btnSavePassword" runat="server" Text="Save" CssClass="btn" OnClick="btnSavePassword_Click" />
                    <asp:Label ID="lblPasswordMessage" runat="server" CssClass="msg"></asp:Label>
                </asp:View>

                <!-- EDIT PROFILE VIEW -->
                <asp:View ID="EditProfileView" runat="server">
                    <h2>Edit Profile</h2>
                    <div class="row">
                        <label>New Name:</label>
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    </div>
                    <asp:Button ID="btnSaveProfile" runat="server" Text="Save" CssClass="btn" OnClick="btnSaveProfile_Click" />
                    <asp:Label ID="lblProfileMessage" runat="server" CssClass="msg"></asp:Label>
                </asp:View>

            </asp:MultiView>
        </div>
    </form>
</body>
</html>
