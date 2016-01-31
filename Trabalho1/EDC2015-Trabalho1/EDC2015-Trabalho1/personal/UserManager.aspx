<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserManager.aspx.cs" Inherits="EDC2015_Trabalho1.UserManager" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3>    <span style="font-size: xx-large; color: #003366;">User Manager</span></h3>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" CellPadding="4" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." GridLines="None" ForeColor="#333333" Height="273px" Width="1100px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" ReadOnly="true" />
        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
        <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
        <asp:BoundField DataField="BirthDate" HeaderText="BirthDate" SortExpression="BirthDate" />
        <asp:BoundField DataField="FullName" HeaderText="FullName" SortExpression="FullName" />
        <asp:CommandField ShowEditButton="True" CancelText="&lt;i class=&quot;fa fa-times&quot;&gt;&lt;/i&gt;" DeleteText="&lt;i class=&quot;fa fa-trash-o&quot;&gt;&lt;/i&gt;" EditText="&lt;i class=&quot;fa fa-pencil&quot;&gt;&lt;/i&gt;" UpdateText="&lt;i class=&quot;fa fa-floppy-o&quot;&gt;&lt;/i&gt;" />
        <asp:CommandField ShowDeleteButton="True" DeleteText="&lt;i class=&quot;fa fa-trash-o&quot;&gt;&lt;/i&gt;" />
    </Columns>
        <EditRowStyle BackColor="#999999" />
    <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Left" />
    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#E9E7E2" />
    <SortedAscendingHeaderStyle BackColor="#506C8C" />
    <SortedDescendingCellStyle BackColor="#FFFDF8" />
    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" 
    SelectCommand="SELECT [Id], [Email], [UserName], [BirthDate], [FullName] FROM [AspNetUsers]" 
    UpdateCommand="UPDATE [AspNetUsers] SET [Email]=@Email, [UserName]=@UserName, [BirthDate]=@BirthDate, [FullName]=@FullName WHERE [Email] = @Email"
    DeleteCommand="DELETE FROM [AspNetUsers] WHERE [Id] = @Id" >
    <UpdateParameters>
        <asp:Parameter Name="Email" Type="String" />
        <asp:Parameter Name="UserName" Type="String" />
        <asp:Parameter Name="BirthDate" Type="DateTime" />
        <asp:Parameter Name="FullName" Type="String" />
    </UpdateParameters>
    <DeleteParameters>
        <asp:Parameter Name="Id" Type="String" />
    </DeleteParameters>
</asp:SqlDataSource >

</asp:Content>
