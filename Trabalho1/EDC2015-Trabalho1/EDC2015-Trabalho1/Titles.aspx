<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Titles.aspx.cs" Inherits="EDC2015_Trabalho1.Titles" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    <h1 style="color: #003366"> <span style="font-size: xx-large">Publication Type</span></h1>
    <h1>
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" AutoPostBack="true" DataTextField="type" DataValueField="type" Height="34px" Width="1100px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" BackColor="White" CssClass="active" Font-Bold="True" Font-Names="Segoe UI Light" Font-Size="15pt" ForeColor="Black">
    </asp:DropDownList>
    </h1>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:pubsConnectionString1 %>" SelectCommand="SELECT DISTINCT [type] FROM [titles]"></asp:SqlDataSource>
    <br />
    <h1><span style="font-size: xx-large; color: #003366;">Titles</span></h1>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="title_id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="1100px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Height="273px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="title_id" HeaderText="title_id" ReadOnly="True" SortExpression="title_id" />
            <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
            <asp:BoundField DataField="type" HeaderText="type" SortExpression="type" />
            <asp:BoundField DataField="pub_id" HeaderText="pub_id" SortExpression="pub_id" />
            <asp:CommandField SelectText="&lt;i class=&quot;fa fa-check-square-o&quot;&gt;&lt;/i&gt;" ShowSelectButton="True" />
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
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" Font-Overline="False" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:pubsConnectionString1 %>" SelectCommand="SELECT [title_id], [title], [type], [pub_id] FROM [titles] WHERE ([type] = @type)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="type" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <h1 style="color: #003366"> <span style="font-size: xx-large">Title Details</span></h1>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="title_id" DataSourceID="SqlDataSource3" Height="335px" Width="1100px" CellPadding="4" ForeColor="#333333" GridLines="None" OnItemUpdated="DetailsView1_ItemUpdated">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" HorizontalAlign="Left" />
        <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
        <EditRowStyle BackColor="#999999" />
        <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" HorizontalAlign="Left" />
        <Fields>
            <asp:BoundField DataField="title_id" HeaderText="title_id" ReadOnly="True" SortExpression="title_id" />
            <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
            <asp:TemplateField HeaderText="type" SortExpression="type" >
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource4" DataTextField="type" DataValueField="type" CssClass="form-control" SelectedValue='<%# Bind("type") %>'>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:pubsConnectionString1 %>" SelectCommand="SELECT DISTINCT [type] FROM [titles] ORDER BY [type]"></asp:SqlDataSource>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("type") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("type") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="pub_id" HeaderText="pub_id" SortExpression="pub_id" />
            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
            <asp:BoundField DataField="advance" HeaderText="advance" SortExpression="advance" />
            <asp:BoundField DataField="royalty" HeaderText="royalty" SortExpression="royalty" />
            <asp:BoundField DataField="ytd_sales" HeaderText="ytd_sales" SortExpression="ytd_sales" />
            <asp:TemplateField HeaderText="notes" SortExpression="notes">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server"  Text='<%# Bind("notes") %>' Width="1068px" Height="26px" Rows="6" TextMode="MultiLine"></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("notes") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("notes") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="pubdate" HeaderText="pubdate" SortExpression="pubdate" />
            <asp:CommandField CancelText="&lt;i class=&quot;fa fa-times&quot;&gt;&lt;/i&gt;" EditText="&lt;i class=&quot;fa fa-pencil&quot;&gt;&lt;/i&gt;" ShowEditButton="True" UpdateText="&lt;i class=&quot;fa fa-floppy-o&quot;&gt;&lt;/i&gt;" />
               </Fields>
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Left" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:pubsConnectionString1 %>" 
        SelectCommand="SELECT * FROM [titles] WHERE title_id=@title_id" UpdateCommand="UPDATE [titles] SET [title] = @title, [type] = @type, [pub_id] = @pub_id, [price] = @price, [advance] = @advance, [royalty] = @royalty, [ytd_sales] = @ytd_sales, [notes] = @notes, [pubdate] = @pubdate WHERE [title_id] = @title_id">
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="title_id" PropertyName="SelectedValue" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="title" Type="String" />
            <asp:Parameter Name="type" Type="String" />
            <asp:Parameter Name="pub_id" Type="String" />
            <asp:Parameter Name="price" Type="Decimal" />
            <asp:Parameter Name="advance" Type="Decimal" />
            <asp:Parameter Name="royalty" Type="Int32" />
            <asp:Parameter Name="ytd_sales" Type="Int32" />
            <asp:Parameter Name="notes" Type="String" />
            <asp:Parameter Name="pubdate" Type="DateTime"  />
            <asp:Parameter Name="title_id" Type="String" />
        </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
