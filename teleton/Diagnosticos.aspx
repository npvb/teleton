<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Diagnosticos.aspx.cs" Inherits="Diagnosticos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <link href="Styles/Teleton.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
   
<div id = "content3">
    <div id="titulo">
        <h1>Mantenimiento de Patologias</h1>
    </div> 
    <div id = "navcenter">
        <fieldset>
                  

            <asp:Label ID="Label2" CssClass="labelD" runat="server" Text=" Patologia: "></asp:Label>
            <asp:TextBox ID="diagnostico_txt" CssClass="txtbx_Diagnostico" runat="server">
                </asp:TextBox>

           

            <asp:Button ID="Button1" CssClass= "boton" runat="server" Text="Guardar" 
                onclick="Button1_Click" />

           

            <asp:GridView ID="GridView1" CssClass="Grid" runat="server" 
                AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="EntityDataSource1" 
                Width="322px">
                <Columns>                   
                    <asp:CommandField ButtonType="Image" 
                        CancelImageUrl="~/images/button_cancel-32.png" CancelText="" 
                        DeleteImageUrl="~/images/calendar_icon.jpg" DeleteText="" 
                        EditImageUrl="~/images/Edit-32.png" EditText="" ShowEditButton="True" 
                        UpdateImageUrl="~/images/Refresh-32.png" UpdateText="" />
                    <asp:CommandField ButtonType="Image" DeleteImageUrl="~/images/delete-32.png" 
                        DeleteText="" EditImageUrl="~/images/Edit-32.png" EditText="" 
                        ShowDeleteButton="True" />
                    <asp:BoundField DataField="id" HeaderText="Id" ReadOnly="True" 
                        SortExpression="id" />
                    <asp:BoundField DataField="diagnostico1" HeaderText="Nom. Patologia" 
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

