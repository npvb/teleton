<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Editar Empleados.aspx.cs" Inherits="Editar_Empleados" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
    .style8
    {
        width: 100%;
    }
    .style9
    {
        width: 124px;
    }
    .style11
    {
        font-size: medium;
    }
    .style17
    {
        width: 285px;
    }
    .style19
    {
        width: 242px;
    }
    .style23
    {
        width: 160px;
    }
        .style24
        {
            width: 78px;
        }
        .style25
        {
            width: 198px;
        }
        .style26
        {
            width: 275px;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

 <p class="style11"> <strong>Editar Empleados</strong></p>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <table class="style8">
                <tr>
                    <td class="style24">
                        &nbsp;</td>
                    <td class="style26">
                        &nbsp;</td>
                    <td class="style9">
                        <asp:Label ID="Label1" runat="server" Text="Escoga Usuario:"></asp:Label>
                    </td>
                    <td class="style25">
                        <asp:DropDownList ID="cmb_usuarios" runat="server" Height="16px" Width="185px">
                        </asp:DropDownList>
                    </td>
                    <td class="style23">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style24">
                        &nbsp;</td>
                    <td class="style26">
                        &nbsp;</td>
                    <td class="style9">
                        &nbsp;</td>
                    <td class="style25">
                        &nbsp;</td>
                    <td class="style23">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style24">
                        &nbsp;</td>
                    <td class="style26">
                        &nbsp;</td>
                    <td class="style9">
                        <asp:Label ID="Label2" runat="server" Text="Primer Nombre"></asp:Label>
                    </td>
                    <td class="style25">
                        <asp:TextBox ID="txt_username" runat="server" Width="183px"></asp:TextBox>
                    </td>
                    <td class="style23">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ErrorMessage="**Ingrese Primer Nombre" ControlToValidate="txt_username" 
                            ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style24">
                        &nbsp;</td>
                    <td class="style26">
                        &nbsp;</td>
                    <td class="style9">
                        <asp:Label ID="Label5" runat="server" Text="Primer Apellido"></asp:Label>
                    </td>
                    <td class="style25">
                        <asp:TextBox ID="txt_lastname" runat="server" Width="181px"></asp:TextBox>
                    </td>
                    <td class="style23">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ErrorMessage="**Ingrese Primer Apellido" ControlToValidate="txt_lastname" 
                            ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style24">
                        &nbsp;</td>
                    <td class="style26">
                        &nbsp;</td>
                    <td class="style9">
                        <asp:Label ID="Label3" runat="server" Text="Segundo Apellido"></asp:Label>
                    </td>
                    <td class="style25">
                        <asp:TextBox ID="txt_secondlastname" runat="server" Width="182px"></asp:TextBox>
                    </td>
                    <td class="style23">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ErrorMessage="**Ingrese Segundo  Apellido" 
                            ControlToValidate="txt_secondlastname" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style24">
                        &nbsp;</td>
                    <td class="style26">
                        &nbsp;</td>
                    <td class="style9">
                        <asp:Label ID="Label4" runat="server" Text="Puesto"></asp:Label>
                    </td>
                    <td class="style25">
                        <asp:DropDownList ID="cmb_puesto" runat="server" Height="16px" Width="181px">
                        </asp:DropDownList>
                    </td>
                    <td class="style23">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ErrorMessage="**Debe Escoger un Puesto " ControlToValidate="cmb_puesto" 
                            ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style24">
                        &nbsp;</td>
                    <td class="style26">
                        &nbsp;</td>
                    <td class="style9">
                        &nbsp;</td>
                    <td class="style25">
                        &nbsp;</td>
                    <td class="style23">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style24">
                        &nbsp;</td>
                    <td class="style26">
                        &nbsp;</td>
                    <td class="style9">
                        &nbsp;</td>
                    <td class="style25">
                        &nbsp;</td>
                    <td class="style23">
                        <asp:Button ID="btnGuardar" runat="server" Text="Guardar" />
                        &nbsp;&nbsp;
                        <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style24">
                        &nbsp;</td>
                    <td class="style26">
                        &nbsp;</td>
                    <td class="style9">
                        &nbsp;</td>
                    <td class="style25">
                        &nbsp;</td>
                    <td class="style23">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style24">
                        &nbsp;</td>
                    <td class="style26">
                        &nbsp;</td>
                    <td class="style9">
                        &nbsp;</td>
                    <td class="style25">
                        &nbsp;</td>
                    <td class="style23">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </ContentTemplate>
    
    </asp:UpdatePanel>
   
</asp:Content>

