<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador/MasterPage.master" AutoEventWireup="true" CodeFile="Stand.aspx.cs" Inherits="Administrador_Stand" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContenTitulo" Runat="Server">
    <h5>Stand</h5>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContenAccionesTitulo" Runat="Server">
    <a class="btn btn-primary" href="AgregarStand.aspx">Agregar Stand</a>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContenContenido" Runat="Server">
    <table class="table table-bordered table-striped display responsive nowrap w-100 table-hover" id="tableStand">
        <thead>
            <tr>
                <th>ID</th>
                <th>Nombre Stand</th>
                <th>Evento</th>
                <th>Localización</th>
                <th>Latitud</th>
                <th>Longitud</th>
            </tr>
        </thead>
        <tr>
            <td>1</td>
            <td class="trClick" aria-valuetext="1">ECI</td>
            <td class="trClick" aria-valuetext="1">Abierto</td>
            <td class="trClick" aria-valuetext="1">Buenos Aires</td>
            <td class="trClick" aria-valuetext="1">50</td>
            <td class="trClick" aria-valuetext="1">200</td>
        </tr>
        <tr>
            <td>2</td>
            <td class="trClick" aria-valuetext="2">ECI</td>
            <td class="trClick" aria-valuetext="2">Abierto</td>
            <td class="trClick" aria-valuetext="2">Buenos Aires</td>
            <td class="trClick" aria-valuetext="2">50</td>
            <td class="trClick" aria-valuetext="2">200</td>
        </tr>
        <tr>
            <td>3</td>
            <td class="trClick" aria-valuetext="3">ECI</td>
            <td class="trClick" aria-valuetext="3">Abierto</td>
            <td class="trClick" aria-valuetext="3">Buenos Aires</td>
            <td class="trClick" aria-valuetext="3">50</td>
            <td class="trClick" aria-valuetext="3">200</td>
        </tr>
    </table>   


    <script>
        document.addEventListener("DOMContentLoaded", function () {
            $('#tableStand').DataTable();
        });



        document.addEventListener("DOMContentLoaded", function () {
            $(".trClick").css("cursor", "pointer")
            $('.trClick').click((e) => {
                console.log(e.currentTarget.attributes[1].nodeValue)
                location.href="DetallesStand.aspx"
            });
        });
    </script>
</asp:Content>

