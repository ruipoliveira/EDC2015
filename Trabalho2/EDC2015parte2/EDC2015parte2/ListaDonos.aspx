<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListaDonos.aspx.cs" Inherits="EDC2015parte2.ListaDonos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <asp:Label ID="Label3" runat="server" style="font-size: xx-large" Text="Lista de Donos"></asp:Label>
    <br />
    <br />  
    <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="XmlDataSource2"
        Width="900px" CssClass="table table-striped" BorderColor="#CCCCCC" BorderStyle="Inset"
        >
        <Columns>
            <asp:BoundField DataField="taxID" HeaderText="Numero Fiscal" SortExpression="taxID" />
            <asp:BoundField DataField="name" HeaderText="Nome" SortExpression="name" />
            <asp:BoundField DataField="datePurchase" HeaderText="Data compra" SortExpression="datePurchase" />
            <asp:BoundField DataField="propertyID" HeaderText="Nr Registo Propriedade ID" SortExpression="propertyID" />
            <asp:HyperLinkField DataNavigateUrlFields="taxID" HeaderText="Editar" DataNavigateUrlFormatString="EditarDono.aspx?ID={0}" Text="<i class='fa fa-pencil-square-o'></i>" />
            <asp:HyperLinkField DataNavigateUrlFields="taxID" HeaderText="Eliminar" DataNavigateUrlFormatString="EliminarDono.aspx?ID={0}" Text="<i class='fa fa-times'></i>" />
            <asp:HyperLinkField DataNavigateUrlFields="taxID,propertyID" HeaderText="Mostrar Propriedades" DataNavigateUrlFormatString="MostrarPropriedades.aspx?ID={0}" Text="<i class='fa fa-home'></i>" />
        </Columns>
    </asp:GridView>
    <asp:XmlDataSource ID="XmlDataSource2" runat="server" DataFile="~/XMLFile.xml" TransformFile="~/transform 2.xslt" XPath="/properties/owner"></asp:XmlDataSource>
    <br />
    <br />
</asp:Content>
