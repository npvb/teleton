<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Eliminar_Permisos.aspx.cs" Inherits="Eliminar_Permisos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td colspan="4" style="text-align: center; font-weight: 700">
                Eliminar Permisos</td>
            <td style="text-align: center; font-weight: 700">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style3">
                <asp:Label ID="Label4" runat="server" Text="Permisos:"></asp:Label>
            </td>
            <td class="style5">
                <asp:CheckBoxList ID="permisos_CBList" runat="server" TabIndex="3">
                </asp:CheckBoxList>
            </td>
            <td class="style6">
                <asp:Button ID="acceptButton" runat="server" Text="Aceptar" 
                    onclick="acceptButton_Click" />
            </td>
            <td class="style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

