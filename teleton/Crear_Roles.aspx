<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Crear_Roles.aspx.cs" Inherits="Crear_Roles" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">   
    <link href="Styles/Teleton.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div id="content">
        <div id = "titulo">Crear Rol</div>
        <div id = "navcenter">
        <fieldset>
            <ul class = "list">
                  
                   <li class="field">
                    <asp:Label ID="Label1" cssclass="label" runat="server" Text="Descripcion:"></asp:Label>
                    <asp:TextBox ID="descripcion_TB" CssClass="tb_crearRol" runat="server" TabIndex="2" Width="240px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ErrorMessage="Descripcion Requerida" ControlToValidate="descripcion_TB"></asp:RequiredFieldValidator> 
                </li>                
              
        <li class="field">
                 <asp:Label ID="Label2" cssclass="label" runat="server" Text="Permisos:"></asp:Label>
                <asp:CheckBoxList ID="permisos_CBList" runat="server" TabIndex="3">
                        </asp:CheckBoxList>
           </li>
       

         
       </ul>   
      </fieldset>
     </div> 
        <div id="navBotones">
            <asp:Button ID="acceptButton" cssclass="boton" runat="server" Text="Aceptar" 
                        onclick="acceptButton_Click" />
        </div>
    </div>
</asp:Content>

