<%@ Page Title="Title" Language="C#" MasterPageFile="Site1.Master" CodeBehind="aanmelden.aspx.cs" Inherits="WebsiteDiemd_Presentation.aanmelden" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <h2>Registreren</h2>
                <p>
                    Vul onderstaand formulier in om te registreren.
                </p>
                <div class="form-group">
                    <input id="usernameInput" type="text" placeholder="Username" runat="server"/><asp:RequiredFieldValidator ID="usernameValidator" runat="server" ErrorMessage="Geen Username ingevuld" ControlToValidate="usernameInput"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <input id="passwordInput" type="password" placeholder="password"  runat="server"/><asp:RequiredFieldValidator ID="passwordValidator" runat="server" ErrorMessage="Geen wachtwoord ingevuld" ControlToValidate="passwordInput"></asp:RequiredFieldValidator>
                </div>
                <p></p>
                <asp:Button ID="loginBtn" runat="server" Text="Log in" Font-Italic="False" OnClick="loginBtn_Click" />
                <asp:Button ID="signupBtn" runat="server" Text="Sign up" OnClick="signupBtn_OnClick" CausesValidation="False" />
                
            </div>
        </div>
    </div>
</asp:Content>