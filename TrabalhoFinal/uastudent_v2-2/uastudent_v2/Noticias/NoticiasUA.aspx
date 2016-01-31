<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NoticiasUA.aspx.cs" Inherits="uastudent_v2.Noticias.NoticiasUA" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <asp:XmlDataSource ID="XmlDataSource3" XPath="/rss/item" runat="server" DataFile="http://uaonline.ua.pt/xml/contents_xml.asp?&lid=1&i=11" TransformFile="~/Noticias/noticiasFeed.xslt"></asp:XmlDataSource>
    
    <br />
    <div class="alert alert-success" role="alert">
        <h3><i class="fa fa-newspaper-o"></i> Jornal Online da Universidade de Aveiro</h3>
    </div>

             
    <br />
    <br />
    <asp:ListView ID="ListView1" runat="server" DataSourceID="XmlDataSource3" >
        <ItemTemplate>
            <div class="col-xs-12 col-md-6 col-lg-4">

                <div class="panel panel-primary" style="height: 450px;">
                    <div class="panel-heading">
                        <h3 class="panel-title"><asp:HyperLink ID="titleLabel" runat="server" NavigateUrl='<%# Eval("guid") %>' Text='<%# Eval("title") %>' /></h3>
                    </div>
                    <div class="panel-body">

                        <p>
                            <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' /> ...  <a href='<%# Eval("guid") %>'><i class="fa fa-external-link"></i></a>
                            
                        </p>
                        <br />
                            <a class="btn btn-success" href="http://www.facebook.com/sharer/sharer.php?u=<%# Eval("guid") %>"><i class="fa fa-facebook"></i></a>
                            <a class="btn btn-success" href="http://twitter.com/intent/tweet?text=<%# Eval("guid") %>"><i class="fa fa-twitter"></i></a>
                    </div>
                </div>

            </div>

        </ItemTemplate>

    </asp:ListView>

</asp:Content>
