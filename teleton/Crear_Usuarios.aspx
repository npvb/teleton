<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Crear_Usuarios.aspx.cs" Inherits="Crear_Usuarios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <link href="Styles/Teleton.css" rel="stylesheet" type="text/css" /> 
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">           
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
    <div id="titulo">Ingreso de Usuarios</div>
    <div id = "navcenter">
                <fieldset>
                    <ul class = "list">
                        <li class="field">
                            <asp:Label ID="Label2" CssClass="label" runat="server" Text="Empleado"></asp:Label>
                            <asp:DropDownList ID="cmb_empleados" runat="server" 
                                TabIndex="1" CssClass="dropdownlist"></asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="cmb_empleados" 
                                ErrorMessage="**Debe Escoger Un Empleado"></asp:RequiredFieldValidator>
                        </li>

                        <li class="field">
                            <asp:Label ID="Label1" runat="server" CssClass="label" Text="UserName"></asp:Label>
                            <asp:TextBox ID="txt_username" runat="server" TabIndex="1" 
                                CssClass="txtbx_Empleado"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="**Ingrese Username" 
                              ControlToValidate="txt_username"></asp:RequiredFieldValidator>
                        </li>

                        <li class="field">
                            <asp:Label ID="Label4" runat="server" CssClass="label" Text="Contraseña"></asp:Label>
                            <asp:TextBox ID="txt_password" runat="server" Enable="false" TabIndex="1" 
                                CssClass="txtbx_Empleado" TextMode="Password" ></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="**Ingrese Contraseña" 
                                ControlToValidate="txt_password"></asp:RequiredFieldValidator>
                        </li>
                        </ul>
                        </fieldset>
                        </div>
                       
                        <div id="Div1">Roles de Usuario</div>
                         <br />
                         <br />
                         <br />
                         <br />
                         <br />
                         <br />
                         <br />
                         <br />
                         <br />
                                    <div id="navBotones">
           <asp:Button ID="btn_GuardarUsuario" runat="server" CssClass="boton" onclick="btn_GuardarUsuario_Click" 
                            Text="Guardar" />
              
            <asp:Button ID="btn_Cancel" runat="server" CssClass="boton" onclick="btn_Cancel_Click" 
                            Text="Cancelar" />

</div>
          
        
           
                         <br />
                         <br />
                         <br />
                         <br />
                         <br />
                         <div id="menuizq">
                           <asp:ListBox ID="lb_userrols" runat="server" Height="121px" Width="127px"></asp:ListBox>
                         </div>
                         <div id="menubotones">
                                <asp:Button ID="btn_leftuserrol" runat="server" onclick="btn_leftuserrol_Click" Text="&lt;" />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <asp:Button ID="btn_rightuserrol" runat="server" onclick="btn_rightuserrol_Click" Text="&gt;" />
                         </div>

                         <div id="menuder">
                         <asp:ListBox ID="lb_sourcerols" runat="server" Height="121px" Width="127px"></asp:ListBox>
                         </div>
                                    
          
    </ContentTemplate>
        </asp:UpdatePanel>     
</asp:Content>

