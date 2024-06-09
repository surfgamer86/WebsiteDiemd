<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Wijzigen.aspx.cs" Inherits="WebsiteDiemd_Presentation.Wijzigen" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_OnSelectedIndexChanged" AutoGenerateSelectButton="True"></asp:GridView>
    <input id="boekingtext" type="text" runat="server"/>
    <asp:DropDownList ID="aanmeldList" runat="server"></asp:DropDownList>
    <asp:DropDownList ID="dienstList" runat="server"></asp:DropDownList>
    <asp:Calendar ID="calender" runat="server"></asp:Calendar>
    <p>Waar</p>
    <input id="waarText" type="text" runat="server" />
    <p>Probleem</p>
    <input id="probleemText" type="text" runat="server" />
    <asp:Button ID="wijzigButton" runat="server" Text="Wijzig" OnClick="wijzigButton_Click" />
</asp:Content>
