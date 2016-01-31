<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Configuracoes.aspx.cs" Inherits="uastudent_v2.Configuracoes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <br />

    <div class="alert alert-success" role="alert">
        <h3><i class="fa fa-cog"></i> Configurações</h3>
    </div>


<div class="row">
    <div class="border col-xs-6">

        <div class="panel panel-primary">
            <div class="panel-heading">
                <h3 class="panel-title">Parques de estacionamento disponíveis da UA</h3>
            </div>
            <div class="panel-body">
                <asp:CheckBox ID="CheckBox1" runat="server" Text="Residencias"/> <br />
                <asp:CheckBox ID="CheckBox2" runat="server" Text="Biblioteca"/> <br />
                <asp:CheckBox ID="CheckBox3" runat="server" Text="ZTC"/> <br />
                <asp:CheckBox ID="CheckBox4" runat="server" Text="Subterraneo"/> <br />
                <asp:CheckBox ID="CheckBox5" runat="server" Text="Ceramica"/> <br />
                <asp:CheckBox ID="CheckBox6" runat="server" Text="Linguas"/> <br />
                <asp:CheckBox ID="CheckBox7" runat="server" Text="Incubadora"/> <br />
                <asp:CheckBox ID="CheckBox8" runat="server" Text="ISCAA Publico"/> <br />
                <asp:CheckBox ID="CheckBox9" runat="server" Text="ISCAA Funcionarios"/> <br />
                <asp:CheckBox ID="CheckBox10" runat="server" Text="ESTGA"/> <br />
            </div>
        </div>


    </div>
    <div class="border col-xs-6">

        <!--
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h3 class="panel-title">Cantinas disponíveis da Universidade de Aveiro</h3>
            </div>
            <div class="panel-body">
                <asp:CheckBox ID="CheckBox11" runat="server" Text="Refeitório de Santiago"/> <br />
                <asp:CheckBox ID="CheckBox12" runat="server" Text="Refeitório do Crasto"/> <br />
                <asp:CheckBox ID="CheckBox13" runat="server" Text="Snack-Bar/Self"/> <br />
            </div>
        </div>
            -->
    </div>

</div>




    <br />

    <asp:Button ID="Button1" runat="server" CssClass="btn btn-success" Text="Guardar configurações" OnClick="Button1_Click" />








    <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/XMLFile.xml"></asp:XmlDataSource>

</asp:Content>
