<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="uastudent_v2._Default" %>

<%@ Register Assembly="GMaps" Namespace="Subgurim.Controles" TagPrefix="cc1" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>UAStudent</h1>

        <div class="row">
            <div class="col-xs-6">
                <img src="imagens/ua2.png" width="50%" />
            </div>
            <div class="col-xs-6">
                <br /> <br /> 
                <p><a href="http://www.ua.pt/" class="btn btn-success btn-lg">Universidade de Aveiro <i class="fa fa-external-link-square"></i></a></p>

            </div>
        </div>



    </div>






         <center>

    <div class="panel panel-primary" style="width:65%">
  <div class="panel-heading">
    <h3 class="panel-title">Meteorologia em Aveiro</h3>
  </div>
  <div class="panel-body">

        <div class="row row-centered">
            <div class="text-center col-md-4" >
                <font size="17">
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label> <i class="pe-7w-degree-farenheit pe-1x pe-va"></i> 
                    <br />
                    <asp:Label ID="Label2" runat="server" Text=""></asp:Label>  <i class="pe-7w-degree-celcius pe-1x pe-va"></i> 


                </font>

            </div>
            <div class="text-center col-md-4">
                <h1>
                    <asp:Label ID="Label6" runat="server" Text=""></asp:Label>
                    <h5><asp:Label ID="Label4" runat="server" Text=""></asp:Label> </h5>
                </h1>

            </div>
            <div class="text-center col-md-4">
                <h3>Humidade:   <asp:Label ID="Label3"  runat="server" Text=""></asp:Label></h3>
                <h3>Vento:   <asp:Label ID="Label5"  runat="server" Text=""></asp:Label></h3>
            </div>
        </div>





  </div>
</div>

          </center>



             <center>

    <div class="panel panel-primary" style="width:65%">
  <div class="panel-heading">
    <h3 class="panel-title">Localização Universidade de Aveiro</h3>
  </div>
  <div class="panel-body">

        <div class="row row-centered">
            <cc1:GMap ID="GMap1" runat=server></cc1:GMap>

        </div>





  </div>
</div>

          </center>



            




</asp:Content>
