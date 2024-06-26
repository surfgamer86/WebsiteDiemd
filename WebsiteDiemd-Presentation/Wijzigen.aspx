﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Wijzigen.aspx.cs" Inherits="WebsiteDiemd_Presentation.Wijzigen" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_OnSelectedIndexChanged" AutoGenerateSelectButton="True"></asp:GridView>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <input id="boekingtext" type="text" runat="server" class="form-control" />
            </div>
            <div class="col-md-6">
                <asp:DropDownList ID="aanmeldList" runat="server" CssClass="form-control"></asp:DropDownList>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <asp:DropDownList ID="dienstList" runat="server" CssClass="form-control"></asp:DropDownList>
            </div>
            <div class="col-md-6">
                <asp:Calendar ID="calender" runat="server"></asp:Calendar>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <p>Waar</p>
                <input id="waarText" type="text" runat="server" class="form-control" />
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <p>Probleem</p>
                <input id="probleemText" type="text" runat="server" class="form-control" />
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <asp:Button ID="wijzigButton" runat="server" Text="Wijzig" OnClick="wijzigButton_Click" CssClass="btn btn-primary" />
            </div>
        </div>
    </div>
</asp:Content>
