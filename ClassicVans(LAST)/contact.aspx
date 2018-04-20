<%@ Page Title="Contact" Language="C#" MasterPageFile="~/ClassicVans.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="ClassicVans_LAST_.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 35px;
        }
        .auto-style2 {
            margin-left: 33px;
        }
        .auto-style3 {
            margin-left: 24px;
        }
       
         
    .auto-style5 {
        width: 373px;
    }
    .auto-style6 {
        width: 186px;
    }
    .auto-style7 {
        margin-left: 167px;
    }
        .auto-style8 {
            margin-left: 13px;
        }
    </style>
    <link href="StyleSheet1.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="container">

        <h1>Contact Form</h1>
    <p>
        <asp:Label ID="namelbl" runat="server" Text="Name:"></asp:Label>
        <asp:TextBox ID="TxtNme" runat="server" Width="153px" CssClass="auto-style1"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtNme" ErrorMessage="Name Cannot Be Blank!" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
    <p>
        <asp:Label ID="emaillbl" runat="server" Text="E-Mail:"></asp:Label>
        <asp:TextBox ID="TxtEmail" runat="server" Width="155px" CssClass="auto-style2" TextMode="Email"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TxtEmail" ErrorMessage="Email Cannot Be Blank!" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TxtEmail" ErrorMessage="E-mail is invalid!" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
    </p>
    <p>
        <asp:Label ID="Label2" runat="server" Text="Subject:"></asp:Label>
        <asp:TextBox ID="TxtSubject" runat="server" Width="151px" CssClass="auto-style3"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtSubject" ErrorMessage="Subject Cannot Be Blank" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
    <p>
        <asp:Label ID="Label3" runat="server" Text="Message:"></asp:Label>
        <asp:TextBox ID="TxtMsg" runat="server" Height="122px" Width="389px" CssClass="auto-style8" TextMode="MultiLine"></asp:TextBox>
    </p>
        <p>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TxtMsg" ErrorMessage="Message Cannot Be Blank!" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
    <table>
        <tr>
            <td>&nbsp;</td>
        <td>&nbsp;</td>
            <td class="auto-style6"><asp:Button ID="BtnSubmit" runat="server" Text="Submit" OnClick="BtnSubmit_Click" CssClass="auto-style7" Height="35px" Width="171px" /></td>
            <td class="auto-style5"><asp:Literal ID="LiteralContact" runat="server"></asp:Literal></td>
        </tr>
    </table>

    
    <h1>Our Location</h1>
        <p><b>Classic Vans</b><br />+673 2123456<br />Plaza Abdul Razak<br />Jalan Laksamana Abdul Razak<br />Bandar Seri Begawan BA 1712<br />Email: Classic.Vans2018@gmail.com</p><br />
        <div id="map">
            <script src="JS/map.js"></script>
            <script async defer
                 src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA3PyfXSUCSFx7e0fCgaCoh8SJnsolD4wE&callback=initMap">
            </script>
        </div>
        <h1>Static Map</h1>
        <img src="image/Static Map.PNG" />
        </div>
</asp:Content>
