<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FeedManager.aspx.cs" Inherits="_2015T3.FeedManager" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        
        <h1><i class="fa fa-rss"></i> Gestão de Feeds</h1>

        <br />
        <asp:GridView ID="GridView1" runat="server" OnRowUpdating="GridView1_RowUpdating" OnRowDeleting="GridView1_RowDeleting" AutoGenerateColumns="False" DataSourceID="XmlDataSource1" Width="862px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
            <Columns>
                <asp:HyperLinkField DataNavigateUrlFields="url" DataTextField="description" HeaderText="Description" />
                <asp:BoundField DataField="url" HeaderText="URL" SortExpression="url" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>


        <asp:XmlDataSource ID="XmlDataSource1"  runat="server" DataFile="~/Sites.xml" XPath="/sites/site"></asp:XmlDataSource>

   
        <br />

   
        <asp:Button ID="Button1"  runat="server" OnClick="Button1_Click" Text="Adicionar novo feed" CssClass="btn btn-primary btn-large" />
        <br />
        <asp:Label ID="Label1" runat="server" Text="disciplina:"></asp:Label>

        <asp:TextBox ID="TextBox1" runat="server" Width="419px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="TP:"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" Width="415px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Inicio:"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" Width="415px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Fim:"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server" Width="415px"></asp:TextBox>
        <br />
        <br />

        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Guardar"  CssClass="btn btn-primary btn-large" />

        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Cancelar"  CssClass="btn btn-primary btn-large" />
        <br />
        <br />
        <br />
    <br />
    <br />



</p>
    <p>
        &nbsp;</p>
</asp:Content>
