using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de Stand
/// </summary>
public class clsStand
{
    public clsStand()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }

    clsDbPrincipal obj = new clsDbPrincipal();


    public DataTable GetStands()
    {
        string query = "select * from Stand";
        return obj.consultar(query);
    }

    public int AddStand(string Nombre, string InformacionEmpresa, string DireccionEmpresa, int IndEventoCerrado, string imagenEmpresa, string latitud, string longitud, string nombreContacto, string cargoContacto, string correoContacto, string celularContacto)
    {
        string query = "insert into Stand " +
            "(Nombre, InformacionEmpresa, DireccionEmpresa, IndEventoCerrado, imagenEmpresa, Latitud, Longitud, nombreContacto, cargoContacto, correoContacto, celularContacto)" +
            " values (" +
             "'" + Nombre + "'," +
             "'" + InformacionEmpresa + "'," +
             "'" + DireccionEmpresa + "'," +
             IndEventoCerrado + "," +
             "'" + imagenEmpresa + "'," +
             "'" + latitud + "'," +
             "'" + longitud + "'," +
             "'" + nombreContacto + "'," +
             "'" + cargoContacto + "'," +
             "'" + correoContacto + "'," +
             "'" + celularContacto + "'" +
            ") Select SCOPE_IDENTITY() as id";
        return Convert.ToInt32(obj.consultar(query).Rows[0]["id"].ToString());
    }

    public bool EditarStand(string Nombre, string InformacionEmpresa, string DireccionEmpresa, int IndEventoCerrado, string imagenEmpresa, string latitud, string longitud, string nombreContacto, string cargoContacto, string correoContacto, string celularContacto, int idStand)
    {
        string query = "";
        if (imagenEmpresa == "")
        {
            query = "update Stand set " +
                " Nombre = '" + Nombre + "',"
                + " InformacionEmpresa = '" + InformacionEmpresa + "',"
                + " DireccionEmpresa = '" + DireccionEmpresa + "',"
                + " IndEventoCerrado = " + IndEventoCerrado + ","
                + " Latitud = '" + latitud + "',"
                + " Longitud = '" + longitud + "',"
                + " nombreContacto = '" + nombreContacto + "',"
                + " cargoContacto = '" + cargoContacto + "',"
                + " correoContacto = '" + correoContacto + "',"
                + " celularContacto = '" + celularContacto + "' " +
                " where idStand = " + idStand;

        }
        else
        {
            query = "update Stand set " +
                " Nombre = '" + Nombre + "',"
                + " InformacionEmpresa = '" + InformacionEmpresa + "',"
                + " DireccionEmpresa = '" + DireccionEmpresa + "',"
                + " IndEventoCerrado = " + IndEventoCerrado + ","
                + " imagenEmpresa = '" + imagenEmpresa + "',"
                + " Latitud = '" + latitud + "',"
                + " Longitud = '" + longitud + "',"
                + " nombreContacto = '" + nombreContacto + "',"
                + " cargoContacto = '" + cargoContacto + "',"
                + " correoContacto = '" + correoContacto + "',"
                + " celularContacto = '" + celularContacto + "' " +
                " where idStand = " + idStand;
        }
        return obj.ejecutar(query);
    }
    public bool AddRedSocial(int idStand, int idRedSocial, string direccionRed)
    {
        string query = "insert into RedSocialStand " +
            "(idStand, idRedSocial, direccionRed) " +
            "values (" +
            idStand + "," +
            idRedSocial + "," +
            "'" + direccionRed + "'" +
            ")";
        return obj.ejecutar(query);
    }

    public bool EliminarRedSocial(int idRedSocialStand)
    {
        string query = "delete from RedSocialStand where idRedesSocialesStand = " + idRedSocialStand;
        return obj.ejecutar(query);
    }

    public DataTable GetRedSocial()
    {
        string query = "select * from redSocial";
        return obj.consultar(query);
    }

    public DataTable GetRedSocialStand(int idStand)
    {
        string query = "select rss.direccionRed, rs.RedSocial, rs.iconoRed , rss.idRedesSocialesStand from RedSocialStand as rss inner join redSocial rs on rs.idRedSocial = rss.idRedSocial  where rss.idStand = " + idStand;
        return obj.consultar(query);
    }

    public bool AddProducto(int idCategoriaStand, string NombreProducto, string ImagenProducto, string DescripcionProducto, int PrecioProducto, int idStand)
    {
        string query = "insert into ProductoStand " +
            "(idCategoriaStand, NombreProducto, ImagenProducto, DescripcionProducto, PrecioProducto, idStand) " +
            "values (" +
            idCategoriaStand + "," +
            "'" + NombreProducto + "'," +
            "'" + ImagenProducto + "'," +
            "'" + DescripcionProducto + "'," +
            PrecioProducto + "," +
            idStand + ")";
        return obj.ejecutar(query);
    }

    public DataTable GetProductos(int idStand)
    {
        string query = "select ps.*, cs.Categoria from ProductoStand ps inner join categoriaStand cs on ps.idCategoriaStand = cs.idCategoriaStand where idStand =" + idStand;
        return obj.consultar(query);
    }

    public DataTable GetCategorias()
    {
        string query = "select * from categoriaStand";
        return obj.consultar(query);
    }

}