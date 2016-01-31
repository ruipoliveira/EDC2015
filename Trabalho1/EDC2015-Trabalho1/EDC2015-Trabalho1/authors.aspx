<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="authors.aspx.cs" Inherits="EDC2015_Trabalho1.authors" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="au_id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#E7E7FF" CellPadding="2" CellSpacing="3" HorizontalAlign="Justify" Width="1101px" Height="100px">
        <AlternatingRowStyle BackColor="#F7F7F7" HorizontalAlign="Justify" VerticalAlign="Middle" Wrap="True" />
    <Columns>
        <asp:TemplateField>
            <EditItemTemplate>
                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="&lt;i class=&quot;fa fa-check&quot;&gt;&lt;/i&gt;"></asp:LinkButton>
                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="&lt;i class=&quot;fa fa-times&quot;&gt;&lt;/i&gt;"></asp:LinkButton>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="&lt;i class=&quot;fa fa-pencil&quot;&gt;&lt;/i&gt;"></asp:LinkButton>
                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Select" Text="&lt;i class=&quot;fa fa-check-square-o&quot;&gt;&lt;/i&gt;"></asp:LinkButton>
                &nbsp;<asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" CommandName="Delete" Text="&lt;i class=&quot;fa fa-trash-o&quot;&gt;&lt;/i&gt;"></asp:LinkButton>
            </ItemTemplate>
            <HeaderStyle Wrap="True" />
        </asp:TemplateField>
        <asp:BoundField DataField="au_id" HeaderText="au_id" ReadOnly="True" SortExpression="au_id" />
        <asp:BoundField DataField="au_lname" HeaderText="au_lname" SortExpression="au_lname" />
        <asp:BoundField DataField="au_fname" HeaderText="au_fname" SortExpression="au_fname" />
        <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
        <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
        <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
        <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
        <asp:BoundField DataField="zip" HeaderText="zip" SortExpression="zip" />
        <asp:CheckBoxField DataField="contract" HeaderText="contract" SortExpression="contract" />
    </Columns>
        <EditRowStyle HorizontalAlign="Justify" VerticalAlign="Middle" BackColor="#00CC99" />
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" HorizontalAlign="Justify" VerticalAlign="Middle" Width="10px" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" HorizontalAlign="Justify" VerticalAlign="Middle" Width="1000px" />
        <PagerStyle BackColor="#E7E7FF" ForeColor="#003366" HorizontalAlign="Center" BorderWidth="10px" Font-Size="XX-Large" />
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Justify" VerticalAlign="Middle" Height="30px" />
        <SelectedRowStyle BackColor="#E7E7FF" Font-Bold="True" />
        <SortedAscendingCellStyle BackColor="#F4F4FD" />
        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
        <SortedDescendingCellStyle BackColor="#D8D8F0" />
        <SortedDescendingHeaderStyle BackColor="#3E3277" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:pubsConnectionString1 %>" DeleteCommand="DELETE FROM [authors] WHERE [au_id] = @au_id" InsertCommand="INSERT INTO [authors] ([au_id], [au_lname], [au_fname], [phone], [address], [city], [state], [zip], [contract]) VALUES (@au_id, @au_lname, @au_fname, @phone, @address, @city, @state, @zip, @contract)" ProviderName="<%$ ConnectionStrings:pubsConnectionString1.ProviderName %>" SelectCommand="SELECT [au_id], [au_lname], [au_fname], [phone], [address], [city], [state], [zip], [contract] FROM [authors]" UpdateCommand="UPDATE [authors] SET [au_lname] = @au_lname, [au_fname] = @au_fname, [phone] = @phone, [address] = @address, [city] = @city, [state] = @state, [zip] = @zip, [contract] = @contract WHERE [au_id] = @au_id">
    <DeleteParameters>
        <asp:Parameter Name="au_id" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="au_id" Type="String" />
        <asp:Parameter Name="au_lname" Type="String" />
        <asp:Parameter Name="au_fname" Type="String" />
        <asp:Parameter Name="phone" Type="String" />
        <asp:Parameter Name="address" Type="String" />
        <asp:Parameter Name="city" Type="String" />
        <asp:Parameter Name="state" Type="String" />
        <asp:Parameter Name="zip" Type="String" />
        <asp:Parameter Name="contract" Type="Boolean" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="au_lname" Type="String" />
        <asp:Parameter Name="au_fname" Type="String" />
        <asp:Parameter Name="phone" Type="String" />
        <asp:Parameter Name="address" Type="String" />
        <asp:Parameter Name="city" Type="String" />
        <asp:Parameter Name="state" Type="String" />
        <asp:Parameter Name="zip" Type="String" />
        <asp:Parameter Name="contract" Type="Boolean" />
        <asp:Parameter Name="au_id" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
