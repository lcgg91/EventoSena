using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de clsConfiguracion
/// </summary>
public class clsConfiguracion
{
    public clsConfiguracion()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }

    clsDbPrincipal obj = new clsDbPrincipal();
    public bool setConcepto(String idsegmento,String concepto,String tipo,String puntos)
    {
        String sql = "insert into Concepto(idsegmento,concepto,tipoEvento,valor)values(" +
            "'"+idsegmento+"'," +
             "'"+concepto+"'," +
             "'"+tipo+"'," +
             "'"+puntos+"'" +
            ")";
        return obj.ejecutar(sql);
    }

    /// <summary>
    /// ////Informacion de los Empleados
    /// </summary>
    /// <returns></returns>
    public String getListadoEmpleados()
    {
        String sql = "select * from vwListadoEmpleados";
        String Result = "";
        String[,] resul = obj.RetornarMatriz(sql);
        for (int i = 0; i < resul.GetLength(0); i++)
        {
            int n = resul.GetLength(1);
            Result += "<tr  onclick=\"window.location.href='gestionarEmpleado.aspx?documento=" + resul[i, 0] + "'\">";
            for (int j = 1; j < n; j++)
            {
                Result += "<td>" + resul[i, j] + "</td>";
            }
            Result += "</tr>";
        }
        return Result;
    }


    public bool setEmpleado(String Identificacion,String Nombre,String correo,String Celular,String Cargo,String segmento,String Area,String Division,String Ubicacion)
    {
        String sql = "insert into empleado(Documento,Nombre,Correo,NumeroTelefonico,idArea,IdCargo,idDivision,IdSegmento,idUbicacion)values(" +
            "'"+Identificacion+"'," +
            "'"+Nombre+"'," +
            "'"+correo+"'," +
            "'"+Celular+"'," +
            "'"+Area+"'," +
            "'"+Cargo+"'," +
            "'"+Division+"'," +
            "'"+segmento+"'," +
            "'"+Ubicacion+"'" +
            ")";

        return obj.ejecutar(sql);
    }

    public String[]getInformacionEmpleado(String empleado)
    {
        String sql = "select documento " +
            ",nombre" +
            ",correo" +
            ",NumeroTelefonico" +
            ",idArea" +
            ",idCargo" +
            ",idDivision" +
            ",idSegmento,idUbicacion  from empleado where idempleado=" + empleado;
        return obj.returnVector(sql);
    }

    public bool updateEmpleado(String documento, String nombre, String correo, String NumeroTelefonico, String idArea
        , String idCargo, String idDivision, String idSegmento, String idUbicacion,String empleado)
    {
        String sql = "update empleado set documento='"+documento+"' " +
            ",nombre='" + nombre + "'" +
            ",correo='" + correo + "'" +
            ",NumeroTelefonico='" + NumeroTelefonico + "'" +
            ",idArea='" + idArea + "'" +
            ",idCargo='" + idCargo + "'" +
            ",idDivision='" + idDivision + "'" +
            ",idSegmento='" + idSegmento + "'" +
            ",idUbicacion='" + idUbicacion + "' from empleado where idempleado=" + empleado;

        return obj.ejecutar(sql);

    }



