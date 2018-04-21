<%@ Page Title="Login" Language="C#" MasterPageFile="~/ClassicVans.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="ClassicVans_LAST_.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="StyleSheet1.css" rel="stylesheet" />


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
        <div class="container">
            <div id="Login-container">
            <h1>Log-In</h1>
            <p>Email&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TxtEmailLogin" runat="server" Width="246px" Height="30px" TextMode="Email" ></asp:TextBox>
            </p>
            <p>Password&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TxtPassLogin" runat="server" Width="246px"  TextMode="Password"  Height="30px"></asp:TextBox>
            </p>
            <p>&nbsp;</p>
            <p>
                <asp:Button ID="BtnLogIn" runat="server" Height="34px" Text="Log-In" Width="250px" OnClick="BtnLogIn_Click" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" CssClass="auto-style3" />
            </p>
            <p>
                <asp:Literal ID="LitLogin" runat="server"></asp:Literal>
            </p>

       
            <h1>Registration</h1>
            <p>Email&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TxtRegEmail" runat="server" Width="250px" CssClass="auto-style3" Height="30px" style="margin-left: 78px" TextMode="Email"></asp:TextBox>
            </p>
            <p>Password&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TxtRegPassword" runat="server" Height="30px" Width="250px" TextMode="Password" CssClass="auto-style4" style="margin-left: 59px"></asp:TextBox>
            </p>
            <p>Confirm Password&nbsp;&nbsp;
                <asp:TextBox ID="TxtRegConfirmPass" runat="server" Width="250px" TextMode="Password" Height="30px"></asp:TextBox>
            </p>
            <p>&nbsp;</p>
            <p>
                <asp:Button ID="BtnReg" runat="server" Height="34px" Text="Register" Width="250px" OnClick="BtnReg_Click" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" CssClass="auto-style4" />
            </p>
            <p>
                &nbsp;</p>
            <p>
                <asp:Literal ID="LitRegMsg" runat="server"></asp:Literal>
            </p>
        </div>
        </div>
    
</asp:Content>
