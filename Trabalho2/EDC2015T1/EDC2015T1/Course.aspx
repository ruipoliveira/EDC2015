<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Course.aspx.cs" Inherits="EDC2015T1.Course" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <p style="font-size: xx-large">
        Informação do curso</p>
    <p style="font-size: xx-large">
&nbsp;<asp:DetailsView ID="DetailsView1" runat="server" DataSourceID="XmlDataSource1" Height="50px" Width="125px" AutoGenerateRows="False" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" HorizontalAlign="Left" />
            <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
            <FieldHeaderStyle BackColor="#DFF0D8" Font-Bold="True" HorizontalAlign="Right" Width="300px" Wrap="False" />
            <Fields>
                <asp:TemplateField HeaderText="guid" SortExpression="guid">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("guid") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("guid") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("guid") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="nome" HeaderText="nome" SortExpression="nome" />
                <asp:BoundField DataField="codigo" HeaderText="código" SortExpression="codigo" />
                <asp:BoundField DataField="grau" HeaderText="grau" SortExpression="grau" />
                <asp:BoundField DataField="vagas" HeaderText="vagas" SortExpression="vagas" />
                <asp:TemplateField HeaderText="saídas profissionais" SortExpression="saidas_profissionais">
                    <ItemTemplate>
                        <asp:Literal ID="Label2" runat="server" Text='<%# Bind("saidas_profissionais") %>'></asp:Literal>
                    </ItemTemplate>
                </asp:TemplateField>
                    
                <asp:BoundField DataField="fase1" HeaderText="média[1ª Fase]" SortExpression="fase1" />
                <asp:BoundField DataField="fase2" HeaderText="média[2ª Fase]" SortExpression="fase2" />
                <asp:BoundField DataField="duracao" HeaderText="duração" SortExpression="duracao" />
                <asp:TemplateField ConvertEmptyStringToNull="False" HeaderText="provas" SortExpression="provas">
                    <ItemTemplate>
                        <asp:Literal ID="Label3" runat="server" Text='<%# Bind("provas") %>'></asp:Literal>
                    </ItemTemplate>
                </asp:TemplateField>
            </Fields>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#F9F9F9" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" ForeColor="#333333" HorizontalAlign="Left" />
        </asp:DetailsView>
        <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/EngenhariaQuimica.xml" TransformFile="~/engquimica.xsl"></asp:XmlDataSource>
    </p>



    
</asp:Content>