/// <summary>
/// //////Valores Corporativos
/// </summary>
/// <param name="valor"></param>
/// <returns></returns>
    public String GetValorCorporativo(String valor)
    {
        String sql = "select porcentaje from valorCorporativo where valor='"+valor+"'";
        return obj.returnVector(sql)[0];
    }

    public bool updateValorCorporativo(String Valor,String porcentaje)
    {
        String sql = "update valorCorporativo set porcentaje=" + porcentaje+" where valor='"+Valor+"'";
        return obj.ejecutar(sql);
    }


    /// <summary>
    /// //////Semaforo General
    /// </summary>
    /// <param name="valor"></param>
    /// <returns></returns>
    public String GetSemaforo(String valor)
    {
        String sql = "select porcentaje from semaforo where Color='" + valor + "'";
        return obj.returnVector(sql)[0];
    }

    public bool updateSemaforo(String Valor, String porcentaje)
    {
        String sql = "update semaforo set porcentaje=" + porcentaje + " where Color='" + Valor + "'";
        return obj.ejecutar(sql);
    }


    /// <summary>
    /// //////Configuracion de Segmento
    /// </summary>
    /// <param name="valor"></param>
    /// <returns></returns>
    public String getListadoSegementos()
    {
        String sql = "select * from vwSegmentos";
        String Result = "";
        String[,] resul = obj.RetornarMatriz(sql);
        for (int i = 0; i < resul.GetLength(0); i++)
        {
            int n = resul.GetLength(1);
            Result += "<tr  onclick=\"window.location.href='gestionarSegmento.aspx?segmento=" + resul[i, 0] + "'\">";
            for (int j = 1; j < n; j++)
            {
                Result += "<td>" + resul[i, j] + "</td>";
            }
            Result += "</tr>";
        }
        return Result;
    }

    public String[] getSegmento(String segmento)
    {
        String sql = "select segmento,puntosiniciales,pesoServicio,pesoHacer,pesoInnovacion from segmento where idsegmento='" + segmento+"'";
        return obj.returnVector(sql);
    }

    public String setSegmento(String nombre,String puntos, String pesoServicio, String pesoHacer, String  pesoInnovacion)
    {
        String sql = "insert into segmento(segmento,puntosiniciales,pesoServicio,pesoHacer,pesoInnovacion)values(" +
            "'"+nombre+"'," +
            "'"+puntos+"'," +
            "'" + pesoServicio + "'," +
            "'" + pesoHacer + "'," +
            "'" + pesoInnovacion + "'" +
            ")";
        if (obj.ejecutar(sql))
        {
            sql = "select max(idsegmento) from segmento";
            return obj.returnVector(sql)[0];
        }
        else
        {
            return "error";
        }
    }

    public bool updateSegmento(String nombre, String puntos,String idSegmento, String pesoServicio, String pesoHacer, String pesoInnovacion)
    {
        String sql = "update segmento set segmento='"+nombre+"',puntosiniciales='"+puntos+"' " +
            ",pesoServicio='"+ pesoServicio + "'" +
            ",pesoHacer='"+ pesoHacer + "'" +
            ",pesoInnovacion='"+ pesoInnovacion + "' " +
            " where idsegmento="+idSegmento;
        return (obj.ejecutar(sql));
        
    }


    public bool setIndicador(String segmento,String concepto,String tipo,String Valor,String idcorporativo,String habilitado,String codigo)
    {
        String sql = "insert into indicador(idSegmento,Concepto,TipoEvento,Valor,idValorCorporativo,indHabilitado,Codigo)values(" +
            "'"+segmento+"'," +
            "'"+concepto+"'," +
            "'"+tipo+"'," +
            "'"+Valor+"'," +
            "'"+idcorporativo+"'," +
            "'"+habilitado+"'," +
            "'" + codigo + "'" +
            ")";
        return obj.ejecutar(sql);
    }

    public bool getCodigoIndicador(String codigo)
    {
        String sql = "select count(*) from indicador where codigo='"+codigo+"'";
        if (obj.returnVector(sql)[0].Equals("0"))
        {
            return true;
        }
        else
        {
            return false;
        }
    }

    /// <summary>
    /// //////Configuracion de Eventos
    /// </summary>
    /// <param name="valor"></param>
    /// <returns></returns>
    /// 

    public bool setEvento(String empleado,String indicador,String usuarioRegistra)
    {
        String sql = "select valor from Indicador where idIndicador='"+indicador+"'";
        String puntos = obj.returnVector(sql)[0];

        sql = "insert into Evento(idEmpleado,idIndicador,Valor,fechaRegistro,idUsuario,AnioEfecto)values(" +
            "'"+empleado+"'," +
            "'"+indicador+"'," +
            "'"+puntos+"'," +
            "getdate()," +
            "'"+usuarioRegistra+"'," +
            "year(getdate())" +
            ")";

        return obj.ejecutar(sql);


    }

    public String[] getConfiguracionEnvios()
    {
        String sql = "select * from configuracionenvios";
        return obj.returnVector(sql);
    }

    public String[] getInformacionEmpleadoEnvio(String empleado)
    {
        String sql = "select correo,NumeroTelefonico from empleado where idempleado=" + empleado;
        return obj.returnVector(sql);
    }

    public String[]getInformacionIndicador(String indicador)
    {
        String sql = "select i.concepto,i.TipoEvento,i.valor,v.valor from indicador i inner join ValorCorporativo v on v.idValor=i.idValorCorporativo where i.idindicador='" + indicador+"' ";
        return obj.returnVector(sql);
    }

    public String[] getInformacionIndicadorPorCodigo(String indicador)
    {
        String sql = "select i.concepto,i.tipoIndicador,i.valor,v.valor from indicador i inner join ValorCorporativo v on v.idValor=i.idValorCorporativo where upper(i.codigo)=upper('" + indicador.Replace(" ","") + "') ";
        return obj.returnVector(sql);
    }


   

    public String[] getProgresoPrincipal(String empleado,String Tipo)
    {
        String sql = "";

        if (Tipo.Equals("General"))
        {
            sql = "select * from vwPuntuacionGeneral where idempleado='" + empleado + "'";
        }
        else if (Tipo.Equals("SERVICIO"))
        {
            sql = "select * from vwPuntuacionServicio where idempleado='" + empleado + "'";
        }
        else if (Tipo.Equals("HACER LAS COSAS BIEN"))
        {
            sql = "select * from vwPuntuacionHacer where idempleado='" + empleado + "'";
        }
        else  
        {
            sql = "select * from vwPuntuacionInnovacion where idempleado='" + empleado + "'";
        }


        return obj.returnVector(sql);
    }


    public String[] getEstadisticaGeneral(String select,String groupby)
    {
        String sql = "select "+
            " sum(puntosIniciales) as PuntosIniciales "+
            " ,sum(Suma) as Suma " +
            " ,Sum(Resta) as Resta " +
            " ,sum(EstadoActual) as EstadoActual " +
            select+
            " from " +
            " vwEstadisticaGeneral  "+ groupby;
        String[] data = new string[2];
        data[0] = getNombreColumnas(sql);

        String Result = "";
        String[,] resul = obj.RetornarMatriz(sql);
        for (int i = 0; i < resul.GetLength(0); i++)
        {
            int n = resul.GetLength(1);
            Result += "<tr  onclick=\"window.location.href='#'\">";
            for (int j = 0; j < n; j++)
            {
                Result += "<td>" + resul[i, j] + "</td>";
            }
            Result += "</tr>";
        }
        data[1] = Result;
        return data;


    }

    public String getNombreColumnas(String sql)

    {
        sql = sql.Replace("'", "''");
        String newsql = " SELECT name FROM sys.dm_exec_describe_first_result_set('" + sql + "', NULL, 0)";
        String[,] Resultado = obj.RetornarMatriz(newsql);
        String result = "";
        result += "<tr>";
        for (int i = 0; i < Resultado.GetLength(0); i++)
        {
            for (int j = 0; j < Resultado.GetLength(1); j++)
            {
                result += "<th>" + Resultado[i, j] + "</th>";
            }
        }
        result += "</tr>";
        return result;
    }



}