<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EmentasUA.aspx.cs" Inherits="uastudent_v2.ServicosUA.EmentasUA" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

        <br />
    <div class="alert alert-success" role="alert">
        <h3><i class="fa fa-cog"></i> Ementas da Universidade de Aveiro</h3>
    </div>
     <br />
    <br />
    <!--
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataSourceID="XmlDataSource1" Height="50px" Width="693px" EmptyDataText="Não são servidas refeições." BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" >
        <Fields>
            <asp:BoundField DataField="cantina" HeaderText="cantina" SortExpression="cantina" visible="False"/>
            <asp:BoundField DataField="sopa" HeaderText="sopa" SortExpression="sopa" Visible="True" />
            <asp:BoundField DataField="pratocarne" HeaderText="pratocarne" SortExpression="pratocarne" />
            <asp:BoundField DataField="pratopeixe" HeaderText="pratopeixe" SortExpression="pratopeixe" />
            <asp:BoundField DataField="pratodieta" HeaderText="pratodieta" SortExpression="pratodieta" />
            <asp:BoundField DataField="pratovegetariano" HeaderText="pratovegetariano" SortExpression="pratovegetariano" />
            <asp:BoundField DataField="pratoopcao" HeaderText="pratoopcao" SortExpression="pratoopcao" />
            <asp:BoundField DataField="salada" HeaderText="salada" SortExpression="salada" />
            <asp:BoundField DataField="diversos" HeaderText="diversos" SortExpression="diversos" />
            <asp:BoundField DataField="sobremesa" HeaderText="sobremesa" SortExpression="sobremesa" />
            <asp:BoundField DataField="bebida" HeaderText="bebida" SortExpression="bebida" />
            <asp:BoundField DataField="dia" HeaderText="dia" SortExpression="dia" />
            <asp:BoundField DataField="meal" HeaderText="meal" SortExpression="meal" />
        </Fields>
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <emptydatarowstyle
            forecolor="Red" BorderStyle="None"/>

        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />

    </asp:DetailsView>
    <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/ServicosUA/ementas.xml" TransformFile="~/ServicosUA/ementas.xslt"></asp:XmlDataSource>-->

    <div class="row">
      <div class="col-md-4">
          
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
                              <br />
                              <font size="17">
                                <asp:Label ID="Label5" CssClass="label label-success" runat="server" Text=""></asp:Label>
                            </font>
                          </center>

                      </div>
                      <div class="col-md-6">
                          <center>
                              <font size="17">
                                  <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
                              </font>
                              <br />
                              <h5>

                              </h5>
                          </center>

                      </div>
                    </div>

              </div>
            </div>

          </center>

      </div>
    </div>
    <asp:Button ID="Button1" runat="server" Text="Santiago" OnClick="Button1_Click" />
    <asp:Button ID="Button2" runat="server" Text="Crasto" OnClick="Button2_Click" />
    <asp:Button ID="Button3" runat="server" Text="Snack-Bar" OnClick="Button3_Click" />

    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    
    <br />
    <asp:Label ID="Label7" runat="server" Text=""></asp:Label>
     <br />
    <asp:Label ID="Label6" runat="server" Text=""></asp:Label>
     <br />
    <asp:Label ID="Label8" runat="server" Text=""></asp:Label>
     <br />
    <asp:Label ID="Label9" runat="server" Text=""></asp:Label>
     <br />
    <asp:Label ID="Label10" runat="server" Text=""></asp:Label>
     <br />
    <asp:Label ID="Label11" runat="server" Text=""></asp:Label>
     <br />
    <asp:Label ID="Label12" runat="server" Text=""></asp:Label>
     <br />
    <asp:Label ID="Label13" runat="server" Text=""></asp:Label>
     <br />
    <asp:Label ID="Label14" runat="server" Text=""></asp:Label>
     <br />
    <asp:Label ID="Label15" runat="server" Text=""></asp:Label>
     <br />
    <asp:Label ID="Label16" runat="server" Text=""></asp:Label>
     <br />
    <asp:Label ID="Label17" runat="server" Text=""></asp:Label>
    <br />
    <asp:Label ID="Label18" runat="server" Text=""></asp:Label>
    <br />
    <asp:Label ID="Label19" runat="server" Text=""></asp:Label>
    <br />
    <asp:Label ID="Label20" runat="server" Text=""></asp:Label>
    <br />
    <asp:Label ID="Label21" runat="server" Text=""></asp:Label>
    <br />
    <asp:Label ID="Label22" runat="server" Text=""></asp:Label>
    <br />
    <asp:Label ID="Label23" runat="server" Text=""></asp:Label>
    <br />
    <asp:Label ID="Label24" runat="server" Text=""></asp:Label>
    <br />
    <asp:Label ID="Label25" runat="server" Text=""></asp:Label>
    <br />
    <asp:Label ID="Label26" runat="server" Text=""></asp:Label>
</asp:Content>
