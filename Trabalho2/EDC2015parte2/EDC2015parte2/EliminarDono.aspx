<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EliminarDono.aspx.cs" Inherits="EDC2015parte2.EliminarDono" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <br />
        <h1>
        <asp:Label ID="Label5" runat="server" style="font-size: xx-large" Text="Eliminar dono"></asp:Label>
        </h1>
        <br />
        

        Deseja eliminar o proprietário 


        <asp:Label ID="TextBox1" runat="server"></asp:Label>

        ?

        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Sim" />

        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Não" />
        <br />
        <br />
        <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/XMLFile.xml"></asp:XmlDataSource>


    
</asp:Content>
