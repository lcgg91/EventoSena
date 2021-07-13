using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Security.Cryptography;
using System.Text;

/// <summary>
/// Descripción breve de sha384
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// Para permitir que se llame a este servicio web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente. 
 [System.Web.Script.Services.ScriptService]
public class sha384 : System.Web.Services.WebService {

    public sha384 () {

        //Elimine la marca de comentario de la línea siguiente si utiliza los componentes diseñados 
        //InitializeComponent(); 
    }

    [WebMethod]
    public string generarsha384(String message) {
        byte[] sourceBytes = Encoding.Default.GetBytes(message);
        byte[] hashBytes = null;
        hashBytes = SHA384Managed.Create().ComputeHash(sourceBytes);
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i< hashBytes.Length; i++) {
            sb.AppendFormat("{0:x2}", hashBytes[i]);
        }

        return sb.ToString();
    }
    
}
