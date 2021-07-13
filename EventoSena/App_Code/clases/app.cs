using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de app
/// </summary>
public class app
{
    public app(String pRol,String paplicacion,String pDescripcion,String plogo,String purl)
    {
        rol = pRol;
        aplicacion = paplicacion;
        descripcionapp = pDescripcion;
        logo = plogo;
        url = purl;

        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }

    String rol;
    String aplicacion;
    String descripcionapp;
    String logo;
    String url;
    String activo;

    public string Rol
    {
        get
        {
            return rol;
        }

        set
        {
            rol = value;
        }
    }

    public string Aplicacion
    {
        get
        {
            return aplicacion;
        }

        set
        {
            aplicacion = value;
        }
    }

    public string Descripcionapp
    {
        get
        {
            return descripcionapp;
        }

        set
        {
            descripcionapp = value;
        }
    }

    public string Logo
    {
        get
        {
            return logo;
        }

        set
        {
            logo = value;
        }
    }

    public string Url
    {
        get
        {
            return url;
        }

        set
        {
            url = value;
        }
    }

    public string Activo
    {
        get
        {
            return activo;
        }

        set
        {
            activo = value;
        }
    }
}