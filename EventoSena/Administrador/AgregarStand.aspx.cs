using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Administrador_AgregarStand : System.Web.UI.Page
{
    clsStand objStand = new clsStand();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            var RedSocial = objStand.GetRedSocial();
            for (int i = 0; i < RedSocial.Rows.Count; i++)
            {
                selectRedSocial.Items.Add(new ListItem(RedSocial.Rows[i]["RedSocial"].ToString(), RedSocial.Rows[i]["idRedSocial"].ToString()));
            }

            if (Session["idStand"] != null)
            {
                ListRedesSociales();
            }

            var Categorias = objStand.GetCategorias();
            for (int i = 0; i < Categorias.Rows.Count; i++)
            {
                selectCategoriaProducto.Items.Add(new ListItem(Categorias.Rows[i]["Categoria"].ToString(), Categorias.Rows[i]["idCategoriaStand"].ToString()));
            }
        }


    }

    public int idStand = 0;

    protected void btnSiguiente1_Click(object sender, EventArgs e)
    {
        string urlImagen = "";

        Random random = new Random();

        if (fileImagenEmpresa.HasFile)
        {
            string nombreCarpeta = "archivos/stands/" + txtNombreStand.Text + "-" + DateTime.Now.ToString("dd/MM/yyyy");
            if (!Directory.Exists(Server.MapPath(nombreCarpeta)))
            {
                Directory.CreateDirectory(Server.MapPath(nombreCarpeta));
            }
            string nombreArchivo = fileImagenEmpresa.FileName;
            urlImagen = nombreCarpeta + "/" + nombreArchivo;
            fileImagenEmpresa.SaveAs(Server.MapPath(urlImagen));
            imageEmpresa.Src = urlImagen;
        }
        if (Session["idStand"] == null)
        {
            Session["idStand"] = objStand.AddStand(txtNombreStand.Text, txtDescripcionEmpresa.Value, txtLocalizacion.Text, 1, urlImagen, txtLatitud.Text, txtLongitud.Text, txtNombreContacto.Text, txtCargoContacto.Text, txtEmailContacto.Text, txtCelularContacto.Text);
        }
        else
        {
            objStand.EditarStand(txtNombreStand.Text, txtDescripcionEmpresa.Value, txtLocalizacion.Text, 1, urlImagen, txtLatitud.Text, txtLongitud.Text, txtNombreContacto.Text, txtCargoContacto.Text, txtEmailContacto.Text, txtCelularContacto.Text, Convert.ToInt32(Session["idStand"].ToString()));
        }
        div1.Attributes["style"] = "display: none";
        div2.Attributes["style"] = "display: block";
        span1.Attributes["class"] = "badge badge-default";
        span2.Attributes["class"] = "badge badge-primary";
    }
    protected void btnSiguiente2_Click(object sender, EventArgs e)
    {

        div2.Attributes["style"] = "display: none";
        div3.Attributes["style"] = "display: block";
        span2.Attributes["class"] = "badge badge-default";
        span3.Attributes["class"] = "badge badge-primary";


    }
    protected void btnSiguiente3_Click(object sender, EventArgs e)
    {
        div3.Attributes["style"] = "display: none";
        div4.Attributes["style"] = "display: block";
        span3.Attributes["class"] = "badge badge-default";
        span4.Attributes["class"] = "badge badge-primary";
    }
    protected void btnSpan1_Click(object sender, EventArgs e)
    {
        div1.Attributes["style"] = "display: block";
        div2.Attributes["style"] = "display: none";
        div3.Attributes["style"] = "display: none";
        div4.Attributes["style"] = "display: none";

        span1.Attributes["class"] = "badge badge-primary";
        span2.Attributes["class"] = "badge badge-default";
        span3.Attributes["class"] = "badge badge-default";
        span4.Attributes["class"] = "badge badge-default";
    }

    protected void btnSpan2_Click(object sender, EventArgs e)
    {
        div1.Attributes["style"] = "display: none";
        div2.Attributes["style"] = "display: block";
        div3.Attributes["style"] = "display: none";
        div4.Attributes["style"] = "display: none";

        span1.Attributes["class"] = "badge badge-default";
        span2.Attributes["class"] = "badge badge-primary";
        span3.Attributes["class"] = "badge badge-default";
        span4.Attributes["class"] = "badge badge-default";
    }

    protected void btnSpan3_Click(object sender, EventArgs e)
    {
        div1.Attributes["style"] = "display: none";
        div2.Attributes["style"] = "display: none";
        div3.Attributes["style"] = "display: block";
        div4.Attributes["style"] = "display: none";

        span1.Attributes["class"] = "badge badge-default";
        span2.Attributes["class"] = "badge badge-default";
        span3.Attributes["class"] = "badge badge-primary";
        span4.Attributes["class"] = "badge badge-default";
    }

    protected void btnSpan4_Click(object sender, EventArgs e)
    {
        div1.Attributes["style"] = "display: none";
        div2.Attributes["style"] = "display: none";
        div3.Attributes["style"] = "display: none";
        div4.Attributes["style"] = "display: block";

        span1.Attributes["class"] = "badge badge-default";
        span2.Attributes["class"] = "badge badge-default";
        span3.Attributes["class"] = "badge badge-default";
        span4.Attributes["class"] = "badge badge-primary";
    }



    protected void btnAgregarRedSocial_ServerClick(object sender, EventArgs e)
    {
        objStand.AddRedSocial(Convert.ToInt32(Session["idStand"].ToString()), Convert.ToInt32(selectRedSocial.Value), txtDireccionRed.Text);
        txtDireccionRed.Text = "";
        selectRedSocial.Value = "";
        ListRedesSociales();
    }

    protected void EliminarRedSocial(object sender, EventArgs e)
    {
        objStand.EliminarRedSocial(Convert.ToInt32(txtIdRedesSocialesStand.Text));
        ListRedesSociales();
    }

    protected void ListRedesSociales()
    {
        var redesSociales = objStand.GetRedSocialStand(Convert.ToInt32(Session["idStand"].ToString()));
        string html = "";
        for (int i = 0; i < redesSociales.Rows.Count; i++)
        {
            html += "<div class='col-md-3 mt-2 mb-2'>" +
                    "<h5>" + redesSociales.Rows[i]["RedSocial"].ToString() + "</h5>" +
                    "<img src='" + redesSociales.Rows[i]["iconoRed"].ToString() + "' style='width:40px'/>" +
                    "<p><a href='" + redesSociales.Rows[i]["direccionRed"].ToString() + "'>" + redesSociales.Rows[i]["direccionRed"].ToString() + "</a></p>" +
                    "<button class='btn btn-danger' onclick=eliminarRed(" + redesSociales.Rows[i]["idRedesSocialesStand"] + ")>Eliminar</button>" +
                    "</div>";
        }
        listRedSocial.InnerHtml = html;

       
    }

    protected void ListProductos()
    {
        var productos = objStand.GetProductos(Convert.ToInt32(Session["idStand"].ToString()));
        string html = "";
        for (int i = 0; i < productos.Rows.Count; i++)
        {
            html += "<div class='card col-md-3'>" +
                "<div class='card-body'>" +
                "<div class='text-center'>" +
                "<h5 class='card-title'>" + productos.Rows[i]["NombreProducto"] + "</h5>" +
                "<p><span class='badge badge-info'>" + productos.Rows[i]["Categoria"] + "</span></p>" +
                "<img src='" + productos.Rows[i]["ImagenProducto"].ToString() + "' style='width:150px'/>" +
                "<p>Precio: <span>" + productos.Rows[i]["PrecioProducto"] + "</span></p>" +
                "<p>" + productos.Rows[i]["DescripcionProducto"] + "</p>" +
                " </div>" +
                "</div>" +
                " <div class='card-footer justify-content-center'>" +
                "<button class='btn btn-danger'eliminarProducto(" + productos.Rows[i]["idProductoStand"] + ")'>Eliminar</button>" +
                "</div>" +
                "</div>"; 
        }
        listProductos.InnerHtml = html;
    }

    protected void btnGuardarCambios_ServerClick(object sender, EventArgs e)
    {
        Session["idStand"] = null;
    }

    protected void btnAgregarProducto_ServerClick(object sender, EventArgs e)
    {
        string urlImagen = "";

        Random random = new Random();

        if (fileImagenProducto.HasFile)
        {
            string nombreCarpeta = "archivos/Productos/" + txtNombreStand.Text + "-" + txtNombreProducto.Value + " - " + DateTime.Now.ToString("dd/MM/yyyy");
            if (!Directory.Exists(Server.MapPath(nombreCarpeta)))
            {
                Directory.CreateDirectory(Server.MapPath(nombreCarpeta));
            }
            string nombreArchivo = fileImagenProducto.FileName;
            urlImagen = nombreCarpeta + "/" + nombreArchivo;
            fileImagenProducto.SaveAs(Server.MapPath(urlImagen));
            imageEmpresa.Src = urlImagen;
        }

        objStand.AddProducto(Convert.ToInt32(selectCategoriaProducto.Value),txtNombreProducto.Value,urlImagen,txtDescripcionProducto.Value, Convert.ToInt32(txtPrecioProducto.Value),Convert.ToInt32(Session["idStand"].ToString()));
        txtNombreProducto.Value = "";
        selectCategoriaProducto.Value = "";
        txtPrecioProducto.Value = "";
        txtDescripcionProducto.Value = "";

        ListProductos();

    }
}