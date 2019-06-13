<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="NewQuestion.aspx.cs" Inherits="Admin_NewQuestion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="BlogID" DataSourceID="SqlDataSource1" ForeColor="Black" Width="780px">
        <Columns>
            <asp:BoundField DataField="BlogID" HeaderText="BlogID" InsertVisible="False" ReadOnly="True" SortExpression="BlogID" />
            <asp:BoundField DataField="Question" HeaderText="Question" SortExpression="Question" />
            <asp:BoundField DataField="Code" HeaderText="Code" SortExpression="Code" />
            <asp:BoundField DataField="Status" HeaderText="Change Status" SortExpression="Status" />
            <asp:BoundField DataField="Tags" HeaderText="Add Tags" SortExpression="Tags" />
            <asp:BoundField DataField="Msg" HeaderText="Add Message" SortExpression="Msg" />
            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
            <asp:CommandField ShowEditButton="True" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:techcrunchConnectionString %>" DeleteCommand="DELETE FROM [Blog] WHERE [BlogID] = @BlogID" InsertCommand="INSERT INTO [Blog] ([Question], [Code], [Status], [Tags], [Msg], [Date]) VALUES (@Question, @Code, @Status, @Tags, @Msg, @Date)" SelectCommand="SELECT [Question], [Code], [Status], [Tags], [Msg], [Date], [BlogID] FROM [Blog] WHERE ([Status] = @Status)" UpdateCommand="UPDATE [Blog] SET [Question] = @Question, [Code] = @Code, [Status] = @Status, [Tags] = @Tags, [Msg] = @Msg, [Date] = @Date WHERE [BlogID] = @BlogID">
        <DeleteParameters>
            <asp:Parameter Name="BlogID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Question" Type="String" />
            <asp:Parameter Name="Code" Type="String" />
            <asp:Parameter Name="Status" Type="Int32" />
            <asp:Parameter Name="Tags" Type="String" />
            <asp:Parameter Name="Msg" Type="String" />
            <asp:Parameter Name="Date" Type="DateTime" />
        </InsertParameters>
        <SelectParameters>
            <asp:Parameter DefaultValue="0" Name="Status" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Question" Type="String" />
            <asp:Parameter Name="Code" Type="String" />
            <asp:Parameter Name="Status" Type="Int32" />
            <asp:Parameter Name="Tags" Type="String" />
            <asp:Parameter Name="Msg" Type="String" />
            <asp:Parameter Name="Date" Type="DateTime" />
            <asp:Parameter Name="BlogID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

