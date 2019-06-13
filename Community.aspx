<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Community.aspx.cs" Inherits="Community" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Questions From Other Users</h1>
    <p>
       
        <asp:DataList ID="DataList1" runat="server" DataKeyField="BlogID" DataSourceID="SqlDataSource1" Width="745px" OnItemCommand="DataList1_ItemCommand">
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
    
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:techcrunchConnectionString %>" SelectCommand="SELECT * FROM [Blog] WHERE ([Status] = @Status)">
            <SelectParameters>
                <asp:Parameter DefaultValue="1" Name="Status" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>

