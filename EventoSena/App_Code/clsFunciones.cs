using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Security.Cryptography;
using System.Text;

/// <summary>
/// Descripción breve de clsFunciones
/// </summary>
public class clsFunciones
{
    public clsFunciones()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }
    public static String app = "Visitas Vendedores";

    public String GetMD5(String str)
    {
        MD5 md5 = MD5CryptoServiceProvider.Create();
        ASCIIEncoding encoding = new ASCIIEncoding();
        byte[] stream = null;
        StringBuilder sb = new StringBuilder();
        stream = md5.ComputeHash(encoding.GetBytes(str));
        for (int i = 0; i < stream.Length; i++) sb.AppendFormat("{0:x2}", stream[i]);
        return sb.ToString();
    }
}