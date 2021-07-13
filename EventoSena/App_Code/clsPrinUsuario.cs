using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de clsPrinUsuario
/// </summary>
public class clsPrinUsuario
{
    public clsPrinUsuario()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }

    clsDbPrincipal objDb = new clsDbPrincipal();


    public String[,] getRolesUsuario(String usuario)
    {
        String sql = "select " +
"                  u.idUsuario " +
"                  ,u.Usuario " +
"                  ,u.Nombre " +
"                  ,u.Documento " +
"                  ,r.DescripcionRol as Rol " +
"                  ,a.Nombre as aplicacion " +
"                  ,a.Descripcion as descripcionapp " +
"                  ,a.logo " +
"                  ,a.url " +
"                  ,'http://190.147.96.137/integrajimsa/usuarios/'+isnull((case when len(u.imgFoto)>1 then  u.imgFoto else NULL end),'usuario.png')  " +
"                  ,a.indPublica  " +
"                  from usuario u " +
"                  inner join rol_usuario ru on ru.idusuario = u.idUsuario " +
"                  inner join rol r on r.idRol = ru.idRol " +
"                  inner join Aplicaciones a on a.idAplicacion = r.idAplicacion " +
"                  where u.Usuario = '"+usuario+"' " +
"union all " +
" select " +
" u.idUsuario " +
"                  ,u.Usuario " +
"                  ,u.Nombre " +
"                  ,u.Documento " +
"                  ,'Usuario' as Rol " +
"                  ,a.Nombre as aplicacion " +
"                  ,a.Descripcion as descripcionapp " +
"                  ,a.logo " +
"                  ,a.url " +
"                  ,'http://190.147.96.137/integrajimsa/usuarios/'+isnull((case when len(u.imgFoto)>1 then  u.imgFoto else NULL end),'usuario.png')  " +
"                  ,a.indPublica  " +
" from Aplicaciones a, " +
" usuario u " +
" where a.indPublica=0 " +
" and a.idAplicacion not in(select " +
"                  a.idAplicacion " +
"                  from usuario u " +
"                  inner join rol_usuario ru on ru.idusuario = u.idUsuario " +
"                  inner join rol r on r.idRol = ru.idRol " +
"                  inner join Aplicaciones a on a.idAplicacion = r.idAplicacion " +
"                  where u.Usuario = '" + usuario + "')" +
" and u.usuario='" + usuario + "'" +
" order by a.Nombre asc";

        String[,] result = objDb.RetornarMatriz(sql);
        return result;

        

    }

    public String getImagenusuario(String idusuario)
    {
        String sql = "select 'http://190.147.96.137/integrajimsa/usuarios/'+isnull((case when len(u.imgFoto)>1 then  u.imgFoto else NULL end),'usuario.png') from " +
            "usuario u where idusuario="+idusuario;

        return objDb.returnVector(sql)[0];
    }

    public String getCargo(String Cedula)
    {
        clsDbPrincipal objMysql = new clsDbPrincipal();
        String sql = "select cargo from usuario where empleado='" + Cedula + "'";
        return objMysql.returnVector(sql)[0];
    }

    public String getDepartamentoUsuario(String idusuario)
    {
        String sql = "select "+
                " d.Departamento "+
                "  from usuario u " +
                " left join departamento d on d.idDepartamento = u.idDepartamento " +
                " where u.idUsuario = "+idusuario;
        return objDb.returnVector(sql)[0];
    }

    public String AutenticacionUsuario(String usuario,String Clave,String aplicacion)
    {
        String adPath = clsPrinFunciones.adPath; //Fully-qualified Domain Name
        LdapAuthentication adAuth = new LdapAuthentication(adPath);
        try
        {
            String dominio = "eci.com.co";
            if (true == adAuth.IsAuthenticated(dominio, usuario, Clave))
            {
                String[,] resul = getRolesUsuario(usuario);
                if (resul.GetLength(0) < 1)
                {
                    return "error";
                }
                else
                {
                    List<app> listaApp = new List<app>();
                    usuario objUsuario = new usuario(resul[0, 0], resul[0, 1], resul[0, 2], resul[0, 3]);

                    for (int i = 0; i < resul.GetLength(0); i++)
                    {

                        if (resul[i, 5].Equals(aplicacion))
                        {
                            return resul[i, 0]+","+ resul[i, 2];
                        }                      
                    }
                    return "Error";

                }
            }
            else
            {
                return "Error";
            }
        }
        catch (Exception ex)
        {
            return "Error";
        }
    }


    ///////////////////////////////////////////
    /**************Hoja de Vida******************/



    public bool tieneInformacionPersonal(String usuario)
    {
        String sql = "select count(*) from hojadevida.informacionPersonal where idusuario=" + usuario;
        if (objDb.returnVector(sql)[0].Equals("0"))
        {
            return false;
        }
        else
        {
            return true;
        }
    }

    public bool setFoto(String Usuario,String foto)
    {
        String sql = "update usuario set imgFoto='"+foto+"' where idusuario="+ Usuario;
        return objDb.ejecutar(sql);
    }


    public bool setInformacionPersonal(String usuario,String TipoIdentificacion,String NumeroIdentificacion,String PrimerNombre,String SegundoNombre
        ,String primerApellido,String segundoApellido,String fechaNacimiento,String LugarNacimiento,String estadoCivil,String Genero
        ,String GrupoSanguineo,String Foto,String direccion,String Ciudad,String Barrio,String telefono,String Celular, String Estrato,String tipoVivienda,String Correo 
        ,String tallaCamisa,String tallePantalon,String tallaZapatos,String Departamento)
    {

        String sql = "";
        if (!tieneInformacionPersonal(usuario))
        {
            sql = "insert into hojadevida.informacionPersonal([idusuario]" +
          " ,[idtipoIdentificacion] " +
          " ,[numeroIdentificacion] " +
          " ,[primerNombre] " +
          " ,[segundoNombre] " +
          " ,[primerApellido] " +
          " ,[segundoApellido] " +
          " ,[fechaNacimiento] " +
          " ,[lugarNacimiento] " +
          " ,[idEstadoCivil] " +
          " ,[idGenero] " +
          " ,[idGrupoSanguineo] " +
          " ,[imgFoto] " +
          " ,[direccion] " +
          " ,[Ciudad] " +
          " ,[Barrio] " +
          " ,[Telefono] " +
          " ,[Celular] " +
          " ,[Estrato] " +
          " ,[idTipoVivienda] " +
           ",[CorreoElectronico]" +
           ",TallaCamisa" +
           ",TallaPantalon" +
           ",TallaZapatos" +
           ",FechaActualizacion" +
           ",DepartamentoNacimiento" +
            "" +
            ")values(" +
            "'" + usuario.Replace("'", "") + "'," +
            "'" + TipoIdentificacion.Replace("'", "") + "'," +
            "'" + NumeroIdentificacion.Replace("'", "") + "'," +
            "'" + PrimerNombre.Replace("'", "") + "'," +
            "'" + SegundoNombre.Replace("'", "") + "'," +
            "'" + primerApellido.Replace("'", "") + "'," +
            "'" + segundoApellido.Replace("'", "") + "'," +
            "'" + fechaNacimiento.Replace("'", "") + "'," +
            "'" + LugarNacimiento.Replace("'", "") + "'," +
            "'" + estadoCivil.Replace("'", "") + "'," +
            "'" + Genero.Replace("'", "") + "'," +
            "'" + GrupoSanguineo.Replace("'", "") + "'," +
            "'" + Foto.Replace("'", "") + "'," +
            "'" + direccion.Replace("'", "") + "'," +
            "'" + Ciudad.Replace("'", "") + "'," +
            "'" + Barrio.Replace("'", "") + "'," +
            "'" + telefono.Replace("'", "") + "'," +
            "'" + Celular.Replace("'", "") + "'," +
            "'" + Estrato.Replace("'", "") + "'," +
            "'" + tipoVivienda.Replace("'", "") + "'," +
            "'" + Correo.Replace("'", "") + "'," +
            "'" + tallaCamisa.Replace("'", "") + "'," +
            "'" + tallePantalon.Replace("'", "") + "'," +
            "'" + tallaZapatos.Replace("'", "") + "'," +
            "getdate()," +
             "'" + Departamento.Replace("'", "") + "'" +
            ")";
            
        }
        else
        {
            sql = "UPDATE [hojadevida].[informacionPersonal] set " +
                "[idtipoIdentificacion] = '"+ TipoIdentificacion.Replace("'", "") + "'"+
                 " ,[numeroIdentificacion] = '" + NumeroIdentificacion.Replace("'", "") + "'" +
                 " ,[primerNombre] = '" + PrimerNombre.Replace("'", "") + "'" +
                 " ,[segundoNombre] = '" + SegundoNombre.Replace("'", "") + "'" +
                 " ,[primerApellido] = '" + primerApellido.Replace("'", "") + "'" +
                 " ,[segundoApellido] = '" + segundoApellido.Replace("'", "") + "'" +
                 " ,[fechaNacimiento] = '" + fechaNacimiento.Replace("'", "") + "'" +
                 " ,[lugarNacimiento] = '" + LugarNacimiento.Replace("'", "") + "'" +
                 " ,[idEstadoCivil] = '" + estadoCivil.Replace("'", "") + "'" +
                 " ,[idGenero] = '" + Genero.Replace("'", "") + "'" +
                 " ,[idGrupoSanguineo] ='" + GrupoSanguineo.Replace("'", "") + "'" +
                 " ,[imgFoto] = '" + Foto.Replace("'", "") + "'" +
                 " ,[direccion] ='" + direccion.Replace("'", "") + "'" +
                 " ,[Ciudad] = '" + Ciudad.Replace("'", "") + "'" +
                 " ,[Barrio] = '" + Barrio.Replace("'", "") + "'" +
                 " ,[Telefono] = '" + telefono.Replace("'", "") + "'" +
                 " ,[Celular] = '" + Celular.Replace("'", "") + "'" +
                 " ,[Estrato] = '" + Estrato.Replace("'", "") + "'" +
                 " ,[idTipoVivienda] = '" + tipoVivienda.Replace("'", "") + "'" +
                 " ,[CorreoElectronico] ='" + Correo.Replace("'", "") + "'" +
                 " ,TallaCamisa ='" + tallaCamisa.Replace("'", "") + "'" +
                 " ,TallaPantalon ='" + tallePantalon.Replace("'", "") + "'" +
                 " ,TallaZapatos='" + tallaZapatos.Replace("'", "") + "'" +
                 " ,DepartamentoNacimiento='" + Departamento.Replace("'", "") + "'" +
                 " ,FechaActualizacion =getdate()" +
                 " where idusuario=" +usuario;
        }

        return objDb.ejecutar(sql);     

    }



    public String[]getInformacionPersonal(String usuario)
    {
       String sql = "select [idusuario] "+
      ",[idtipoIdentificacion] "+
     " ,[numeroIdentificacion] " +
     " ,[primerNombre] " +
     " ,[segundoNombre] " +
     " ,[primerApellido] " +
     " ,[segundoApellido] " +
     " ,convert(varchar,[fechaNacimiento],111) " +
     " ,[lugarNacimiento] " +
     " ,[idEstadoCivil] " +
     " ,[idGenero] " +
     " ,[idGrupoSanguineo] " +
     " ,[imgFoto] " +
     " ,[direccion] " +
     " ,[Ciudad] " +
     " ,[Barrio] " +
     " ,[Telefono] " +
     " ,[Celular] " +
     " ,[Estrato] " +
     " ,[idTipoVivienda] " +
     " ,[CorreoElectronico]" +
     ",TallaCamisa" +
     ",TallaPantalon" +
     ",TallaZapatos" +
     ",dbo.fnEdadCompleta(fechaNacimiento)" +
     ",DepartamentoNacimiento" +
     " from hojadevida.informacionPersonal where idusuario="+usuario;
       return objDb.returnVector(sql);
    }


    public bool setHijos(String usuario,String tipoDocumento,String NumeroIdentificacion,String nombre,String FechaNacimiento,String Genero)
    {
        String sql = "insert into hojadevida.hijo(idusuario,idTipoIdentificacion,numeroIndentificacion,Nombre,FechaNacimiento,tipo,fechaActualizacion)values(" +
            "'" + usuario.Replace("'", "") + "'," +
            "'" + tipoDocumento.Replace("'", "") + "'," +
            "'" + NumeroIdentificacion.Replace("'", "") + "'," +
            "'" + nombre.Replace("'", "") + "'," +
            "'" + FechaNacimiento.Replace("'", "") + "'," +
            "'" + Genero.Replace("'", "") + "',getdate()" +
            ")";
        return objDb.ejecutar(sql);
    }

    public String[]getHijos(String idHijos)
    {
        String sql = "select [idHijos] "+
                  ",[idTipoIdentificacion] "+
                 " ,[numeroIndentificacion] " +
                 " ,[Nombre] " +
                 " ,convert(varchar,[FechaNacimiento],111) " +
                 " ,[tipo] " +
                 " ,[idusuario] " +
                 " ,[fechaActualizacion] from hojadevida.hijo where idHijos=" + idHijos;
        return objDb.returnVector(sql);
    }

    public bool UpdateHijos(String idHijos, String tipoDocumento, String NumeroIdentificacion, String nombre, String FechaNacimiento, String Genero)
    {
        String sql = "update hojadevida.hijo set " +
            "idTipoIdentificacion='"+ tipoDocumento.Replace("'", "") + "'," +
            "numeroIndentificacion='" + NumeroIdentificacion.Replace("'", "") + "'," +
            "Nombre='" + nombre.Replace("'", "") + "'," +
            "FechaNacimiento='" + FechaNacimiento.Replace("'", "") + "'," +
            "tipo='" + Genero.Replace("'", "") + "'," +
            "fechaActualizacion=getdate()" +
            " where idhijos="+idHijos;
        return objDb.ejecutar(sql);
    }

    public bool deleteHijo(String idHijos)
    {
        String sql = "delete from hojadevida.hijo where idhijos="+idHijos;
        return objDb.ejecutar(sql);
    }

    public bool getTieneHijos(String usuario)
    {
        String sql = "select count(*) from hojadevida.hijo where idusuario=" + usuario;
        if (objDb.returnVector(sql)[0].Equals("0"))
        {
            return false;
        }
        else
        {
            return true;
        }
    }


    public bool setNucleoFamiliar(String usuario, String tipoDocumento, String NumeroIdentificacion, String nombre, String FechaNacimiento, String parentesco)
    {
        String sql = "insert into hojadevida.nucleoFamiliar(idusuario,idTipoIdentificacion,numeroIndentificacion,Nombre,FechaNacimiento,idParentesco,fechaActualizacion)values(" +
            "'" + usuario.Replace("'", "") + "'," +
            "'" + tipoDocumento.Replace("'", "") + "'," +
            "'" + NumeroIdentificacion.Replace("'", "") + "'," +
            "'" + nombre.Replace("'", "") + "'," +
            "'" + FechaNacimiento.Replace("'", "") + "'," +
            "'" + parentesco.Replace("'", "") + "',getdate()" +
            ")";
        return objDb.ejecutar(sql);
    }


    public String[] getNucleoFamiliar(String idnucleoFamiliar)
    {
        String sql = "select  [idnucleoFamiliar] "+
                      ",[idusuario] "+
                     " ,[idTipoIdentificacion] " +
                     " ,[numeroIndentificacion] " +
                     " ,[Nombre] " +
                     " ,convert(varchar,[FechaNacimiento],111) " +
                     " ,[idParentesco] " +
                     " ,[fechaActualizacion] " +
                 "  from hojadevida.nucleoFamiliar where idnucleoFamiliar=" + idnucleoFamiliar;
        return objDb.returnVector(sql);
    }

    public bool UpdateNucleoFamiliar(String idnucleoFamiliar, String tipoDocumento, String NumeroIdentificacion, String nombre, String FechaNacimiento, String parentesco)
    {
        String sql = "update hojadevida.nucleoFamiliar set " +
            "idTipoIdentificacion='" + tipoDocumento.Replace("'", "") + "'," +
            "numeroIndentificacion='" + NumeroIdentificacion.Replace("'", "") + "'," +
            "Nombre='" + nombre.Replace("'", "") + "'," +
            "FechaNacimiento='" + FechaNacimiento.Replace("'", "") + "'," +
            "idParentesco='" + parentesco.Replace("'", "") + "'," +
            "fechaActualizacion=getdate()" +
            " where idnucleoFamiliar=" + idnucleoFamiliar;
        return objDb.ejecutar(sql);
    }

    public bool deleteNucleoFamiliar(String idnucleoFamiliar)
    {
        String sql = "delete from hojadevida.nucleoFamiliar where idnucleoFamiliar=" + idnucleoFamiliar;
        return objDb.ejecutar(sql);
    }












    public bool setInformacionAcademica(String usuario,String Estado,String Semestre,String Titulo,String Institucion,String NivelEstudio)
    {
        String sql = " insert into hojadevida.InformacionAcademica(idUsuario,estado,FechaSemestre,TituloAlcanzado,Institucion,idNivelEstudio,fechaActualizacion)values(" +
            "'" + usuario.Replace("'", "") + "'," +
            "'" + Estado.Replace("'", "") + "'," +
            "'" + Semestre.Replace("'", "") + "'," +
            "'" + Titulo.Replace("'", "") + "'," +
            "'" + Institucion.Replace("'", "") + "'," +
            "'" + NivelEstudio.Replace("'", "") + "',getdate()" +
            ")";
        return objDb.ejecutar(sql);
    }


    public String[] getInformacionAcademica(String IdAcademica)
    {
        String sql = "select  [idInformacionAcademica] "+
                  ",[idUsuario] "+
                  ",[estado] " +
                  ",[FechaSemestre] " +
                  ",[TituloAlcanzado] " +
                  ",[Institucion] " +
                  ",[idNivelEstudio] " +
                  ",[fechaActualizacion] " +
                 "  from hojadevida.[InformacionAcademica] where [idInformacionAcademica]=" + IdAcademica;
        return objDb.returnVector(sql);
    }


    public bool updateInformacionAcademica(String idAcademica, String Estado, String Semestre, String Titulo, String Institucion, String NivelEstudio)
    {
        String sql = "update hojadevida.InformacionAcademica set " +
            "[FechaSemestre]='" + Semestre.Replace("'", "") + "'," +
            "[TituloAlcanzado]='" + Titulo.Replace("'", "") + "'," +
            "[Institucion]='" + Institucion.Replace("'", "") + "'," +
            "[idNivelEstudio]='" + NivelEstudio.Replace("'", "") + "'," +
            "[estado]='" + Estado.Replace("'", "") + "'," +
            "fechaActualizacion=getdate()" +
            " where idInformacionAcademica=" + idAcademica;
        return objDb.ejecutar(sql);
    }

    public bool deleteInformacionAcademica(String idAcademica)
    {
        String sql = "delete from hojadevida.[InformacionAcademica] where [idInformacionAcademica]=" + idAcademica;
        return objDb.ejecutar(sql);
    }


    




    public String[] getInformacionContactoEmergencia(String idEmergencia)
    {
        String sql = "SELECT [idContactoEmergencia]"+
                     " ,[idUsuario]"+
                    "  ,[Nombre]" +
                    "  ,[idParentesco]" +
                    "  ,[Telefono]" +
                    "  ,[fechaActualizacion]" +
                  " FROM[hojadevida].[contactosEmergencia] where [idContactoEmergencia]=" + idEmergencia;
        return objDb.returnVector(sql);
    }


    public bool updateInformacionContacto(String idEmergencia, String Nombre, String parentesco, String Telefono)
    {
        String sql = "update hojadevida.[contactosEmergencia] set " +
            "[Nombre]='" + Nombre.Replace("'", "") + "'," +
            "[idParentesco]='" + parentesco.Replace("'", "") + "'," +
            "[Telefono]='" + Telefono.Replace("'", "") + "'," +
            "fechaActualizacion=getdate()" +
            " where [idContactoEmergencia]=" + idEmergencia;
        return objDb.ejecutar(sql);
    }

    public bool deleteInformacionContacto(String idEmergencia)
    {
        String sql = "delete from hojadevida.[contactosEmergencia] where [idContactoEmergencia]=" + idEmergencia;
        return objDb.ejecutar(sql);
    }




    public bool setContactoEmergencia(String usuario, String Nombre,String parentesco,String Telefono)
    {
        String sql = " insert into hojadevida.contactosEmergencia(idUsuario,Nombre,idParentesco,Telefono,fechaActualizacion)values(" +
            "'" + usuario.Replace("'", "") + "'," +
            "'" + Nombre.Replace("'", "") + "'," +
            "'" + parentesco.Replace("'", "") + "'," +
            "'" + Telefono.Replace("'", "") + "',getdate()" +
            ")";
        return objDb.ejecutar(sql);
    }


    public bool tieneInformacionEmergencia(String usuario)
    {
        String sql = "select count(*) from hojadevida.InformacionEmergencia where idusuario=" + usuario;
        if (objDb.returnVector(sql)[0].Equals("0"))
        {
            return false;
        }
        else
        {
            return true;
        }
    }


    public bool setInformacionEmergencia(String usuario, String eps, String Plan, String nombrePlan, String TelefonoPlan, String direccionIps, String tomaMedicamento, String NombreMedicamento, String Alergico, String NombreAlergias, String CasosEspeciales)
    {
        String sql = "";

        if (tieneInformacionEmergencia(usuario))
        {
            sql = "update hojadevida.InformacionEmergencia set " +
                "idUsuario='" + usuario.Replace("'", "") + "'," +
               "Eps='" + eps.Replace("'", "") + "'," +
               "PlanConplementario='" + Plan.Replace("'", "") + "'," +
               "NombrePlanComplementario='" + nombrePlan.Replace("'", "") + "'," +
               "TelefonoPlanComplementario='" + TelefonoPlan.Replace("'", "") + "'," +
               "NombreDireccionIps='" + direccionIps.Replace("'", "") + "'," +
               "TomaMedicamento='" + tomaMedicamento.Replace("'", "") + "'," +
               "NombreMedicamento='" + NombreMedicamento.Replace("'", "") + "'," +
               "Alergico='" + Alergico.Replace("'", "") + "'," +
               "NombreAlergias='" + NombreAlergias.Replace("'", "") + "'," +
               "CasosEspeciales='" + CasosEspeciales.Replace("'", "") + "',fechaActualizacion=getdate()" +
                " where idUsuario='" + usuario.Replace("'", "") + "'";
        }
        else
        {
            sql = " insert into hojadevida.InformacionEmergencia(idUsuario,Eps,PlanConplementario,NombrePlanComplementario,TelefonoPlanComplementario,NombreDireccionIps,TomaMedicamento,NombreMedicamento,Alergico,NombreAlergias,CasosEspeciales,fechaActualizacion)values(" +
                "'" + usuario.Replace("'", "") + "'," +
                "'" + eps.Replace("'", "") + "'," +
                "'" + Plan.Replace("'", "") + "'," +
                "'" + nombrePlan.Replace("'", "") + "'," +
                "'" + TelefonoPlan.Replace("'", "") + "'," +
                "'" + direccionIps.Replace("'", "") + "'," +
                "'" + tomaMedicamento.Replace("'", "") + "'," +
                "'" + NombreMedicamento.Replace("'", "") + "'," +
                "'" + Alergico.Replace("'", "") + "'," +
                "'" + NombreAlergias.Replace("'", "") + "'," +
                "'" + CasosEspeciales.Replace("'", "") + "',getdate()" +
                ")";


        }

        return objDb.ejecutar(sql);
    }

    public String[] getInformacionEmergencia(String usuario)
    {
        String sql = "select * from hojadevida.InformacionEmergencia where idusuario="+usuario;
        return objDb.returnVector(sql);
    }

    public String[] getInformacionLaboral(String usuario)
    {
        clsDbPrincipal objMida = new clsDbPrincipal();
        String sql = "select cargo as Cargo "+
                      "  ,convert(varchar, getdate(),111) " +
                      "  , '' " +
                      "  , ''" +
                      ",'' as Antiguedad " +
                      "   from usuario where documento = '"+getDocumento(usuario)+"' ";
        return objMida.returnVector(sql);
    }

    public String getDocumento(String usuario)
    {
        String sql = "select documento from usuario where idusuario="+usuario;
        return objDb.returnVector(sql)[0];
    }

    public bool getUsuarioTieneHuella(String usuario)
    {
        String sql = "select count(*) from huellaUsuario where idusuario=" + usuario;
        if (objDb.returnVector(sql)[0].Equals("0"))
        {
            return false;
        }
        else
        {
            return true;
        }
    }

    public bool setFirma(String Usuario, String foto)
    {
        String sql = "update usuario set firma='" + foto + "' where idusuario=" + Usuario;
        return objDb.ejecutar(sql);
    }

    public String getFirma(String idusuario)
    {
        String sql = "select 'http://190.147.96.137/integrajimsa/usuarios/'+isnull((case when len(u.Firma)>1 then  u.Firma else NULL end),'') from " +
            "usuario u where idusuario=" + idusuario;

        return objDb.returnVector(sql)[0];
    }

    public String[] dashboard()
    {
        String sql = "select "+
                     "count(u.idUsuario) as Cantidad "+
                    ",count(ip.idusuario) as Actualizados " +
                    ",round((count(ip.idusuario) / convert(float, count(u.idUsuario))) * 100, 2) " +
                    " from usuario u " +
                    " left join hojadevida.informacionPersonal ip on ip.idusuario = u.idUsuario " +
                    "where u.indHabilitado = 1";
        return objDb.returnVector(sql);
    }

    public String getUsuariosVerificacionInformacion()
    {
        

        String Result = "";
        try
        {
           
            String sql = "select * from vwUsuarioVerificacionDatos";

            String[,] resul = objDb.RetornarMatriz(sql);
            for (int i = 0; i < resul.GetLength(0); i++)
            {
                int n = resul.GetLength(1);

              

                Result += "<tr onclick=\"window.location.href='GestionarUsuario.aspx?Usuario=" + resul[i, 0] + "'\">";

                for (int j = 1; j < n ; j++)
                {
                    String Style = "";
                    if (j > 4)
                    {
                        Style = " style=\"background:" + resul[i, j] + "\"";
                        Result += "<td" + Style + "></td>";
                    }
                    else
                    {
                        Result += "<td" + Style + ">" + resul[i, j] + "</td>";
                    }

                    


                }

                Result += "</tr>";
            }
        }
        catch
        {

        }
        return Result;
    }



}