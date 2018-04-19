<%@ Page Title="" Language="C#" MasterPageFile="~/ClassicVans.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="ClassicVans_LAST_._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
        <HeaderTemplate>

        </HeaderTemplate>
        <ItemTemplate>
            <div id="Product">

                <a href="<%#Eval("ProductId","product.aspx?id={0}") %>"><%#Eval("PRODUCTName") %></a>
                <p><%#Eval("PRODUCTDesc") %></p>
            </div>
        </ItemTemplate>
        <FooterTemplate>

        </FooterTemplate>
    </asp:Repeater>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_1526885_co5027_1526885ConnectionString2 %>" SelectCommand="SELECT * FROM [tblProduct]"></asp:SqlDataSource>
</asp:Content>
