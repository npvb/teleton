<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Eliminar Empleados.aspx.cs" Inherits="Eliminar_Empleados" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
                
        #navcenter
        {
            position: absolute;
            text-align:left;
            width: 800px;
            top: 190px;
            left: 200px;
            padding: 1px;
            z-index: 0;
        }
        #navboton
        {
            position: absolute;
            text-align:left;
            width: 70px;
            top: 220px;
            left: 420px;
            padding: 1px;
            z-index: 0;
        }            
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
        Eliminar Empleados</p>
    <br />
    <br />
    <br />
    <br />
        <div id="navcenter">
        <asp:Label ID="Label1" runat="server" Text="Escoga Empleado"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="cmb_empleados" runat="server" Height="16px" Width="173px">
                </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="cmb_empleados" ErrorMessage="**Debe escoger un empleado"></asp:RequiredFieldValidator>
        </div>
        <div id="navboton">
        <asp:Button ID="btn_eliminar" runat="server" onclick="btn_eliminar_Click" 
                    Text="Eliminar" />
        </div>
   
    
</asp:Content>

