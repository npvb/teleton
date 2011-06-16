<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Empleados.aspx.cs" Inherits="Empleados" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
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
            width: 600px;
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
             left: 600px;
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
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            Ingreso de Empleados<br /> &nbsp;
           <div id="navcenter">
           <asp:Label ID="Label1" runat="server" Text="ID"></asp:Label>
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:TextBox ID="txb_id" runat="server" Enabled="False" Width="191px">0</asp:TextBox>

               <br />

               <br />

           <asp:Label ID="Label2" runat="server" Text="Nombre"></asp:Label>
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:TextBox ID="txb_nombreemp" runat="server" Width="188px"></asp:TextBox>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="txb_nombreemp" ErrorMessage="**Debe Ingresar Nombre"></asp:RequiredFieldValidator>
               <br />
               <br />
            <asp:Label ID="Label3" runat="server" Text="Primer Apellido"></asp:Label>
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txb_firstname" runat="server" Width="187px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="txb_firstname" 
                            ErrorMessage="**Debe Ingresar Primer Apellido"></asp:RequiredFieldValidator>
               <br />
               <br />
            <asp:Label ID="Label5" runat="server" Text="Segundo Apellido"></asp:Label>
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txb_secondlastname" runat="server" Width="186px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="txb_secondlastname" 
                            ErrorMessage="**Debe Ingresar Segundo Apellido"></asp:RequiredFieldValidator>
               <br />
               <br />
            <asp:Label ID="Label4" runat="server" Text="Posicion"></asp:Label>
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="cmb_position" runat="server" Height="16px" Width="185px">
                        </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="cmb_position" ErrorMessage="**Debe Ingresar Posicion"></asp:RequiredFieldValidator>
            
           </div>

           <div id="navBotones">
           <asp:Button ID="btn_save1" runat="server" onclick="btn_save_Click" 
                            Text="Guardar" />
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btn_cancel2" runat="server" onclick="btn_cancel_Click" 
                            Text="Cancelar" />
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
           
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

