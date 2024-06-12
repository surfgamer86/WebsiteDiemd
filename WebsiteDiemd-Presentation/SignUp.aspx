<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="WebsiteDiemd_Presentation.SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <h2>Sign Up</h2>
                <div class="form-group">
                    <label for="txtNaam">Naam:</label>
                    <asp:TextBox ID="txtNaam" runat="server" CssClass="form-control" ValidationGroup="signupValidation"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvNaam" runat="server" ControlToValidate="txtNaam" ErrorMessage="Naam is required" ValidationGroup="signupValidation"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <label for="txtVoornaam">Voornaam:</label>
                    <asp:TextBox ID="txtVoornaam" runat="server" CssClass="form-control" ValidationGroup="signupValidation"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvVoornaam" runat="server" ControlToValidate="txtVoornaam" ErrorMessage="Voornaam is required" ValidationGroup="signupValidation"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <label for="ddlGeslacht">Geslacht:</label>
                    <asp:DropDownList ID="ddlGeslacht" runat="server" CssClass="form-control" ValidationGroup="signupValidation">
                        <asp:ListItem Text="Man" Value="M"></asp:ListItem>
                        <asp:ListItem Text="Vrouw" Value="V"></asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfvGeslacht" runat="server" ControlToValidate="ddlGeslacht" ErrorMessage="Geslacht is required" ValidationGroup="signupValidation"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <label for="gebdatumCalender">Gebdatum:</label>
                    <input id="gebdatumCalender" type="date" value="submit" style="form-control" runat="server" />
                    <asp:RequiredFieldValidator ID="rfvGebdatum" runat="server" ControlToValidate="gebdatumCalender" ErrorMessage="Gebdatum is required" ValidationGroup="signupValidation"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <label for="txtUsername">Username:</label>
                    <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" ValidationGroup="signupValidation"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ControlToValidate="txtUsername" ErrorMessage="Username is required" ValidationGroup="signupValidation"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <label for="txtPassword">Password:</label>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control" ValidationGroup="signupValidation"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required" ValidationGroup="signupValidation"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <label for="txtStraat">Straat:</label>
                    <asp:TextBox ID="txtStraat" runat="server" CssClass="form-control" ValidationGroup="signupValidation"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvStraat" runat="server" ControlToValidate="txtStraat" ErrorMessage="Straat is required" ValidationGroup="signupValidation"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <label for="txtHousenumber">Housenumber:</label>
                    <asp:TextBox ID="txtHousenumber" runat="server" CssClass="form-control" ValidationGroup="signupValidation"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvHousenumber" runat="server" ControlToValidate="txtHousenumber" ErrorMessage="Housenumber is required" ValidationGroup="signupValidation"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <label for="txtPostcode">Postcode:</label>
                    <asp:TextBox ID="txtPostcode" runat="server" CssClass="form-control" ValidationGroup="signupValidation"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvPostcode" runat="server" ControlToValidate="txtPostcode" ErrorMessage="Postcode is required" ValidationGroup="signupValidation"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <label for="txtCity">City:</label>
                    <asp:TextBox ID="txtCity" runat="server" CssClass="form-control" ValidationGroup="signupValidation"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvCity" runat="server" ControlToValidate="txtCity" ErrorMessage="City is required" ValidationGroup="signupValidation"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <label for="txtEmail">Email:</label>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" ValidationGroup="signupValidation"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required" ValidationGroup="signupValidation"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid email format" ValidationExpression="^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$" ValidationGroup="signupValidation"></asp:RegularExpressionValidator>
                </div>
                <div class="form-group">
                    <label for="txtPhonenumber">Phonenumber:</label>
                    <asp:TextBox ID="txtPhonenumber" runat="server" CssClass="form-control" ValidationGroup="signupValidation"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvPhonenumber" runat="server" ControlToValidate="txtPhonenumber" ErrorMessage="Phonenumber is required" ValidationGroup="signupValidation"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_OnClick" CssClass="btn btn-primary" ValidationGroup="signupValidation" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
