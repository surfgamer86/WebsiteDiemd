<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Usertoevoeg.aspx.cs" Inherits="WebsiteDiemd_Presentation.Usertoevoeg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Calendar ID="calender" runat="server"></asp:Calendar>
    <p>Waar</p>

    <input id="waarText" type="text" runat="server" />
    <p>Probleem</p>

    <input id="probleemText" type="text" runat="server" />
    <asp:Button ID="toevoegenButton" runat="server" Text="Toevoegen" OnClick="toevoegenButton_Click" />
</asp:Content>
