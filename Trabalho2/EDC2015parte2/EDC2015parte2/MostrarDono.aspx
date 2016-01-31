<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MostrarDono.aspx.cs" Inherits="EDC2015parte2.MostrarDono" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
        <asp:Label ID="Label5" runat="server" style="font-size: xx-large" Text="Mostrar Dono"></asp:Label>
    <br />
     <br />
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataSourceID="XmlDataSource1" Height="50px" Width="433px"
       CssClass="table table-striped" BorderColor="#CCCCCC" BorderStyle="Inset"
        >
            <Fields>
                <asp:BoundField DataField="landRegister" HeaderText="Nº Registo	" SortExpression="landRegister" />
                <asp:BoundField DataField="value" HeaderText="Valor (€)	" SortExpression="value" />
                <asp:BoundField DataField="city" HeaderText="Cidade" SortExpression="city" />
                <asp:BoundField DataField="street" HeaderText="Rua" SortExpression="street" />
                <asp:BoundField DataField="portNumber" HeaderText="Numero Porta" SortExpression="portNumber" />

            </Fields>
        </asp:DetailsView>
        <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/XMLFile.xml" TransformFile="~/transform.xslt" XPath="/properties/property"></asp:XmlDataSource>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Esta propriedade não tem nenhum dono associado!" Visible="False"></asp:Label>

        <asp:Label ID="Label1" runat="server" Text="Dono: "></asp:Label>

        <asp:TextBox ID="TextBox1" runat="server" Enabled="False" Width="219px"></asp:TextBox>
        <br />
        <br />
    
        <br />
        <br />
        <asp:XmlDataSource ID="XmlDataSource2" runat="server" DataFile="~/XMLFile.xml"></asp:XmlDataSource>

</asp:Content>
