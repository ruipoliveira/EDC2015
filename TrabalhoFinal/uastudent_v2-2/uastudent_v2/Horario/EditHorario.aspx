<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditHorario.aspx.cs" Inherits="uastudent_v2.Horario.EditHorario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <br />
    <div class="alert alert-success" role="alert">
        <h3><i class="fa fa-pencil-square-o"></i> Edite o seu Horário!
        </h3>
    </div>


    <asp:XmlDataSource ID="XmlDataSource1" XPath="/timetable/day" runat="server" DataFile="~/Horario/timetable.xml" TransformFile="~/Horario/timetableRect.xslt"></asp:XmlDataSource>

    <asp:XmlDataSource ID="XmlDataSource2" runat="server" XPath="/timetable/day" DataFile="~/Horario/timetable.xml"></asp:XmlDataSource>

    <asp:GridView ID="GridView1" runat="server" CssClass="table table-bordered" AutoGenerateColumns="False" DataSourceID="XmlDataSource1" Width="696px" AllowPaging="True">
        <Columns>
            <asp:BoundField DataField="name" HeaderText="Disciplina" SortExpression="name" />
            <asp:BoundField DataField="tp" HeaderText="T/P/TP/OT" SortExpression="tp" />

            <asp:BoundField DataField="numday" HeaderText="Dia da semana" SortExpression="numday" />
            <asp:BoundField DataField="time-sta" HeaderText="Hora de início (HH:00)" SortExpression="time-sta" />
            <asp:BoundField DataField="time-end" HeaderText="Hora de fim (HH:00)" SortExpression="time-end" />
            <asp:HyperLinkField DataNavigateUrlFields="ID" DataNavigateUrlFormatString="EditDisciplina.aspx?ID={0}" Text="<i class='fa fa-pencil-square-o'></i>" />
            <asp:HyperLinkField DataNavigateUrlFields="ID" DataNavigateUrlFormatString="DeleteDisciplina.aspx?ID={0}" Text="<i class='fa fa-times'></i>" />
        </Columns>
    </asp:GridView>
    <br />
    
    <asp:Button ID="Button1" runat="server" Text="Adicionar novas disciplinas"  CssClass="btn btn-primary" OnClick="Button1_Click" />





    <div id="newEntry"  runat="server">




            <div class="panel panel-primary" style="width: 30%;">
  <div class="panel-heading">
    <h3 class="panel-title">Adicionar nova disciplina</h3>
  </div>
  <div class="panel-body">
 <table >
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Disciplina:"></asp:Label>
                    <br /><br />
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="181px"></asp:TextBox><br /><br />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Teoricas/Práticas/TP:"></asp:Label><br /><br />
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem Text="T" Value="T" Selected="true" />
                        <asp:ListItem Text="P" Value="P"/>
                        <asp:ListItem Text="TP" Value="TP"/>
                        <asp:ListItem Text="OT" Value="OT"/>
                    </asp:DropDownList>
                    <asp:TextBox ID="TextBox2" runat="server" Width="30px"></asp:TextBox><br /><br />

                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Dia da semana:"></asp:Label><br /><br />
                </td>
                <td>
                     <asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem Text="Segunda-feira" Value="1" Selected="true" />
                        <asp:ListItem Text="Terça-feira" Value="2"/>
                        <asp:ListItem Text="Quarta-feira" Value="3"/>
                        <asp:ListItem Text="Quita-feira" Value="4"/>
                        <asp:ListItem Text="Sexta-feira" Value="5"/>
                    </asp:DropDownList><br /><br />
                </td>
            </tr>

            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Inicio(HH:00):"></asp:Label><br />
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList3" runat="server">
                        <asp:ListItem Text="8:00H" Value="8" Selected="true" />
                        <asp:ListItem Text="9:00H" Value="9"/>
                        <asp:ListItem Text="10:00H" Value="10"/>
                        <asp:ListItem Text="11:00H" Value="11"/>
                        <asp:ListItem Text="12:00H" Value="12"/>
                        <asp:ListItem Text="13:00H" Value="13"/>
                        <asp:ListItem Text="14:00H" Value="14"/>
                        <asp:ListItem Text="15:00H" Value="15"/>
                        <asp:ListItem Text="16:00H" Value="16"/>
                        <asp:ListItem Text="17:00H" Value="17"/>
                        <asp:ListItem Text="18:00H" Value="18"/>
                        <asp:ListItem Text="19:00H" Value="19"/>
                        <asp:ListItem Text="20:00H" Value="20"/>
                        <asp:ListItem Text="20:00H" Value="21"/>
                    </asp:DropDownList><br /><br />
                </td>
            </tr>
            
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Fim(HH:00):"></asp:Label><br /><br />

                </td>
                <td>
                     <asp:DropDownList ID="DropDownList4" runat="server">
                        <asp:ListItem Text="8:00H" Value="8" Selected="true" />
                        <asp:ListItem Text="9:00H" Value="9"/>
                        <asp:ListItem Text="10:00H" Value="10"/>
                        <asp:ListItem Text="11:00H" Value="11"/>
                        <asp:ListItem Text="12:00H" Value="12"/>
                        <asp:ListItem Text="13:00H" Value="13"/>
                        <asp:ListItem Text="14:00H" Value="14"/>
                        <asp:ListItem Text="15:00H" Value="15"/>
                        <asp:ListItem Text="16:00H" Value="16"/>
                        <asp:ListItem Text="17:00H" Value="17"/>
                        <asp:ListItem Text="18:00H" Value="18"/>
                        <asp:ListItem Text="19:00H" Value="19"/>
                        <asp:ListItem Text="20:00H" Value="20"/>
                        <asp:ListItem Text="20:00H" Value="21"/>
                    </asp:DropDownList><br /><br />
                </td>
            </tr>


        </table>


  </div>
</div>



       

        

        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Guardar"  CssClass="btn btn-success" />
        <asp:Button ID="Button3" runat="server" Text="Cancelar"  CssClass="btn btn-default" OnClick="Button3_Click" />
    </div>

</asp:Content>
