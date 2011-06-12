<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Crear_Usuarios.aspx.cs" Inherits="Crear_Usuarios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 100%;
    }
    .style2
    {
        width: 139px;
    }
    .style3
    {
        width: 139px;
        font-size: small;
    }
    .style4
    {
        font-size: small;
    }
    .style6
    {
        width: 181px;
    }
    .style7
    {
        height: 178px;
    }
    .style8
    {
        width: 139px;
        font-size: small;
        height: 178px;
    }
    .style9
    {
        width: 125px;
        height: 178px;
    }
    .style10
    {
        width: 181px;
        height: 178px;
    }
    .style11
    {
        width: 171px;
    }
    .style14
    {
        width: 84px;
        font-size: small;
    }
    .style15
    {
        height: 178px;
        width: 84px;
    }
    .style16
    {
        width: 115px;
    }
    .style17
    {
        height: 178px;
        width: 115px;
    }
    .style18
    {
        height: 34px;
    }
    .style19
    {
        width: 139px;
        font-size: small;
        height: 34px;
    }
    .style20
    {
        width: 125px;
        height: 34px;
    }
    .style21
    {
        width: 181px;
        height: 34px;
    }
    .style23
    {
        width: 84px;
        height: 34px;
    }
    .style24
    {
        width: 115px;
        height: 34px;
    }
    .style26
    {
        height: 34px;
        width: 394px;
    }
    .style27
    {
        color: #FFFFFF;
        height: 178px;
        width: 394px;
    }
    .style29
    {
        width: 214px;
        font-size: small;
    }
    .style30
    {
        width: 214px;
    }
    .style31
    {
        width: 214px;
        height: 34px;
    }
    .style32
    {
        width: 214px;
        height: 178px;
    }
    .style33
    {
        width: 394px;
    }
        .style34
        {
            width: 125px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="style1">
    <tr>
        <td style="text-align: center; font-size: small; ">
            Ingreso de Usuarios
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                  <div class="line">
                       <!--<div ID="main">
                          <!-- /sidebar -->
                          
                          <table class="style1">
                              <tr>
                                  <td style="font-size: small">
                                      &nbsp;</td>
                                  <td>
                                      &nbsp;</td>
                                  <td class="style33">
                                      &nbsp;</td>
                                  <td class="style3">
                                      &nbsp;</td>
                                  <td class="style34">
                                      &nbsp;</td>
                                  <td class="style6">
                                      &nbsp;</td>
                                  <td class="style30">
                                      &nbsp;</td>
                                  <td class="style14">
                                      &nbsp;</td>
                                  <td class="style16">
                                      &nbsp;</td>
                                  <td>
                                      &nbsp;</td>
                              </tr>
                              <tr>
                                  <td>
                                      &nbsp;</td>
                                  <td>
                                      &nbsp;</td>
                                  <td class="style33">
                                      &nbsp;</td>
                                  <td class="style2">
                                      &nbsp;</td>
                                  <td class="style34">
                                      <asp:Label ID="Label2" runat="server" 
                                          style="font-size: small; text-align: center" Text="Empleado"></asp:Label>
                                  </td>
                                  <td class="style6">
                                      <asp:DropDownList ID="cmb_empleados" runat="server" Width="149px">
                                      </asp:DropDownList>
                                  </td>
                                  
                                
                                  
                                  <td class="style29">
                                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                          ControlToValidate="cmb_empleados" 
                                          ErrorMessage="**Debe Escoger Un Empleado"></asp:RequiredFieldValidator>
                                  </td>
                                  <td class="style16">
                                      &nbsp;</td>
                                  <td>
                                      &nbsp;</td>
                              </tr>
                              <tr>
                                  <td>
                                      &nbsp;</td>
                                  <td>
                                      &nbsp;</td>
                                  <td class="style33">
                                      &nbsp;</td>
                                  <td class="style3">
                                      &nbsp;</td>
                                  <td class="style34">
                                      <asp:Label ID="Label1" runat="server" CssClass="style4" Text="UserName"></asp:Label>
                                  </td>
                                  <td class="style6">
                                      <asp:TextBox ID="txt_username" runat="server" Width="149px"></asp:TextBox>
                                  </td>
                                  <td class="style30">
                                      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                          ErrorMessage="**Ingrese Username" 
                                          ControlToValidate="txt_username"></asp:RequiredFieldValidator>
                                  </td>
                                  <td class="style14">
                                      &nbsp;</td>
                                  <td class="style16">
                                      &nbsp;</td>
                                  <td>
                                      &nbsp;</td>
                              </tr>
                              <tr>
                                  <td>
                                      &nbsp;</td>
                                  <td>
                                      &nbsp;</td>
                                  <td class="style33">
                                      &nbsp;</td>
                                  <td class="style3">
                                      &nbsp;</td>
                                  <td class="style34">
                                      <asp:Label ID="Label3" runat="server" style="font-size: small" 
                                          Text="Contraseña"></asp:Label>
                                  </td>
                                  <td class="style6">
                                      <asp:TextBox ID="txt_password" runat="server" TextMode="Password" Width="150px"></asp:TextBox>
                                  </td>
                                  <td class="style30">
                                      <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                          ErrorMessage="**Ingrese Contraseña" 
                                          ControlToValidate="txt_password"></asp:RequiredFieldValidator>
                                  </td>
                                  <td class="style14">
                                      &nbsp;</td>
                                  <td class="style16">
                                      &nbsp;</td>
                                  <td>
                                      &nbsp;</td>
                              </tr>
                              <tr>
                                  <td>
                                      &nbsp;</td>
                                  <td>
                                      &nbsp;</td>
                                  <td class="style33">
                                      &nbsp;</td>
                                  <td class="style3">
                                      &nbsp;</td>
                                  <td class="style34">
                                      &nbsp;</td>
                                  <td class="style6">
                                      &nbsp;</td>
                                  <td class="style30">
                                      &nbsp;</td>
                                  <td class="style14">
                                      &nbsp;</td>
                                  <td class="style16">
                                      &nbsp;</td>
                                  <td>
                                      &nbsp;</td>
                              </tr>
                              <tr>
                                  <td class="style18">
                                  </td>
                                  <td class="style18">
                                  </td>
                                  <td class="style26">
                                  </td>
                                  <td class="style19">
                                      <asp:Label ID="Label4" runat="server" style="font-size: small" 
                                          Text="Roles de Usuario"></asp:Label>
                                  </td>
                                  <td class="style20">
                                  </td>
                                  <td class="style21">
                                  </td>
                                  <td class="style31">
                                  </td>
                                  <td class="style23">
                                  </td>
                                  <td class="style24">
                                  </td>
                                  <td class="style18">
                                  </td>
                              </tr>
                              <tr>
                                  <td class="style7">
                                  </td>
                                  <td class="style7">
                                  </td>
                                  <td class="style27">
                                  </td>
                                  <td class="style8">
                                  </td>
                                  <td class="style9">
                                      <asp:ListBox ID="lb_userrols" runat="server" Height="121px" Width="127px">
                                      </asp:ListBox>
                                  </td>
                                  <td class="style10">
                                      <table class="style1">
                                          <tr>
                                              <td class="style11">
                                                  <asp:Button ID="btn_leftuserrol" runat="server" onclick="btn_leftuserrol_Click" 
                                                      Text="&lt;" />
                                              </td>
                                              <td>
                                                  &nbsp;</td>
                                          </tr>
                                          <tr>
                                              <td class="style11">
                                                  <asp:Button ID="btn_rightuserrol" runat="server" 
                                                      onclick="btn_rightuserrol_Click" Text="&gt;" />
                                              </td>
                                              <td>
                                                  &nbsp;</td>
                                          </tr>
                                      </table>
                                  </td>
                                  <td class="style32">
                                      <asp:ListBox ID="lb_sourcerols" runat="server" Height="121px" Width="127px">
                                      </asp:ListBox>
                                  </td>
                                  <td class="style15">
                                  </td>
                                  <td class="style17">
                                  </td>
                                  <td class="style7">
                                  </td>
                              </tr>
                              <tr>
                                  <td>
                                      &nbsp;</td>
                                  <td>
                                      &nbsp;</td>
                                  <td class="style33">
                                      &nbsp;</td>
                                  <td class="style3">
                                      &nbsp;</td>
                                  <td class="style34">
                                      &nbsp;</td>
                                  <td class="style6">
                                      &nbsp;</td>
                                  <td class="style30">
                                      &nbsp;</td>
                                  <td class="style14">
                                      <asp:Button ID="btn_GuardarUsuario" runat="server" 
                                          onclick="btn_GuardarUsuario_Click" Text="Guardar" Width="76px" />
                                  </td>
                                  <td class="style16">
                                      <asp:Button ID="btn_Cancel" runat="server" onclick="btn_Cancel_Click" 
                                          Text="Cancelar" />
                                  </td>
                                  <td>
                                      &nbsp;</td>
                              </tr>
                              <tr>
                                  <td>
                                      &nbsp;</td>
                                  <td>
                                      &nbsp;</td>
                                  <td class="style33">
                                      &nbsp;</td>
                                  <td class="style3">
                                      &nbsp;</td>
                                  <td class="style34">
                                      &nbsp;</td>
                                  <td class="style6">
                                      &nbsp;</td>
                                  <td class="style30">
                                      &nbsp;</td>
                                  <td class="style14">
                                      &nbsp;</td>
                                  <td class="style16">
                                      &nbsp;</td>
                                  <td>
                                      &nbsp;</td>
                              </tr>
                              <tr>
                                  <td>
                                      &nbsp;</td>
                                  <td>
                                      &nbsp;</td>
                                  <td class="style33">
                                      &nbsp;</td>
                                  <td class="style3">
                                      &nbsp;</td>
                                  <td class="style34">
                                      &nbsp;</td>
                                  <td class="style6">
                                      &nbsp;</td>
                                  <td class="style30">
                                      &nbsp;</td>
                                  <td class="style14">
                                      &nbsp;</td>
                                  <td class="style16">
                                      &nbsp;</td>
                                  <td>
                                      &nbsp;</td>
                              </tr>
                          </table>
                      </div>
                      <div ID="content">
                          <!-- /main -->
                      </div>
                    </div>
                </ContentTemplate>
            </asp:UpdatePanel>
        </td>
    </tr>
</table>
</asp:Content>

