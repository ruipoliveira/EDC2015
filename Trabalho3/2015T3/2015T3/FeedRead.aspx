<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FeedRead.aspx.cs" Inherits="_2015T3.FeedRead" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <h1><i class="fa fa-rss"></i> My Feed Reader</h1>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="XmlDataSource4" DataTextField="description" DataValueField="url" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
        </asp:DropDownList>

       <asp:XmlDataSource ID="XmlDataSource4" runat="server" DataFile="~/Sites.xml" TransformFile="~/getSiteName.xslt" XPath="/sites/site"></asp:XmlDataSource>
        
        <br />

        <br />

<table style="width:100%;">
    <tr>
        <td style="width: 611px">

    <h3>Feed Info</h3>
    
        </td>
        <td>

    <h3>Feed Image</h3>
    
        </td>
    </tr>
    <tr>
        <td style="height: 22px; width: 611px;">
  
            <div style="text-align: left; width: 513px">
  
    <asp:DetailsView ID="DetailsView1" runat="server" Height="16px" Width="514px" AutoGenerateRows="False" DataSourceID="XmlDataSource1" CssClass="table">
        <Fields>
            <asp:BoundField  DataField="title" HeaderText="Title" SortExpression="title" />
            <asp:BoundField DataField="link" HeaderText="Link" SortExpression="link" />
            <asp:BoundField DataField="description" HeaderText="Description" SortExpression="description" />
            <asp:BoundField DataField="language" HeaderText="Language" SortExpression="language" />
            <asp:BoundField DataField="managingEditor" HeaderText="Managing Editor" SortExpression="managingEditor" />
            <asp:BoundField DataField="webMaster" HeaderText="Web Master" SortExpression="webMaster" />
            <asp:BoundField DataField="lastBuildDate" HeaderText="Last Build Date" SortExpression="lastBuildDate" />
            <asp:BoundField DataField="category" HeaderText="Category" SortExpression="category" />
        </Fields>
    </asp:DetailsView>
    
    
  
            </div>
    
  
    <asp:XmlDataSource ID="XmlDataSource1" runat="server" XPath="/rss/channel"  DataFile="~/Publico.pt - Geral - powered by FeedBurner.xml" TransformFile="~/infoFeed.xslt"></asp:XmlDataSource>

    
        </td>

        <td style="height: 22px" >
            <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" DataSourceID="XmlDataSource2" Height="50px" Width="125px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
                <EditRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <Fields>
                    <asp:ImageField DataImageUrlField="image" SortExpression="image" />
                </Fields>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            </asp:DetailsView>
            <asp:XmlDataSource ID="XmlDataSource2" runat="server" XPath="/rss/channel" DataFile="~/Publico.pt - Geral - powered by FeedBurner.xml" TransformFile="~/imageInfoFeed.xslt"></asp:XmlDataSource>
        </td>

    </tr>
    </table>
<br />
    
    <br />
  
    
  
    <h3>Feed News    <asp:Label ID="Literal1" runat="server" Font-Size="Smaller"></asp:Label> </h3>



    <asp:XmlDataSource ID="XmlDataSource3" XPath="/rss/item" runat="server" DataFile="~/Publico.pt - Geral - powered by FeedBurner.xml" TransformFile="~/noticiasFeed.xslt"></asp:XmlDataSource>

    
        <br />





        
                                
    <asp:ListView ID="ListView1" runat="server" DataSourceID="XmlDataSource3" OnDataBound="ListView1_DataBound">
        <ItemTemplate>
            <div class="col-xs-12 col-md-6 col-lg-4">
                <div class="well" style="height: 400px;">
                    <div class="media">
                        <div class="media-body">
                            <h4>
                                <asp:HyperLink ID="titleLabel" runat="server" NavigateUrl='<%# Eval("guid") %>' Text='<%# Eval("title") %>' />

                            </h4>
                            <br /   >
                            <p>
                                <i class="fa fa-calendar"></i>  <asp:Label ID="Label2" runat="server" Text='<%# Eval("pubDate") %>' />
                            </p>

                            <p>
                                <i class="fa fa-tag"></i> <asp:Label ID="categoryLabel" runat="server" Text='<%# Eval("category") %>' />

                            </p>
                            <p>
                                 <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                            </p>

                            <br />
           
                        </div>
                    </div>
                </div>
            </div>

        </ItemTemplate>

    </asp:ListView>



    <br />
    <br />
    <br />
    <br />




</asp:Content>
