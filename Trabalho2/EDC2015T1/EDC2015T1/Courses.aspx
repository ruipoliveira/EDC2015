<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Courses.aspx.cs" Inherits="EDC2015T1.Courses" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br /><span style="font-size: xx-large;">Lista de cursos<br />
    <hr />
    </span>
    <dl>
        <dd>
            <p>
                Tipos:&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="listaDeGraus" runat="server" AutoPostBack="True" DataSourceID="XmlDataSource2" DataTextField="nome" DataValueField="nome" Height="31px" OnDataBound="listaDeGraus_DataBound" OnSelectedIndexChanged="listaDeGraus_SelectedIndexChanged" Width="400px">
                </asp:DropDownList>
                <span style="color: #3366FF">&nbsp;&nbsp; Locais:&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="listaDeLocais" runat="server" AutoPostBack="true" DataSourceID="XmlDataSource3" DataTextField="nomelocal" DataValueField="nomelocal" Height="30px" OnSelectedIndexChanged="listaDeLocais_SelectedIndexChanged" Width="405px">
                </asp:DropDownList>
                </span>
            </p>
        </dd>
    </dl>
    
    <asp:XmlDataSource ID="XmlDataSource2" runat="server" 
        DataFile="~/App_Data/cursos.xml" 
        TransformFile="~/App_Data/listaDeCursos.xslt"
        XPath="listadecursos/grau[not(@nome=preceding::grau/@nome)]">
    </asp:XmlDataSource>
    <br />
    <asp:XmlDataSource ID="XmlDataSource3" runat="server" DataFile="http://acesso.ua.pt/xml/cursos.asp" 
        TransformFile="~/App_Data/listaDeCursos.xslt" 
        XPath="listadecursos/local[not(@nomelocal=preceding::local/@nomelocal)]"></asp:XmlDataSource>
    <br />

    <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="http://acesso.ua.pt/xml/cursos.asp" 
        TransformFile="~/App_Data/cursos.xslt">
    </asp:XmlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="XmlDataSource1" 
        AllowPaging="True" CellPadding="4" GridLines="Horizontal" XPath="/cursos/curso" Width="1100px" OnPageIndexChanged="GridView1_PageIndexChanged" BackColor="White" BorderColor="#CCCCCC" BorderWidth="0px"
        >
        <AlternatingRowStyle BackColor="White" />
        <Columns>

            <asp:HyperLinkField DataNavigateUrlFields="Guid" 
                DataNavigateUrlFormatString="~/Course?ID={0}" 
                DataTextField="Guid" HeaderText="Guid" />

            <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
            <asp:BoundField DataField="Grau" HeaderText="Grau" SortExpression="Grau" />
            <asp:BoundField DataField="Local" HeaderText="Local" SortExpression="Local" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="White" Font-Bold="True" ForeColor="Black" />
        <PagerStyle HorizontalAlign="Center"
            CssClass="pagination-ys" BackColor="White" ForeColor="Black" />
        <RowStyle BackColor="#F9F9F9" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />
    </asp:GridView>

    <br />
    <br />

    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." BorderColor="#FFD9B3" CellPadding="4" ForeColor="#333333" GridLines="None" ShowHeader="False" Width="1107px" BorderStyle="Solid" BorderWidth="1px" Height="80px" Visible="False">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" BorderColor="#FFD9B3" BorderStyle="Solid" BorderWidth="1px" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" BorderColor="#FFCC99" BorderStyle="Inset" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" BorderColor="#FFD9B3" BorderStyle="Solid" BorderWidth="1px" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:newConnectionString1 %>" DeleteCommand="DELETE FROM [nova] WHERE [Id] = @Id" InsertCommand="INSERT INTO [nova] ([Id]) VALUES (@Id)" ProviderName="<%$ ConnectionStrings:newConnectionString1.ProviderName %>" SelectCommand="SELECT [Id] FROM [nova]">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Id" Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>

    </asp:Content>
