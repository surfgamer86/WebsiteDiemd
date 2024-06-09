<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="user.aspx.cs" Inherits="WebsiteDiemd_Presentation.user" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    Hallo <asp:Label ID="naamLabel" runat="server" Text="Label"></asp:Label>
    <br />
    <asp:Button ID="aantalBtn" runat="server" Text="Aantal Boekingen" OnClick="aantalBtn_OnClick" />
    <p></p>
    <asp:Button ID="" runat="server" Text="Toevoegen" OnClick="toevoegenBtn_OnClick" />
</asp:Content>
