<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="FromLearnWithValidator.WebForm1" UnobtrusiveValidationMode="None" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration Form with Validators</title>
    <script type="text/javascript">
        function validateCertificates(sender, args) {
            var cbl = document.getElementById('<%= cblCertificates.ClientID %>');
            var inputs = cbl.getElementsByTagName('input');
            var checked = false;
            for (var i = 0; i < inputs.length; i++) {
                if (inputs[i].checked) {
                    checked = true;
                    break;
                }
            }
            args.IsValid = checked;
        }
    </script>
</head>

<body>
    <form id="form1" runat="server">
        <div style="width:400px;">
            <h2>Registration Form</h2>

            <!-- Name -->
            <asp:Label ID="lblName" runat="server" Text="Name:" AssociatedControlID="txtName" />
            <asp:TextBox ID="txtName" runat="server" Text="John Doe" />
            <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName"
                ErrorMessage="Name is required." ForeColor="Red" Display="Dynamic" /><br /><br />

            <!-- Email -->
            <asp:Label ID="lblEmail" runat="server" Text="Email:" AssociatedControlID="txtEmail" />
            <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" Text="john@example.com" />
            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail"
                ErrorMessage="Email is required." ForeColor="Red" Display="Dynamic" />
            <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail"
                ErrorMessage="Invalid email format." ForeColor="Red" Display="Dynamic"
                ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$" /><br /><br />

            <!-- Contact Number -->
            <asp:Label ID="lblContact" runat="server" Text="Contact Number:" AssociatedControlID="txtContact" />
            <asp:TextBox ID="txtContact" runat="server" MaxLength="10" Text="9876543210" />
            <asp:RequiredFieldValidator ID="rfvContact" runat="server" ControlToValidate="txtContact"
                ErrorMessage="Contact number is required." ForeColor="Red" Display="Dynamic" />
            <asp:RegularExpressionValidator ID="revContact" runat="server" ControlToValidate="txtContact"
                ErrorMessage="Enter a valid 10-digit number." ForeColor="Red" Display="Dynamic"
                ValidationExpression="^\d{10}$" /><br /><br />

            <!-- Country -->
            <asp:Label ID="lblCountry" runat="server" Text="Country:" AssociatedControlID="ddlCountry" />
            <asp:DropDownList ID="ddlCountry" runat="server">
                <asp:ListItem Text="--Select Country--" Value="" />
                <asp:ListItem Text="USA" Value="USA" Selected="True" />
                <asp:ListItem Text="India" Value="India" />
                <asp:ListItem Text="UK" Value="UK" />
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="rfvCountry" runat="server" ControlToValidate="ddlCountry"
                InitialValue="" ErrorMessage="Select a country." ForeColor="Red" Display="Dynamic" /><br /><br />

            <!-- State -->
            <asp:Label ID="lblState" runat="server" Text="State:" AssociatedControlID="txtState" />
            <asp:TextBox ID="txtState" runat="server" Text="California" />
            <asp:RequiredFieldValidator ID="rfvState" runat="server" ControlToValidate="txtState"
                ErrorMessage="State is required." ForeColor="Red" Display="Dynamic" /><br /><br />

            <!-- City -->
            <asp:Label ID="lblCity" runat="server" Text="City:" AssociatedControlID="txtCity" />
            <asp:TextBox ID="txtCity" runat="server" Text="Los Angeles" />
            <asp:RequiredFieldValidator ID="rfvCity" runat="server" ControlToValidate="txtCity"
                ErrorMessage="City is required." ForeColor="Red" Display="Dynamic" /><br /><br />

            <!-- Address -->
            <asp:Label ID="lblAddress" runat="server" Text="Address:" AssociatedControlID="txtAddress" />
            <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Rows="2" Columns="30">123 Main St</asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ControlToValidate="txtAddress"
                ErrorMessage="Address is required." ForeColor="Red" Display="Dynamic" /><br /><br />

            <!-- Gender -->
            <asp:Label ID="lblGender" runat="server" Text="Gender:" />
            <asp:RadioButtonList ID="rblGender" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem Text="Male" Value="Male" Selected="True" />
                <asp:ListItem Text="Female" Value="Female" />
                <asp:ListItem Text="Other" Value="Other" />
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="rfvGender" runat="server" ControlToValidate="rblGender"
                InitialValue="" ErrorMessage="Select gender." ForeColor="Red" Display="Dynamic" /><br /><br />

            <!-- Certificates -->
            <asp:Label ID="lblCertificates" runat="server" Text="Certificates:" />
            <asp:CheckBoxList ID="cblCertificates" runat="server">
                <asp:ListItem Text="SSC" Value="SSC" Selected="True" />
                <asp:ListItem Text="HSC" Value="HSC" />
                <asp:ListItem Text="Graduation" Value="Graduation" Selected="True" />
                <asp:ListItem Text="Post Graduation" Value="PostGraduation" />
            </asp:CheckBoxList>
            <asp:CustomValidator ID="cvCertificates" runat="server" 
                ErrorMessage="Select at least one certificate." 
                ForeColor="Red" Display="Dynamic"
                ClientValidationFunction="validateCertificates" /><br /><br />

            <!-- Date of Birth -->
            <asp:Label ID="lblDOB" runat="server" Text="Date of Birth:" AssociatedControlID="txtDOB" />
            <asp:TextBox ID="txtDOB" runat="server" Text="1990-01-01" />
            <asp:RequiredFieldValidator ID="rfvDOB" runat="server" ControlToValidate="txtDOB"
                ErrorMessage="DOB is required." ForeColor="Red" Display="Dynamic" />
            <asp:RegularExpressionValidator ID="revDOB" runat="server" ControlToValidate="txtDOB"
                ErrorMessage="Enter date as yyyy-mm-dd." ForeColor="Red" Display="Dynamic"
                ValidationExpression="^\d{4}-\d{2}-\d{2}$" /><br /><br />

            <!-- Password -->
            <asp:Label ID="lblPassword" runat="server" Text="Password:" AssociatedControlID="txtPassword" />
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Text="P@ssw0rd" />
            <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword"
                ErrorMessage="Password is required." ForeColor="Red" Display="Dynamic" /><br /><br />

            <!-- Confirm Password -->
            <asp:Label ID="lblConfirmPassword" runat="server" Text="Confirm Password:" AssociatedControlID="txtConfirmPassword" />
            <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" Text="P@ssw0rd" />
            <asp:RequiredFieldValidator ID="rfvConfirmPassword" runat="server" ControlToValidate="txtConfirmPassword"
                ErrorMessage="Confirm your password." ForeColor="Red" Display="Dynamic" />
            <asp:CompareValidator ID="cvPassword" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword"
                ErrorMessage="Passwords do not match." ForeColor="Red" Display="Dynamic" /><br /><br />

            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
        </div>
    </form>
</body>
</html>
