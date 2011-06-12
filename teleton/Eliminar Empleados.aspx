<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Eliminar Empleados.aspx.cs" Inherits="Eliminar_Empleados" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style8
        {
            width: 100%;
        }
        .style9
        {
            width: 150px;
        }
        .style10
        {
            width: 310px;
        }
        .style11
        {
            width: 201px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
        Eliminar Empleados</p>
    <table class="style8">
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style9">
                <asp:Label ID="Label1" runat="server" Text="Escoga Empleado"></asp:Label>
            </td>
            <td class="style11">
                <asp:DropDownList ID="cmb_empleados" runat="server" Height="16px" Width="173px">
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="cmb_empleados" ErrorMessage="**Debe escoger un empleado"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td>
                <asp:Button ID="btn_eliminar" runat="server" onclick="btn_eliminar_Click" 
                    Text="Eliminar" />
            </td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

