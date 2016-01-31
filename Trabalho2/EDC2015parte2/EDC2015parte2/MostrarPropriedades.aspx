<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MostrarPropriedades.aspx.cs" Inherits="EDC2015parte2.MostrarPropriedades" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <br />
        <asp:Label ID="Label5" runat="server" style="font-size: xx-large" Text="Propriedades de..."></asp:Label>
    <br />
     <br />


        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataSourceID="XmlDataSource1" Height="50px" Width="199px">
            <EditRowStyle HorizontalAlign="Center" />
            <Fields>
                <asp:BoundField DataField="name" SortExpression="name" ShowHeader="False" />
            </Fields>
            <RowStyle HorizontalAlign="Center" />
        </asp:DetailsView>

        <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/XMLFile.xml" TransformFile="~/transform 2.xslt" XPath="/properties/owner"></asp:XmlDataSource>
        <br />
        <asp:Label ID="Label1" runat="server" Text="Não tem propriedades!" Visible="False"></asp:Label>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="XmlDataSource2" Width="853px"
             CssClass="table table-striped" BorderColor="#CCCCCC" BorderStyle="Inset">
            <Columns>
                <asp:BoundField DataField="landRegister" HeaderText="Nº Registo" SortExpression="landRegister" />
                <asp:BoundField DataField="value" HeaderText="Valor (€)	" SortExpression="value" />
                <asp:BoundField DataField="city" HeaderText="Cidade" SortExpression="city" />
                <asp:BoundField DataField="street" HeaderText="Rua" SortExpression="street" />
                <asp:BoundField DataField="portNumber" HeaderText="Numero Porta	" SortExpression="portNumber" />
            </Columns>
        </asp:GridView>
        <asp:XmlDataSource ID="XmlDataSource2" runat="server" DataFile="~/XMLFile.xml" TransformFile="~/transform.xslt" XPath="/properties/property"></asp:XmlDataSource>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ListaDonos.aspx">Página anterior</asp:HyperLink>

</asp:Content>
