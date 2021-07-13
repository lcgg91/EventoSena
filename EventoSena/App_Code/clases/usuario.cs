using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de usuario
/// </summary>
public class usuario
{
    public usuario(String pId,String pUsuario,String pNombre,String pDocumento)
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
        IdUsuario = pId;
        Usuario = pUsuario;
        Nombre = pNombre;
        Documento = pDocumento;
       
    }

  String  idUsuario;
    String Usuario;
 String Nombre;
    String Documento;
    String imagen;

    public string IdUsuario
    {
        get
        {
            return idUsuario;
        }

        set
        {
            idUsuario = value;
        }
    }

    public string Usuario1
    {
        get
        {
            return Usuario;
        }

        set
        {
            Usuario = value;
        }
    }

    public string Nombre1
    {
        get
        {
            return Nombre;
        }

        set
        {
            Nombre = value;
        }
    }

    public string Documento1
    {
        get
        {
            return Documento;
        }

        set
        {
            Documento = value;
        }
    }

    public string Imagen
    {
        get
        {
            return imagen;
        }

        set
        {
            imagen = value;
        }
    }
}