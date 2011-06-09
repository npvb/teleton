<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Crear_Paciente.aspx.cs" Inherits="Crear_Paciente" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div>
        <table style="width:100%; text-align:center">
            <tr>
                <td>
                    <h1>Registro de Pacientes</h1></td>
            </tr>
            <tr>
                <td>
                    <h2>Información General</h2></td>
            </tr>
            </table>

        <table style="width:100%; text-align:center">
            <tr>
                <td align="right">
                    N° de Cédula:</td>
                <td align="left">
                    <asp:TextBox ID="txtCedula" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right">
                    Nombres:</td>
                <td align="left">
                    <asp:TextBox ID="txtNombres" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right">
                    Primer Apellido:</td>
                <td align="left">
                    <asp:TextBox ID="txtPrimerApellido" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right">
                    Segundo Apellido:</td>
                <td align="left">
                    <asp:TextBox ID="txtSegundoApellido" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right">
                    Dirección:</td>
                <td align="left">
                    <asp:TextBox ID="txtDireccion" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right">
                    Sexo:</td>
                <td align="left">
                    <asp:radiobuttonlist id="rdSexo" runat="server" RepeatDirection="Horizontal">
                      <asp:listitem id="rdMasculino" Selected="true" runat="server" value="Masculino" />
                      <asp:listitem id="rdFemenino" runat="server" value="Femenino" />
                    </asp:radiobuttonlist>
                </td>
            </tr>
            <tr>
                <td align="right">
                    Estado Civil:</td>
                <td align="left">
                    <asp:DropDownList ID="ddEstado" runat="server">
                        <asp:ListItem Selected="True" Value="0">Soltero</asp:ListItem>
                        <asp:ListItem Value="1">Casado</asp:ListItem>
                        <asp:ListItem Value="2">Divorciado</asp:ListItem>
                        <asp:ListItem Value="3">Viudo</asp:ListItem>
                        <asp:ListItem Value="4">Unión libre</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td align="right">
                    Lugar de Nacimiento:</td>
                <td align="left">
                    <asp:TextBox ID="txtLugarNacimiento" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right">
                    Fecha de Nacimiento:</td>
                <td align="left">
                    <asp:TextBox ID="txtFechaNacimiento" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right">
                    Fecha de Ingreso:</td>
                <td align="left">
                    <asp:TextBox ID="txtFechaIngreso" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right">
                    &nbsp;</td>
                <td align="left">
                    <asp:Button ID="btIngresar" runat="server" Text="Ingresar Paciente" 
                        onclick="btIngresar_Click" />
                </td>
            </tr>
        </table>

            <table>

            </table>
    </div>


</asp:Content>

