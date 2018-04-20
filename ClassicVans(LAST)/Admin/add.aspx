<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="add.aspx.cs" Inherits="ClassicVans_LAST_.Admin.add" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../StyleSheet1.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Add Products</h1>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="ProductId" DataSourceID="SqlDataSource1" DefaultMode="Insert">
    <EditItemTemplate>
        ProductId:
        <asp:Label ID="ProductIdLabel1" runat="server" Text='<%# Eval("ProductId") %>' />
        <br />
        PRODUCTName:
        <asp:TextBox ID="PRODUCTNameTextBox" runat="server" Text='<%# Bind("PRODUCTName") %>' />
        <br />
        PRODUCTDesc:
        <asp:TextBox ID="PRODUCTDescTextBox" runat="server" Text='<%# Bind("PRODUCTDesc") %>' />
        <br />
        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </EditItemTemplate>
    <InsertItemTemplate>
        PRODUCTName:
        <asp:TextBox ID="PRODUCTNameTextBox" runat="server" Text='<%# Bind("PRODUCTName") %>' />
        <br />
        PRODUCTDesc:
        <asp:TextBox ID="PRODUCTDescTextBox" runat="server" Text='<%# Bind("PRODUCTDesc") %>' />
        <br />
        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </InsertItemTemplate>
    <ItemTemplate>
        ProductId:
        <asp:Label ID="ProductIdLabel" runat="server" Text='<%# Eval("ProductId") %>' />
        <br />
        PRODUCTName:
        <asp:Label ID="PRODUCTNameLabel" runat="server" Text='<%# Bind("PRODUCTName") %>' />
        <br />
        PRODUCTDesc:
        <asp:Label ID="PRODUCTDescLabel" runat="server" Text='<%# Bind("PRODUCTDesc") %>' />
        <br />
        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
        &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
        &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
    </ItemTemplate>
</asp:FormView>
    <a href="list.aspx">List Product</a>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:db_1526885_co5027_1526885ConnectionString2 %>" DeleteCommand="DELETE FROM [tblProduct] WHERE [ProductId] = @original_ProductId AND (([PRODUCTName] = @original_PRODUCTName) OR ([PRODUCTName] IS NULL AND @original_PRODUCTName IS NULL)) AND (([PRODUCTDesc] = @original_PRODUCTDesc) OR ([PRODUCTDesc] IS NULL AND @original_PRODUCTDesc IS NULL))" InsertCommand="INSERT INTO [tblProduct] ([PRODUCTName], [PRODUCTDesc]) VALUES (@PRODUCTName, @PRODUCTDesc)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tblProduct]" UpdateCommand="UPDATE [tblProduct] SET [PRODUCTName] = @PRODUCTName, [PRODUCTDesc] = @PRODUCTDesc WHERE [ProductId] = @original_ProductId AND (([PRODUCTName] = @original_PRODUCTName) OR ([PRODUCTName] IS NULL AND @original_PRODUCTName IS NULL)) AND (([PRODUCTDesc] = @original_PRODUCTDesc) OR ([PRODUCTDesc] IS NULL AND @original_PRODUCTDesc IS NULL))">
    <DeleteParameters>
        <asp:Parameter Name="original_ProductId" Type="Int32" />
        <asp:Parameter Name="original_PRODUCTName" Type="String" />
        <asp:Parameter Name="original_PRODUCTDesc" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="PRODUCTName" Type="String" />
        <asp:Parameter Name="PRODUCTDesc" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="PRODUCTName" Type="String" />
        <asp:Parameter Name="PRODUCTDesc" Type="String" />
        <asp:Parameter Name="original_ProductId" Type="Int32" />
        <asp:Parameter Name="original_PRODUCTName" Type="String" />
        <asp:Parameter Name="original_PRODUCTDesc" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
