<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Empleados.aspx.cs" Inherits="Empleados" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style8
        {
            width: 958px;
        }
        .style19
        {
            width: 486px;
        }
        .style30
        {
            width: 932px;
        }
        .style43
        {
            width: 274px;
        }
        .style46
        {
            width: 1619px;
            height: 3px;
        }
        .style47
        {
            height: 3px;
        }
        .style48
        {
            width: 760px;
            height: 3px;
        }
        .style49
        {
            width: 271px;
            height: 3px;
        }
        .style50
        {
            width: 932px;
            height: 3px;
        }
        .style51
        {
            width: 141px;
            height: 3px;
        }
        .style52
        {
            width: 274px;
            height: 3px;
        }
        .style54
        {
            width: 760px;
        }
        .style58
        {
            width: 1619px;
            height: 26px;
        }
        .style59
        {
            height: 26px;
        }
        .style60
        {
            width: 760px;
            height: 26px;
        }
        .style61
        {
            width: 271px;
            height: 26px;
        }
        .style62
        {
            width: 932px;
            height: 26px;
        }
        .style63
        {
            width: 141px;
            height: 26px;
        }
        .style64
        {
            width: 274px;
            height: 26px;
        }
        .style68
        {
            width: 1619px;
        }
        .style70
        {
            width: 271px;
        }
        .style71
        {
            width: 141px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            Ingreso de Empleados<br /> &nbsp;
            <table class="style8">
                <tr>
                    <td class="style68">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td class="style54">
                        <asp:Label ID="Label1" runat="server" Text="ID"></asp:Label>
                    </td>
                    <td class="style70">
                        <asp:TextBox ID="txb_id" runat="server" Enabled="False" Width="191px">0</asp:TextBox>
                    </td>
                    <td class="style19">
                        &nbsp;</td>
                    <td class="style71">
                        &nbsp;</td>
                    <td class="style43">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style68">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td class="style54">
                        <asp:Label ID="Label2" runat="server" Text="Nombre"></asp:Label>
                    </td>
                    <td class="style70">
                        <asp:TextBox ID="txb_nombreemp" runat="server" Width="188px"></asp:TextBox>
                    </td>
                    <td class="style19">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="txb_nombreemp" ErrorMessage="**Debe Ingresar Nombre"></asp:RequiredFieldValidator>
                    </td>
                    <td class="style71">
                        &nbsp;</td>
                    <td class="style43">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style68">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td class="style54">
                        <asp:Label ID="Label3" runat="server" Text="Primer Apellido"></asp:Label>
                    </td>
                    <td class="style70">
                        <asp:TextBox ID="txb_firstname" runat="server" Width="187px"></asp:TextBox>
                    </td>
                    <td class="style19">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="txb_firstname" 
                            ErrorMessage="**Debe Ingresar Primer Apellido"></asp:RequiredFieldValidator>
                    </td>
                    <td class="style71">
                        &nbsp;</td>
                    <td class="style43">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style68">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td class="style54">
                        Segundo Apellido</td>
                    <td class="style70">
                        <asp:TextBox ID="txb_secondlastname" runat="server" Width="186px"></asp:TextBox>
                    </td>
                    <td class="style19">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="txb_secondlastname" 
                            ErrorMessage="**Debe Ingresar Segundo Apellido"></asp:RequiredFieldValidator>
                    </td>
                    <td class="style71">
                        &nbsp;</td>
                    <td class="style43">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style46">
                    </td>
                    <td class="style47">
                    </td>
                    <td class="style48">
                        <asp:Label ID="Label4" runat="server" Text="Posicion"></asp:Label>
                    </td>
                    <td class="style49">
                        <asp:DropDownList ID="cmb_position" runat="server" Height="16px" Width="185px">
                        </asp:DropDownList>
                    </td>
                    <td class="style50">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="cmb_position" ErrorMessage="**Debe Ingresar Posicion"></asp:RequiredFieldValidator>
                    </td>
                    <td class="style51">
                    </td>
                    <td class="style52">
                    </td>
                </tr>
                <tr>
                    <td class="style58">
                        </td>
                    <td class="style59">
                        </td>
                    <td class="style60">
                        </td>
                    <td class="style61">
                        </td>
                    <td class="style62">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btn_save1" runat="server" onclick="btn_save_Click" 
                            Text="Guardar" />
                        &nbsp;&nbsp;
                    </td>
                    <td class="style63">
                        &nbsp;<asp:Button ID="btn_cancel2" runat="server" onclick="btn_cancel_Click" 
                            Text="Cancelar" />
                    </td>
                    <td class="style64">
                        </td>
                </tr>
                <tr>
                    <td class="style68">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td class="style54">
                        &nbsp;</td>
                    <td class="style70">
                        &nbsp;</td>
                    <td class="style19">
                        &nbsp;</td>
                    <td class="style71">
                        &nbsp;</td>
                    <td class="style43">
                        &nbsp;</td>
                </tr>
            </table>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

