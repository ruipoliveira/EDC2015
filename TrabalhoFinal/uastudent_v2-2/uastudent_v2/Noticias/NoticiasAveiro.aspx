<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NoticiasAveiro.aspx.cs" Inherits="uastudent_v2.Noticias.NoticiasAveiro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <br />
    <div class="alert alert-success" role="alert">
        <h3><i class="fa fa-newspaper-o"></i> Notícias de Aveiro</h3>
    </div>

    <asp:XmlDataSource ID="XmlDataSource3" XPath="/rss/item" runat="server" DataFile="http://recortes.pt/Info/RSS/1" TransformFile="~/Noticias/noticiasFeed1.xslt"></asp:XmlDataSource> 
    <asp:XmlDataSource ID="XmlDataSource1" XPath="/rss/item" runat="server" DataFile="http://www.jn.pt/RSS/rss.aspx?Feed=Aveiro&Source=Pais" TransformFile="~/Noticias/noticiasFeed1.xslt"></asp:XmlDataSource> 


    <div class="container">
    <div class="row">
        <div class="col-xs-6">

        <asp:ListView ID="ListView1" runat="server" DataSourceID="XmlDataSource1" >
        <ItemTemplate>
            
                
        
               <div class="panel panel-primary" style="height: auto;">
                    <div class="panel-heading">
                        <h3 class="panel-title"><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("guid") %>' Text='<%# Eval("title") %>' /></h3>
                    </div>
                    <div class="panel-body">

                        <p>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("description") %>' /><a href='<%# Eval("guid") %>'><i class="fa fa-external-link"></i></a>
                            
                        </p>
                        <br />
                            <a class="btn btn-success" href="http://www.facebook.com/sharer/sharer.php?u=<%# Eval("guid") %>"><i class="fa fa-facebook"></i></a>
                            <a class="btn btn-success" href="http://twitter.com/intent/tweet?text=<%# Eval("guid") %>"><i class="fa fa-twitter"></i></a>
                    </div>
                </div>







            

                  </ItemTemplate>

    </asp:ListView>



            </div>




        <div class="col-xs-6">
            <div class="row">


                                            <asp:ListView ID="ListView2" runat="server" DataSourceID="XmlDataSource3" >
        <ItemTemplate>

                <div class="col-xs-6">



                    <div class="mini-box">
                        
                    <div class="panel panel-success" style="height: 450px;">
                        <div class="panel-heading">
                            <h3 class="panel-title"><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("guid") %>' Text='<%# Eval("title") %>' /></h3>
                        </div>
                        <div class="panel-body">

                            <p>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("description") %>' /><a href='<%# Eval("guid") %>'><i class="fa fa-external-link"></i></a>
                            
                            </p>
                            <br />
                                <a class="btn btn-primary" href="http://www.facebook.com/sharer/sharer.php?u=<%# Eval("guid") %>"><i class="fa fa-facebook"></i></a>
                                <a class="btn btn-primary" href="http://twitter.com/intent/tweet?text=<%# Eval("guid") %>"><i class="fa fa-twitter"></i></a>
                        </div>
                 </div>


                    </div>



                </div>

                              </ItemTemplate>

    </asp:ListView>

            </div>
        </div>




            

        </div>
  </div>








</asp:Content>
