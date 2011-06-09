﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Crear_Roles.aspx.cs" Inherits="Crear_Roles" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="style1">
        <tr>
            <td colspan="4" style="text-align: center; font-weight: 700">
                Crear Rol</td>
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
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style3">
                <asp:Label ID="Label3" runat="server" Text="Descripcion:"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="descripcion_TB" runat="server" TabIndex="2" Width="244px"></asp:TextBox>
            </td>
            <td class="style6">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ErrorMessage="Descripcion Requerida" ControlToValidate="descripcion_TB"></asp:RequiredFieldValidator>
            </td>
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
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style3">
                <asp:Label ID="Label4" runat="server" Text="Permisos:"></asp:Label>
            </td>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                <asp:Button ID="acceptButton" runat="server" Text="Aceptar" 
                    onclick="acceptButton_Click" />
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style5">
                <asp:CheckBoxList ID="permisos_CBList" runat="server" TabIndex="3">
                </asp:CheckBoxList>
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
        </tr>
    </table>
</asp:Content>

