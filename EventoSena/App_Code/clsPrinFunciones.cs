using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de clsPrinFunciones
/// </summary>
public class clsPrinFunciones
{
    public clsPrinFunciones()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }

    public static String adPath = "LDAP://192.168.0.1";

    public static String getRol(List<app> listApp, String aplicacion)
    {
        String result = "";
       
        foreach (app objApp in listApp)
        {
            if (objApp.Aplicacion.Equals(aplicacion))
            {
                result = objApp.Rol;
                break;
            }
        }
        return result;

    }
}