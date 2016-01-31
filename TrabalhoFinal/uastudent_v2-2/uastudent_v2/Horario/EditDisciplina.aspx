<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditDisciplina.aspx.cs" Inherits="uastudent_v2.Horario.EditDisciplina" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

            <br />
    <div class="alert alert-success" role="alert">
        <h3><i class="fa fa-pencil-square-o"></i>  Editar disciplina "<asp:Label ID="Label1" runat="server" Text=""></asp:Label>"

        </h3>
    </div>

 
            <div class="panel panel-primary" style="width: 30%;">
  <div class="panel-heading">
    <h3 class="panel-title">Editar disciplina</h3>
  </div>
  <div class="panel-body">
 <table >
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Disciplina:"></asp:Label>
                    <br /><br />
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="181px"></asp:TextBox><br /><br />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Teoricas/Práticas/TP:"></asp:Label><br /><br />
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
                    <asp:Label ID="Label4" runat="server" Text="Inicio(HH:00):"></asp:Label><br />
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
                        <asp:ListItem Text="21:00H" Value="21"/>
                    </asp:DropDownList><br /><br />
                </td>
            </tr>
            
            <tr>
                <td>
                    <asp:Label ID="Label11" runat="server" Text="Fim(HH:00):"></asp:Label><br /><br />

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
                        <asp:ListItem Text="21:00H" Value="21"/>
                    </asp:DropDownList><br /><br />
                </td>
            </tr>


        </table>


  </div>
</div>





        <asp:Button ID="Button2" runat="server" Text="Guardar"  CssClass="btn btn-success" OnClick="Button2_Click" />
        <asp:Button ID="Button3" runat="server" Text="Cancelar"  CssClass="btn btn-default" OnClick="Button3_Click" />


        <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/Horario/timetable.xml"></asp:XmlDataSource>

</asp:Content>
