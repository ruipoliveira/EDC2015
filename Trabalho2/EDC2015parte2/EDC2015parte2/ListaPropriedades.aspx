<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListaPropriedades.aspx.cs" Inherits="EDC2015parte2.ListaPropriedades" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <br />
        <asp:Label ID="Label3" runat="server" style="font-size: xx-large" Text="Lista de Propriedades"></asp:Label>
        <br />
        <br />  
        <asp:Label ID="Label1" runat="server" Text="Cidades:"></asp:Label>

        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="btn btn-default btn-sm dropdown-toggle" AutoPostBack="True" DataSourceID="XmlDataSource3" DataTextField="city" DataValueField="city" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
        </asp:DropDownList>
        <br/>
        <br/>

        <asp:Label ID="Label2" runat="server" Text="Preço total das propriedades apresentadas (€) :"></asp:Label>
        <b> <asp:Label ID="TextBox1" runat="server" ></asp:Label></b>
        <br/>
        <br/>

        <asp:XmlDataSource ID="XmlDataSource3" runat="server" DataFile="~/XMLFile.xml" TransformFile="~/transform.xslt" XPath="//property[not(@city=preceding::property/@city)]"></asp:XmlDataSource>
        <br/>
    
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" 
            DataSourceID="XmlDataSource1" Width="900px" CssClass="table table-striped" BorderColor="#CCCCCC" BorderStyle="Inset">
            <Columns>
                <asp:BoundField DataField="landRegister" HeaderText="Nº Registo" SortExpression="landRegister" />
                <asp:BoundField DataField="value" HeaderText="Valor (€)" SortExpression="value" />  
                <asp:BoundField DataField="city" HeaderText="Cidade" SortExpression="city" />
                <asp:BoundField DataField="street" HeaderText="Rua" SortExpression="street" />
                <asp:BoundField DataField="portNumber" HeaderText="Numero Porta" SortExpression="portNumber" />
                <asp:HyperLinkField DataNavigateUrlFields="landRegister" DataNavigateUrlFormatString="EditPropriedades.aspx?ID={0}" Text="<i class='fa fa-pencil-square-o'></i>"  HeaderText="Editar"/>
                <asp:HyperLinkField DataNavigateUrlFields="landRegister" DataNavigateUrlFormatString="MostrarDono.aspx?id={0}" Text="<i class='fa fa-user-secret'></i>"  HeaderText="Mostrar Dono"/>
            </Columns>
        </asp:GridView>
        <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/XMLFile.xml" TransformFile="~/transform.xslt" XPath="/properties/property"></asp:XmlDataSource>
        <br />

        <br />
        <br />        

</asp:Content>
