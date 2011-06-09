<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Editar_Roles.aspx.cs" Inherits="Editar_Roles" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="style1">
        <tr>
            <td colspan="7" style="text-align: center; font-weight: 700">
                Editar Rol</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style5" colspan="5">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="Label3" runat="server" Text="Descripcion:"></asp:Label>
            </td>
            <td class="style5" colspan="5">
                <asp:DropDownList ID="descripciones_DDList" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="descripciones_DDList_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td class="style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style5" colspan="5">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="Label4" runat="server" Text="Permisos Actuales:"></asp:Label>
            </td>
            <td class="style5">
                &nbsp;</td>
            <td class="style5" colspan="3">
                <asp:Label ID="Label5" runat="server" Text="Permisos Adicionales:"></asp:Label>
            </td>
            <td class="style5">
                &nbsp;</td>
            <td class="style2">
                <asp:Button ID="acceptButton" runat="server" Text="Aceptar" 
                    onclick="acceptButton_Click" />
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style5" colspan="2">
                <asp:CheckBoxList ID="permisos_CBList" runat="server" TabIndex="3">
                </asp:CheckBoxList>
            </td>
            <td class="style5">
                &nbsp;</td>
            <td class="style5" colspan="2">
                <asp:CheckBoxList ID="otrosPermisos_CBList" runat="server" TabIndex="3">
                </asp:CheckBoxList>
            </td>
            <td class="style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style5" colspan="5">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
        </tr>
</table>
</asp:Content>

