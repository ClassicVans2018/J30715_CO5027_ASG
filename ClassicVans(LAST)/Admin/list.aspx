<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="list.aspx.cs" Inherits="ClassicVans_LAST_.Admin.list" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ProductId" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="ProductId" HeaderText="ProductId" InsertVisible="False" ReadOnly="True" SortExpression="ProductId" />
            <asp:BoundField DataField="PRODUCTName" HeaderText="PRODUCTName" SortExpression="PRODUCTName" />
            <asp:BoundField DataField="PRODUCTDesc" HeaderText="PRODUCTDesc" SortExpression="PRODUCTDesc" />
            <asp:ButtonField ButtonType="Button" CommandName="Edit" HeaderText="Edit" ShowHeader="True" Text="Edit" />
            <asp:ButtonField ButtonType="Button" CommandName="Update" HeaderText="Update" ShowHeader="True" Text="Update" />
            <asp:ButtonField ButtonType="Button" CommandName="Delete" HeaderText="Delete" ShowHeader="True" Text="Delete" />
            <asp:HyperLinkField DataNavigateUrlFields="ProductId" DataNavigateUrlFormatString="uploadimages.aspx?id={0}" HeaderText="Upload Image" Text="Upload Image" />
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
             <p><a href="add.aspx">Add Products</a></p>
            <p><a href="index.aspx">Home</a></p>
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
