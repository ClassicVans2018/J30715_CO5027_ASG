<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="ClassicVans_LAST_.Admin.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="container">
        <h1>Administrator Account</h1>
        <p>Welcome to the Admin Page!</p>
        <p><a href="add.aspx">Add Products</a></p>
        <p>&nbsp;</p>
        <p>
            <asp:Button ID="BtnLogOut" runat="server" Height="28px" OnClick="BtnLogOut_Click" Text="Log-Out" Width="161px" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" CssClass="auto-style1" />
        </p>

    </div>
</asp:Content>
