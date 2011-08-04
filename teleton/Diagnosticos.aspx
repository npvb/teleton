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

           

            <asp:Label ID="Label2" CssClass="labelD" runat="server" Text=" Diagnostico: "></asp:Label>
            <asp:TextBox ID="diagnostico_txt" CssClass="txtbx_Diagnostico" runat="server"></asp:TextBox>

           

            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="diagnostico_txt" ErrorMessage="Ingrese el Diagnostico" 
                ForeColor="Red"></asp:RequiredFieldValidator>

           

            <asp:Button ID="Button1" CssClass= "boton" runat="server" Text="Guardar" 
                onclick="Button1_Click" />

           

            <asp:GridView ID="GridView1" CssClass="Grid" runat="server" 
                AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="EntityDataSource1" 
                Width="322px">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" 
                        SortExpression="id" />
                    <asp:BoundField DataField="diagnostico1" HeaderText="diagnostico1" 
                        SortExpression="diagnostico1" />
                </Columns>
            </asp:GridView>

            <asp:EntityDataSource ID="EntityDataSource1" runat="server" 
                ConnectionString="name=teletonEntities" DefaultContainerName="teletonEntities" 
                EnableDelete="True" EnableFlattening="False" EnableInsert="True" 
                EnableUpdate="True" EntitySetName="diagnosticos">
            </asp:EntityDataSource>

         </fieldset>
    </div>

</div>
</asp:Content>

