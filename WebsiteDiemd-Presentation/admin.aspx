<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="WebsiteDiemd_Presentation.admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server"  ></asp:GridView>
    <asp:Button ID="toevoegenBtn" runat="server" Text="Toevoegen" OnClick="toevoegen" />
    <asp:Button ID="wijzigenBtn" runat="server" Text="Wijzigen" OnClick="wijzig" />
    <asp:Button ID="verwijderBtn" runat="server" Text="Verwijderen" OnClick="verwijderen" />
    
</asp:Content>
