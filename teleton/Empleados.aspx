<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Empleados.aspx.cs" Inherits="Empleados" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 187px;
        }
        .style3
        {
            width: 170px;
        }
        .style4
        {
            width: 134px;
        }
        .style5
        {
            font-size: x-large;
        }
        .style6
        {
            width: 61px;
        }
        .style7
        {
            width: 82px;
        }
        .style8
        {
            height: 31px;
        }
        .style9
        {
            width: 134px;
            height: 31px;
        }
        .style10
        {
            width: 187px;
            height: 31px;
        }
        .style11
        {
            width: 170px;
            height: 31px;
        }
        .style12
        {
            width: 61px;
            height: 31px;
        }
        .style13
        {
            width: 82px;
            height: 31px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td style="text-align: center; font-weight: 700; font-size: medium">
                <span class="style5">
                <br />
                Ingreso de Empleados</span><br />
                <table class="style1">
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style2">
                            &nbsp;</td>
                        <td class="style3">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td class="style6">
                            &nbsp;</td>
                        <td class="style7">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style2">
                            <asp:Label ID="labelID" runat="server" Text="ID"></asp:Label>
                        </td>
                        <td class="style3">
                            <asp:TextBox ID="txb_id" runat="server" Enabled="False" 
                             >0</asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td class="style6">
                            &nbsp;</td>
                        <td class="style7">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style2">
                            <asp:Label ID="Label1" runat="server" Text="Nombre del Empleado"></asp:Label>
                        </td>
                        <td class="style3">
                            <asp:TextBox ID="txb_nombreemp" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td class="style6">
                            &nbsp;</td>
                        <td class="style7">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style2">
                            <asp:Label ID="Label2" runat="server" Text="Primer Apellido"></asp:Label>
                        </td>
                        <td class="style3">
                            <asp:TextBox ID="txb_firstname" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td class="style6">
                            &nbsp;</td>
                        <td class="style7">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style2">
                            <asp:Label ID="Label3" runat="server" Text="Segundo Apellido"></asp:Label>
                        </td>
                        <td class="style3">
                            <asp:TextBox ID="txb_secondlastname" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td class="style6">
                            &nbsp;</td>
                        <td class="style7">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style8">
                            </td>
                        <td class="style8">
                            </td>
                        <td class="style9">
                            </td>
                        <td class="style10">
                            <asp:Label ID="Label4" runat="server" Text="Puesto"></asp:Label>
                        </td>
                        <td class="style11">
                            <asp:DropDownList ID="cmb_position" runat="server" Height="45px" Width="152px">
                            </asp:DropDownList>
                        </td>
                        <td class="style8">
                            </td>
                        <td class="style12">
                            </td>
                        <td class="style13">
                            </td>
                        <td class="style8">
                            </td>
                        <td class="style8">
                            </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style2">
                            &nbsp;</td>
                        <td class="style3">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td class="style6">
                            &nbsp;</td>
                        <td class="style7">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style2">
                            &nbsp;</td>
                        <td class="style3">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td class="style6">
                            <asp:Button ID="btn_save" runat="server" Text="Guardar" 
                                onclick="btn_save_Click" />
                        </td>
                        <td class="style7">
                            <asp:Button ID="Button1" runat="server" Text="Cancelar" />
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style2">
                            &nbsp;</td>
                        <td class="style3">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td class="style6">
                            &nbsp;</td>
                        <td class="style7">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style2">
                            &nbsp;</td>
                        <td class="style3">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td class="style6">
                            &nbsp;</td>
                        <td class="style7">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

