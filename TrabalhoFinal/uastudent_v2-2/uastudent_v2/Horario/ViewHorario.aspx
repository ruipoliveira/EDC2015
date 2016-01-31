<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewHorario.aspx.cs" Inherits="uastudent_v2.Horario.ViewHorario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

        <br />
    <div class="alert alert-success" role="alert">
        <h3><i class="fa fa-calendar-o"></i> Personalize o seu Horário!
        </h3>
    </div>

        <p>
        <asp:Xml ID="Xml1" runat="server" DocumentSource="~/Horario/timetable.xml" TransformSource="~/Horario/timetable.xslt"></asp:Xml>
    </p>

    <br />


    <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" Text="Editar horário" OnClick="Button1_Click" />


    <a href="../Horario/timetable.xml" class="btn btn-primary"><i class='fa fa-rss-square'></i></a>




</asp:Content>
