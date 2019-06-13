<%@ Page Title="" Language="C#" MasterPageFile="~/Professional/Pro.master" AutoEventWireup="true" CodeFile="Homepage.aspx.cs" Inherits="Professional_Homepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-fluid">
        <h1>Recently Asked Questions</h1>
        <asp:DataList ID="DataList1" runat="server" DataKeyField="BlogID" DataSourceID="SqlDataSource1" Width="760px" OnItemCommand="DataList1_ItemCommand">
            <ItemTemplate>
                BlogID:
                <asp:Label ID="BlogIDLabel" runat="server" Text='<%# Eval("BlogID") %>' />
                <br />
                <br />
                Question:
                <asp:Label ID="QuestionLabel" runat="server" Text='<%# Eval("Question") %>' />
                <br />
                <br />
                <asp:Button class="btn btn-primary"  ID="Button2" runat="server" Text="View" CommandArgument='<%# Eval("BlogID") %>' CommandName="View" />
                <br />
                Tags:
                <asp:Label ID="TagsLabel" runat="server" Text='<%# Eval("Tags") %>' />
                <br />
                Date:
                <asp:Label ID="DateLabel" runat="server" Text='<%# Eval("Date") %>' />
                <br />
                <br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:techcrunchConnectionString %>" SelectCommand="SELECT TOP (4) BlogID, UserID, Question, Code, Status, Tags, Msg, Date FROM Blog WHERE (Status = 1) ORDER BY BlogID DESC"></asp:SqlDataSource>
    </div>
</asp:Content>

