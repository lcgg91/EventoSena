<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador/MasterPage.master" AutoEventWireup="true" CodeFile="Ferias.aspx.cs" Inherits="Administrador_Ferias" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContenTitulo" Runat="Server">
    Feria
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContenAccionesTitulo" Runat="Server">
    <a class="btn btn-primary" href="AgregarFeria.aspx">Agregar Feria</a>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContenContenido" Runat="Server">
     <table class="table table-bordered table-striped display responsive nowrap w-100 table-hover" id="tableFeria">
        <thead>
            <tr>
                <th>ID</th>
                <th>Nombre Feria</th>
                <th>Fecha Inicio</th>
                <th>Fecha Fin</th>
            </tr>
        </thead>
        <tr>
            <td>1</td>
            <td class="trClick" aria-valuetext="1">ECI</td>
            <td class="trClick" aria-valuetext="1">11/07/2021</td>
            <td class="trClick" aria-valuetext="1">15/07/2021</td>
        </tr>
        <tr>
            <td>2</td>
            <td class="trClick" aria-valuetext="2">ECI</td>
            <td class="trClick" aria-valuetext="2">11/07/2021</td>
            <td class="trClick" aria-valuetext="2">15/07/2021</td>
        </tr>
        <tr>
            <td>3</td>
            <td class="trClick" aria-valuetext="3">ECI</td>
            <td class="trClick" aria-valuetext="3">11/07/2021</td>
            <td class="trClick" aria-valuetext="3">15/07/2021</td>
        </tr>
    </table>   

    
    <script>
        document.addEventListener("DOMContentLoaded", function () {
            $('#tableFeria').DataTable();
        });



        document.addEventListener("DOMContentLoaded", function () {
            $(".trClick").css("cursor", "pointer")
            $('.trClick').click((e) => {
                console.log(e.currentTarget.attributes[1].nodeValue)
                location.href="DetallesFeria.aspx"
            });
        });
    </script>
</asp:Content>

