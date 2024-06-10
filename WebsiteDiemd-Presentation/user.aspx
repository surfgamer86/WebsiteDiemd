<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="user.aspx.cs" Inherits="WebsiteDiemd_Presentation.user" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
    <div class="row">
    <div class="col-md-6">
    Hallo <asp:Label ID="naamLabel" runat="server" Text="Label"></asp:Label>
    <br />
    <asp:Button ID="aantalBtn" runat="server" Text="Aantal Boekingen" OnClick="aantalBtn_OnClick" />
    <p></p>
    <asp:Button ID="toevoegenBtn" runat="server" Text="Toevoegen" OnClick="toevoegenBtn_OnClick" />
   <asp:Button ID="afmelden" runat="server" Text="Afmelden" OnClick="afmelden_click" />
    </div>
    </div>
    </div>
</asp:Content>
