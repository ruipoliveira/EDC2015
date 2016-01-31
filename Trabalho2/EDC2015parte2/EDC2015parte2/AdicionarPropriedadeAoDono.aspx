<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdicionarPropriedadeAoDono.aspx.cs" Inherits="EDC2015parte2.AdicionarPropriedadeAoDono" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <br />
        <asp:Label ID="Label5" runat="server" style="font-size: xx-large" Text="Comprar propriedade"></asp:Label>
        <br />
        <br />  
    
        <asp:Label ID="Label1" runat="server" Text="Nome:"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Numero Fiscal:"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 0px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Nrº Registo:"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>

        <asp:XmlDataSource ID="XmlDataSource3" runat="server" DataFile="~/XMLFile.xml" TransformFile="~/transform.xslt" XPath="//property[not(@city=preceding::property/@city)]"></asp:XmlDataSource>
        <br/>


        <br />
        <asp:Label ID="Label4" runat="server" Text="Data da Compra (yyyy-mm-dd):"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>

        <br />
        <br />
        <asp:Button ID="Button1" runat="server" CssClass="btn-group" OnClick="Button1_Click" Text="Comprar" />
        <br />
        <br />
        <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/XMLFile.xml"></asp:XmlDataSource>
</asp:Content>
