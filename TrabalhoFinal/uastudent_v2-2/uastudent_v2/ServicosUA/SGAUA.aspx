 <%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SGAUA.aspx.cs" Inherits="uastudent_v2.ServicosUA.SGAUA" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <br />
    <div class="alert alert-success" role="alert">
        <h3><i class="fa fa-flag"></i> Senhas dos SGA da Universidade de Aveiro</h3>
    </div>


    <br />    <br />


    <div class="row">
      <div class="col-md-4">
            <asp:Button ID="Button1" Style="width: 350px;" runat="server" Text="Lic. (1º ciclo), Mestrado (2º ciclo)" CssClass="btn btn-primary" OnClick="Button1_Click" /> <br /> <br />
            <asp:Button ID="Button2" Style="width: 350px;" runat="server" Text="Atendimento Prioritário" CssClass="btn btn-primary" OnClick="Button2_Click" /> <br /> <br />
            <asp:Button ID="Button3" Style="width: 350px;" runat="server" Text="Estágios Internacionais" CssClass="btn btn-primary" OnClick="Button3_Click" /> <br /> <br />
            <asp:Button ID="Button4" Style="width: 350px;" runat="server" Text="Mobilidade Erasmus (Alunos UA)" CssClass="btn btn-primary" OnClick="Button4_Click" /> <br /> <br />
            <asp:Button ID="Button5" Style="width: 350px;" runat="server" Text="Doutoramentos, Agregações" CssClass="btn btn-primary" OnClick="Button5_Click" /> <br /> <br />
            <asp:Button ID="Button6" Style="width: 350px;" runat="server" Text="Student Exchange (Brasil & China)" CssClass="btn btn-primary" OnClick="Button6_Click" /> <br /> <br />
      </div>
      <div class="col-md-8">
          <center>
              <div class="panel panel-primary" style="width:70%">
              <div class="panel-heading">
                <h3 class="panel-title">
                    <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                </h3>
              </div>
              <div class="panel-body">
                  <div class="row">
                      <div class="col-md-6">
                          <center>
                            <font size="17">
                                <asp:Label ID="Label3" CssClass="label label-success" runat="server" Text=""></asp:Label>
                            </font>
                              <h5>Ultima atualização: <br /><asp:Label ID="Label6" runat="server" Text=""></asp:Label></h5>
                          </center>

                      </div>
                      <div class="col-md-6">
                          <center>
                              <font size="17">
                                  <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
                              </font>
                              <br />
                              <h5>
                                  Em espera: <br /> 
                                  <asp:Label ID="Label5" runat="server" Text=""></asp:Label>

                              </h5>
                          </center>

                      </div>
                    </div>

              </div>
            </div>

          </center>
          


      </div>
    </div>



    <div id="cenas" runat="server"></div>

    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>

</asp:Content>
