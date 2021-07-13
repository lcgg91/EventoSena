using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de clsFerias
/// </summary>
public class clsFerias
{
    public clsFerias()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }

    clsDbPrincipal obj = new clsDbPrincipal();

    string schema = "eventos";

    public DataTable GetFerias()
    {
        string query = "select * from " + schema + ".Feria";
        return obj.consultar(query);
    }

    //public bool AddFeria()
    //{
    //    string query = "insert into " + schema + ".Feria" +
    //        " (NombreFeria,FechaInicio,FechaFin,imagenFeria,descripcionFeria,indHabilitado,idPlantilla)";
    //}

}