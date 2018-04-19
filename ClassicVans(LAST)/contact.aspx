<%@ Page Title="" Language="C#" MasterPageFile="~/ClassicVans.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="ClassicVans_LAST_.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 33px;
        }
        .auto-style2 {
            margin-left: 29px;
        }
        .auto-style3 {
            margin-left: 25px;
        }
        .auto-style4 {
            margin-left: 18px;
        }
        #map{
            width: 720px;
            height: 487px;
        }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Contact Form</h1>
    <p>
        <asp:Label ID="namelbl" runat="server" Text="Name:"></asp:Label>
        <asp:TextBox ID="TxtNme" runat="server" Width="153px" CssClass="auto-style1"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtNme" ErrorMessage="Name Cannot Be Blank!"></asp:RequiredFieldValidator>
    </p>
    <p>
        <asp:Label ID="emaillbl" runat="server" Text="E-Mail:"></asp:Label>
        <asp:TextBox ID="TxtEmail" runat="server" Width="155px" CssClass="auto-style2"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TxtEmail" ErrorMessage="Email Cannot Be Blank!"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TxtEmail" ErrorMessage="RegularExpressionValidator" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
    </p>
    <p>
        <asp:Label ID="Label2" runat="server" Text="Subject:"></asp:Label>
        <asp:TextBox ID="TxtSubject" runat="server" Width="151px" CssClass="auto-style3"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtSubject" ErrorMessage="Subject Cannot Be Blank"></asp:RequiredFieldValidator>
    </p>
    <p>
        <asp:Label ID="Label3" runat="server" Text="Message:"></asp:Label>
        <asp:TextBox ID="TxtMsg" runat="server" Height="60px" Width="152px" CssClass="auto-style4"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TxtMsg" ErrorMessage="Message Cannot Be Blank!"></asp:RequiredFieldValidator>
    </p>
    <p>
        <asp:Button ID="BtnSubmit" runat="server" Text="Submit" OnClick="BtnSubmit_Click" />
        <asp:Literal ID="LiteralContact" runat="server"></asp:Literal>
    </p>
    <h1 class="auto-style4">Our Location</h1>
        <p><b>AITECH Co.</b><br />+673 2345678<br />Plaza Abdul Razak<br />Jalan Laksamana Abdul Razak<br />Bandar Seri Begawan BA 1712<br />Email: aitech271@gmail.com</p><br />
        <div id="map">
            <script src="JS/map.js"></script>
            <script async defer
                 src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA3PyfXSUCSFx7e0fCgaCoh8SJnsolD4wE&callback=initMap">
            </script>
        </div>
</asp:Content>
