<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Verwijderen.aspx.cs" Inherits="WebsiteDiemd_Presentation.Verwijderen" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_OnSelectedIndexChanged" AutoGenerateSelectButton="True" CssClass="table table-striped"></asp:GridView>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <asp:Button ID="deleteButton" runat="server" Text="Delete" OnClick="deleteButton_click" CssClass="btn btn-danger" />
    </div>
</asp:Content>
