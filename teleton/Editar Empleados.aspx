<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Editar Empleados.aspx.cs" Inherits="Editar_Empleados" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style29
        {
            color: #000000;
        }
        
        body
        {
            margin: 40px;
            padding: 0;
            font-size: 0.8em;
            font-family: Verdana, Arial, Helvetica, sans-serif;
        }

        p
        {
            font-family: Verdana, Arial, Helvetica, sans-serif;
            line-height: 1.1em;
            text-align:left;
            margin:20px 0px;
            padding: 0;
        }  
      
         #navcenter
         {
            position: absolute;
            width: 800px;
            text-align:left;
            top: 250px;
            left: 250px;
            padding: 1px;
            z-index: 0;
         }
         
         #navBotones
         {
             position: absolute;
             width: 200px;
             top: 440px;
             left: 500px;
             padding: 1px;
             z-index: 0;
         }
         
         #h31
        {
            text-align:center;
            font-size: small;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<div id="#h31">
Editar Empleados
</div>

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
        <body>
        <div id="navcenter">
         <asp:Label ID="Label1" runat="server" Text="Escoga Usuario:"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="cmb_usuarios" runat="server" Height="16px" Width="185px">
                        </asp:DropDownList>  
            <br />
         <br />
         <asp:Label ID="Label2" runat="server" Text="Primer Nombre:"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txt_username" runat="server" Width="183px"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ErrorMessage="**Ingrese Primer Nombre" ControlToValidate="txt_username" 
                            CssClass="style29"></asp:RequiredFieldValidator>
            <br />
            <br />
             <asp:Label ID="Label5" runat="server" Text="Primer Apellido:"></asp:Label>
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txt_lastname" runat="server" Width="181px"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                            ErrorMessage="**Ingrese Primer Apellido" ControlToValidate="txt_lastname" 
                            CssClass="style29"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Segundo Apellido:"></asp:Label>
            &nbsp;&nbsp;&nbsp;<asp:TextBox ID="txt_secondlastname" runat="server" Width="182px" Height="20px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                            ErrorMessage="**Ingrese Segundo  Apellido" 
                            ControlToValidate="txt_secondlastname" CssClass="style29"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Puesto:"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="cmb_puesto" runat="server" Height="16px" Width="181px"></asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                            ErrorMessage="**Debe Escoger un Puesto " ControlToValidate="cmb_puesto" 
                            CssClass="style29"></asp:RequiredFieldValidator>
        </div>
        
        <div id="navBotones">
        <asp:Button ID="Button1" runat="server" Text="Guardar" onclick="btnGuardar_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Cancelar" onclick="btnCancelar_Click" />
        </div>
        </body>
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

        </ContentTemplate>
    
    </asp:UpdatePanel>
   
</asp:Content>

