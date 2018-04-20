<%@ Page Title="" Language="C#" MasterPageFile="~/ClassicVans.Master" AutoEventWireup="true" CodeBehind="uploadimages.aspx.cs" Inherits="ClassicVans_LAST_.Admin.uploadimages" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Upload Item Image</h1>
    
        <p><asp:FileUpload ID="FileUpload" runat="server" Height="42px" Width="293px" /></p>
    <p>
        <asp:Button ID="BtnUpload" runat="server" Height="39px" OnClick="BtnUpload_Click" Text="Upload" Width="142px" />
    </p>
    <p>
        <asp:Image ID="CrntImage" runat="server" Width="227px" />
    </p>
    <p><a href="index.aspx">Home</a></p>
    <p><a href="list.aspx">List of product</a></p>

</asp:Content>
