using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.DirectoryServices;
using System.Text;
using System.Collections;

/// <summary>
/// Descripción breve de LdapAuthentication
/// </summary>
public class LdapAuthentication
{
    private String _path;
    private String _filterAttribute;

    public LdapAuthentication(String path)
    {
        _path = path;
    }

    clsDbPrincipal obj = new clsDbPrincipal();
    clsFunciones objFuncion = new clsFunciones();
    public bool IsAuthenticated(String domain, String username, String pwd)
    {
        String sql = "select count(*) from usuario where usuario='" + username.ToString().Replace("'", "") + "' and clave='" + objFuncion.GetMD5(pwd) + "' and indHabilitado=1";
        if (obj.returnVector(sql)[0].Equals("0"))
        {
            return false;
        }
        else
        {
            return true;
        }

        
    }

    public String RecuperarClave(String usuario)
    {
        String sql = "select count(*) from usuario where usuario='"+usuario.Replace("'","")+ "' and indHabilitado=1";
        if (obj.returnVector(sql)[0].Equals("0"))
        {
            return "error";
        }
        else
        {
            DateTime thisDay = DateTime.Now;
            String token = objFuncion.GetMD5(thisDay.ToString("ddMMyyyyhhmmss"));
            sql = "update usuario set codigoRecuperacion='"+token+ "' where usuario='" + usuario.Replace("'", "") + "' ";
            obj.ejecutar(sql);
            return token;
        }
   }

    public bool cambiarClave(String token,String clave)
    {
        String sql = "select idusuario from usuario where codigoRecuperacion='"+token+"'";
        String usuario = obj.returnVector(sql)[0];
        if (usuario.Equals(""))
        {
            return false;
        }
        else
        {
            sql = "update usuario set clave='"+objFuncion.GetMD5(clave)+ "',codigoRecuperacion='' where idusuario="+usuario;
            return obj.ejecutar(sql);
        }
    }


    public String GetGroups()
    {
        DirectorySearcher search = new DirectorySearcher(_path);
        search.Filter = "(cn=" + _filterAttribute + ")";
        search.PropertiesToLoad.Add("memberOf");
        StringBuilder groupNames = new StringBuilder();

        try
        {
            SearchResult result = search.FindOne();

            int propertyCount = result.Properties["memberOf"].Count;

            String dn;
            int equalsIndex, commaIndex;

            for (int propertyCounter = 0; propertyCounter < propertyCount; propertyCounter++)
            {
                dn = (String)result.Properties["memberOf"][propertyCounter];

                equalsIndex = dn.IndexOf("=", 1);
                commaIndex = dn.IndexOf(",", 1);
                if (-1 == equalsIndex)
                {
                    return null;
                }

                groupNames.Append(dn.Substring((equalsIndex + 1), (commaIndex - equalsIndex) - 1));
                groupNames.Append("|");

            }
        }
        catch (Exception ex)
        {
            throw new Exception("Error obtaining group names. " + ex.Message);
        }
        return groupNames.ToString();
    }
}