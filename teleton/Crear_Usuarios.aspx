<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Crear_Usuarios.aspx.cs" Inherits="Crear_Usuarios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
    .style7
    {
        height: 178px;
    }
    #h31
    {
        text-align:center;
        font-size: small;
    }

    #h32
    {
        font-size: small;
        text-align: left;    
    }
    #navcenter
    {
        position: absolute;
        text-align:left;
        width: 800px;
        top: 190px;
        left: 30px;
        padding: 1px;
        z-index: 0;
    }    
    
    #menuizq
    {
        position: absolute;
        text-align:left;
        width: 127px;
        top: 370px;
        left: 30px;
        padding: 1px;
        z-index: 0;
    }
    
    #menuder
    {
        position: absolute;
        text-align: right;
        width: 127px;
        top: 370px;
        left: 320px;
        padding:1px;
        z-index:0;
    }
    
    #menubotones
    {
        position: absolute;
        text-align: center;
        width: 127px;
        top: 370px;
        left: 180px;
        padding:1px;
        z-index:0;
    }
    
    #navBotones
    {
        position: absolute;
        width: 250px;
        top: 520px;
        left: 250px;
        padding: 1px;
        z-index: 0;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div id="h31">
        Ingreso de Usuarios
    </div>   
    <div id="navcenter">
         <asp:Label ID="Label2" runat="server" style="font-size: small; text-align: center" Text="Empleado"></asp:Label>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:DropDownList ID="cmb_empleados" runat="server" Width="149px"></asp:DropDownList>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="cmb_empleados" 
              ErrorMessage="**Debe Escoger Un Empleado"></asp:RequiredFieldValidator>
         <br />
         <br />
         <asp:Label ID="Label1" runat="server" CssClass="style4" Text="UserName"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:TextBox ID="txt_username" runat="server" Width="149px"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="**Ingrese Username" 
              ControlToValidate="txt_username"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" style="font-size: small" Text="Contraseña"></asp:Label>
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txt_password" runat="server" TextMode="Password" Width="150px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="**Ingrese Contraseña" 
            ControlToValidate="txt_password"></asp:RequiredFieldValidator>
             
        <br />
    </div>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
            <div id="h32">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            Roles de Usuario
            </div>
        <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
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
    
    <div id="navBotones">
        <asp:Button ID="btn_GuardarUsuario" runat="server" onclick="btn_GuardarUsuario_Click" Text="Guardar" Width="76px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btn_Cancel" runat="server" onclick="btn_Cancel_Click" Text="Cancelar" />
    </div>
   
</asp:Content>

