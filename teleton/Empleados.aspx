<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Empleados.aspx.cs" Inherits="Empleados" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
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
            font-size: large;
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
        .style14
        {
            width: 106px;
        }
        .style15
        {
            height: 31px;
            width: 106px;
        }
        .style16
        {
            color: #FFFFFF;
            width: 9px;
        }
        .style17
        {
            width: 5px;
        }
        .style18
        {
            height: 31px;
            width: 5px;
        }
        .style19
        {
            height: 31px;
            width: 9px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
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
                        <td class="style14">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style2">
                            &nbsp;</td>
                        <td class="style3">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td class="style17">
                            &nbsp;</td>
                        <td class="style16">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style14">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style2">
                            <asp:Label ID="labelID" runat="server" Text="ID"></asp:Label>
                        </td>
                        <td class="style3">
                            <asp:TextBox ID="txb_id" runat="server" Enabled="False" Width="150px" 
                             >0</asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td class="style17">
                            &nbsp;</td>
                        <td class="style16">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style14">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style2">
                            <asp:Label ID="Label1" runat="server" Text="Nombre del Empleado"></asp:Label>
                        </td>
                        <td class="style3">
                            <asp:TextBox ID="txb_nombreemp" runat="server" Width="146px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ErrorMessage="**Ingrese Nombre del Empleado" ForeColor="Red" 
                                ControlToValidate="txb_nombreemp"></asp:RequiredFieldValidator>
                        </td>
                        <td class="style17">
                            &nbsp;</td>
                        <td class="style16">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style14">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style2">
                            <asp:Label ID="Label2" runat="server" Text="Primer Apellido"></asp:Label>
                        </td>
                        <td class="style3">
                            <asp:TextBox ID="txb_firstname" runat="server" Width="145px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ErrorMessage="**Ingrese Primer Apellido" ForeColor="Red" 
                                ControlToValidate="txb_firstname"></asp:RequiredFieldValidator>
                        </td>
                        <td class="style17">
                            &nbsp;</td>
                        <td class="style16">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style14">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style2">
                            <asp:Label ID="Label3" runat="server" Text="Segundo Apellido"></asp:Label>
                        </td>
                        <td class="style3">
                            <asp:TextBox ID="txb_secondlastname" runat="server" Width="143px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                ErrorMessage="**Ingrese Segundo Apellido" ForeColor="Red" 
                                ControlToValidate="txb_secondlastname"></asp:RequiredFieldValidator>
                        </td>
                        <td class="style17">
                            &nbsp;</td>
                        <td class="style16">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style8">
                            </td>
                        <td class="style15">
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
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                ErrorMessage="**Debe Escoger un Puesto" ForeColor="Red" 
                                ControlToValidate="cmb_position"></asp:RequiredFieldValidator>
                            </td>
                        <td class="style18">
                            </td>
                        <td class="style19">
                            </td>
                        <td class="style8">
                            </td>
                        <td class="style8">
                            </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style14">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style2">
                            &nbsp;</td>
                        <td class="style3">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td class="style17">
                            &nbsp;</td>
                        <td class="style16">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style14">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style2">
                            &nbsp;</td>
                        <td class="style3">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td class="style17">
                            <asp:Button ID="btn_save" runat="server" Text="Guardar" 
                                onclick="btn_save_Click" />
                        </td>
                        <td class="style16">
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
                        <td class="style14">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style2">
                            &nbsp;</td>
                        <td class="style3">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td class="style17">
                            &nbsp;</td>
                        <td class="style16">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style14">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style2">
                            &nbsp;</td>
                        <td class="style3">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td class="style17">
                            &nbsp;</td>
                        <td class="style16">
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

