using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class vacia3_MasterPage : System.Web.UI.MasterPage
{
    clsPrinUsuario objUsuario = new clsPrinUsuario();

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void buscar()
    {
        Response.Redirect("BusquedaAvanzad.aspx?tipo=search&que="+txtSearch.Text);
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("BusquedaAvanzad.aspx?tipo=search&que=" + txtSearch.Text);
    }

    public String GetRol()
    {
        return "";
    }
}
