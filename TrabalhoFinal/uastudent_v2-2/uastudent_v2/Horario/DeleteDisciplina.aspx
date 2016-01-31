<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DeleteDisciplina.aspx.cs" Inherits="uastudent_v2.Horario.DeleteDisciplina" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

        <br />

        <div class="alert alert-success" role="alert">
        <h3><i class="fa fa-times"></i> Deseja eliminar a disciplina "<asp:Label ID="TextBox1" runat="server"></asp:Label>"?
        </h3>
        </div>



        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Sim" CssClass="btn btn-success" />

        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Não" CssClass="btn btn-default" />
        <br />
        <br />
        <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/Horario/timetable.xml"></asp:XmlDataSource>


</asp:Content>
