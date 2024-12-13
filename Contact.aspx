<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="pdfExport.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <script>
        console.log("PRUEBA+")

        var text3 = (parm) => {
            console.log("impprimirXD 123 ");
            console.log(parm);

            const decodedContent = atob(parm);
            console.log(decodedContent);

            // Crear una nueva ventana emergente
            var printWindow = window.open('', '', 'height=600,width=800');

            // Inserta el contenido decodificado dentro del contenedor
            document.getElementById('contentContainer').innerHTML = decodedContent;
            window.print();

        }


        
    </script>
    <asp:Button ID="btnCallText2" runat="server" Text="Llamar a text3 desde servidor" OnClick="btnCallText2_Click" />
    <!-- Contenedor para mostrar el contenido HTML decodificado -->
<div id="contentContainer" style="border: 1px solid #ccc; padding: 20px; margin-top: 20px;">
    <!-- El contenido decodificado aparecerá aquí -->
</div>

</asp:Content>
