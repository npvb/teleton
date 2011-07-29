<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Diagnosticos.aspx.cs" Inherits="Diagnosticos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <link href="Styles/Teleton.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
   
<div id = "content">
    <div id="titulo">
        <h1>Mantenimiento de Patologias</h1>
    </div> 
    <div id = "navcenter">
        <fieldset>

           

            <asp:Label ID="Label1" CssClass="labelD" runat="server" Text="Id: "></asp:Label>
            <asp:TextBox ID="id_txt" TabIndex="1" CssClass="txtbx_labelD" runat="server"></asp:TextBox>

           

            <asp:Label ID="Label2" CssClass="labelD" runat="server" Text=" Diagnostico: "></asp:Label>
            <asp:TextBox ID="diagnostico_txt" CssClass="txtbx_Diagnostico" runat="server"></asp:TextBox>

           

            <asp:Button ID="Button1" CssClass= "boton" runat="server" Text="Guardar" />

           

            <asp:GridView ID="GridView1" CssClass="Grid" runat="server">
            </asp:GridView>

         </fieldset>
    </div>

</div>
</asp:Content>

