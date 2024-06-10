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
                    <asp:TextBox ID="txtNaam" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="txtVoornaam">Voornaam:</label>
                    <asp:TextBox ID="txtVoornaam" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="ddlGeslacht">Geslacht:</label>
                    <asp:DropDownList ID="ddlGeslacht" runat="server" CssClass="form-control">
                        <asp:ListItem Text="Man" Value="M"></asp:ListItem>
                        <asp:ListItem Text="Vrouw" Value="V"></asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="form-group">
                    <label for="gebdatumCalender">Gebdatum:</label>
                    
                    <input id="gebdatumCalender" type="date" value="submit" style ="form-control" runat="server" />
                </div>
                <div class="form-group">
                    <label for="txtUsername">Username:</label>
                    <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="txtPassword">Password:</label>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="txtStraat">Straat:</label>
                    <asp:TextBox ID="txtStraat" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="txtHousenumber">Housenumber:</label>
                    <asp:TextBox ID="txtHousenumber" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="txtPostcode">Postcode:</label>
                    <asp:TextBox ID="txtPostcode" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="txtCity">City:</label>
                    <asp:TextBox ID="txtCity" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="txtEmail">Email:</label>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="txtPhonenumber">Phonenumber:</label>
                    <asp:TextBox ID="txtPhonenumber" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_OnClick" CssClass="btn btn-primary" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
