<%@ Page Title="" Language="C#" MasterPageFile="~/Professional/Pro.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3>Search Result for <%= Request.QueryString["str"] %></h3>
    <hr />
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" OnItemCommand="DataList1_ItemCommand" Width="772px">
        <ItemTemplate>
                BlogID:
                <asp:Label ID="BlogIDLabel" runat="server" Text='<%# Eval("BlogID") %>' />
                <br />
                <br />
                Question:
                <asp:Label ID="QuestionLabel" runat="server" Text='<%# Eval("Question") %>' />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" CommandArgument='<%# Eval("BlogID") %>' CommandName="View" CssClass="btn btn-primary" Text="View" />
                <br />
                <br />
                Tags:
                <asp:Label ID="TagsLabel" runat="server" Text='<%# Eval("Tags") %>' />
                Date:
                <asp:Label ID="DateLabel" runat="server" Text='<%# Eval("Date") %>' />
                <br />
                <br />
                <hr />
            </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:techcrunchConnectionString %>" SelectCommand="SELECT * FROM [Blog] WHERE ([Tags] LIKE '%' + @Tags + '%')">
        <SelectParameters>
            <asp:QueryStringParameter Name="Tags" QueryStringField="str" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

