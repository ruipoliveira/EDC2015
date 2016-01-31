<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdicionarPropriedade.aspx.cs" Inherits="EDC2015parte2.AdicionarPropriedade" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <br />
        <asp:Label ID="Label5" runat="server" style="font-size: xx-large" Text="Adicionar nova Propriedade"></asp:Label>
        <br />
        <br />

        <asp:Label ID="Label1" runat="server" Text="Preço (€):"></asp:Label>

        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Cidade:"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 0px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Rua:"></asp:Label>

        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Numero da Porta:"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Adicionar" />
        <br />
        <br />
        <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/XMLFile.xml"></asp:XmlDataSource>
    

</asp:Content>
