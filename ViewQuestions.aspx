<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="ViewQuestions.aspx.cs" Inherits="ViewQuestions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" CellSpacing="50" DataKeyField="BlogID" DataSourceID="SqlDataSource1" OnItemCommand="DataList1_ItemCommand" Width="754px">
    <ItemTemplate>
        BlogID:
        <asp:Label ID="BlogIDLabel" runat="server" Text='<%# Eval("BlogID") %>' />
        <br />
        Question:
        <asp:Label ID="QuestionLabel" runat="server" Text='<%# Eval("Question") %>' />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" CommandArgument='<%# Eval("BlogID") %>' CommandName="View" Text="View Answer" />
        <br />
        <br />
        Tags:
        <asp:Label ID="TagsLabel" runat="server" Text='<%# Eval("Tags") %>' />
        &nbsp;Date:
        <asp:Label ID="DateLabel" runat="server" Text='<%# Eval("Date") %>' />
        <br />
        <hr />
    </ItemTemplate>
</asp:DataList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:techcrunchConnectionString %>" SelectCommand="SELECT [BlogID], [Question], [Tags], [Date] FROM [Blog] WHERE (([UserID] = @UserID) AND ([Status] = @Status))">
    <SelectParameters>
        <asp:SessionParameter Name="UserID" SessionField="userid" Type="Int32" />
        <asp:Parameter DefaultValue="1" Name="Status" Type="Int32" />
    </SelectParameters>
</asp:SqlDataSource>
</asp:Content>

