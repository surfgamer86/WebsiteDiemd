<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="WebsiteDiemd_Presentation.admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Button ID="toevoegenBtn" runat="server" Text="Toevoegen" OnClick="toevoegen" />
    <p></p>
    <asp:Button ID="wijzigenBtn" runat="server" Text="Wijzigen" OnClick="wijzig" />
    <p></p>
    <asp:Button ID="verwijderBtn" runat="server" Text="Verwijderen" OnClick="verwijderen" />
    <p></p>
    <asp:Button ID="afmelden" runat="server" Text="Afmelden" OnClick="afmelden_click" />
    
</asp:Content>
