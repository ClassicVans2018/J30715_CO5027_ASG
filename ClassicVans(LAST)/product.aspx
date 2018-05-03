<%@ Page Title="" Language="C#" MasterPageFile="~/ClassicVans.Master" AutoEventWireup="true" CodeBehind="product.aspx.cs" Inherits="ClassicVans_LAST_.product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="ProductId" DataSourceID="SqlDataSource1">
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
            <asp:Image runat="server" ImageUrl='<%#"~/ProductImages/" + Eval("ProductId") + ".jpg" %>' CssClass="ProductRepeaterImg" />
            </div>

            ProductId:
            <asp:Label ID="ProductIdLabel" runat="server" Text='<%# Eval("ProductId") %>' />
            <br />
            PRODUCTName:
            <asp:Label ID="PRODUCTNameLabel" runat="server" Text='<%# Bind("PRODUCTName") %>' />
            <br />
            PRODUCTDesc:
            <asp:Label ID="PRODUCTDescLabel" runat="server" Text='<%# Bind("PRODUCTDesc") %>' />
            <br />
            Price:<br />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:db_1526885_co5027_1526885ConnectionString2 %>" DeleteCommand="DELETE FROM [tblProduct] WHERE [ProductId] = @original_ProductId AND (([PRODUCTName] = @original_PRODUCTName) OR ([PRODUCTName] IS NULL AND @original_PRODUCTName IS NULL)) AND (([PRODUCTDesc] = @original_PRODUCTDesc) OR ([PRODUCTDesc] IS NULL AND @original_PRODUCTDesc IS NULL))" InsertCommand="INSERT INTO [tblProduct] ([PRODUCTName], [PRODUCTDesc]) VALUES (@PRODUCTName, @PRODUCTDesc)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tblProduct] WHERE ([ProductId] = @ProductId)" UpdateCommand="UPDATE [tblProduct] SET [PRODUCTName] = @PRODUCTName, [PRODUCTDesc] = @PRODUCTDesc WHERE [ProductId] = @original_ProductId AND (([PRODUCTName] = @original_PRODUCTName) OR ([PRODUCTName] IS NULL AND @original_PRODUCTName IS NULL)) AND (([PRODUCTDesc] = @original_PRODUCTDesc) OR ([PRODUCTDesc] IS NULL AND @original_PRODUCTDesc IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_ProductId" Type="Int32" />
            <asp:Parameter Name="original_PRODUCTName" Type="String" />
            <asp:Parameter Name="original_PRODUCTDesc" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="PRODUCTName" Type="String" />
            <asp:Parameter Name="PRODUCTDesc" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="0" Name="ProductId" QueryStringField="id" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="PRODUCTName" Type="String" />
            <asp:Parameter Name="PRODUCTDesc" Type="String" />
            <asp:Parameter Name="original_ProductId" Type="Int32" />
            <asp:Parameter Name="original_PRODUCTName" Type="String" />
            <asp:Parameter Name="original_PRODUCTDesc" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
