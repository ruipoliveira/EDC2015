<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="displayReports.aspx.cs" Inherits="EDC2015_Trabalho1.personal.displayReports" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3>
        &nbsp;</h3>
    <h3>
        <span style="font-size: xx-large; text-align: center;">As minhas vendas<br />
        </span>
    </h3>
    <p>
        &nbsp;</p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="title_id,ord_num,stor_id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None" Width="1100px" AllowCustomPaging="True" AllowPaging="True" Font-Overline="False" Height="100px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" HorizontalAlign="Left" />
        <Columns>
            <asp:BoundField DataField="title_id" HeaderText="title_id" ReadOnly="True" SortExpression="title_id" />
            <asp:BoundField DataField="ord_num" HeaderText="ord_num" ReadOnly="True" SortExpression="ord_num" />
            <asp:BoundField DataField="stor_id" HeaderText="stor_id" SortExpression="stor_id" ReadOnly="True" />
            <asp:BoundField DataField="ord_date" HeaderText="ord_date" SortExpression="ord_date" />
            <asp:BoundField DataField="qty" HeaderText="qty" SortExpression="qty" />
            <asp:BoundField DataField="payterms" HeaderText="payterms" SortExpression="payterms" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Left" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:pubsConnectionString1 %>" DeleteCommand="DELETE FROM [sales] WHERE [stor_id] = @stor_id AND [ord_num] = @ord_num AND [title_id] = @title_id" InsertCommand="INSERT INTO [sales] ([stor_id], [ord_num], [ord_date], [qty], [payterms], [title_id]) VALUES (@stor_id, @ord_num, @ord_date, @qty, @payterms, @title_id)" SelectCommand="getMySales" UpdateCommand="UPDATE [sales] SET [ord_date] = @ord_date, [qty] = @qty, [payterms] = @payterms WHERE [stor_id] = @stor_id AND [ord_num] = @ord_num AND [title_id] = @title_id" SelectCommandType="StoredProcedure">
        <DeleteParameters>
            <asp:Parameter Name="stor_id" Type="String" />
            <asp:Parameter Name="ord_num" Type="String" />
            <asp:Parameter Name="title_id" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="stor_id" Type="String" />
            <asp:Parameter Name="ord_num" Type="String" />
            <asp:Parameter Name="ord_date" Type="DateTime" />
            <asp:Parameter Name="qty" Type="Int16" />
            <asp:Parameter Name="payterms" Type="String" />
            <asp:Parameter Name="title_id" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:Parameter Name="Username" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="ord_date" Type="DateTime" />
            <asp:Parameter Name="qty" Type="Int16" />
            <asp:Parameter Name="payterms" Type="String" />
            <asp:Parameter Name="stor_id" Type="String" />
            <asp:Parameter Name="ord_num" Type="String" />
            <asp:Parameter Name="title_id" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
