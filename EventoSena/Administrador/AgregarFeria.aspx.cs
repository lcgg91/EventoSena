using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Administrador_AgregarFeria : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSiguiente1_Click(object sender, EventArgs e)
    {
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
    protected void btnSpan1_Click(object sender, EventArgs e)
    {
        div1.Attributes["style"] = "display: block";
        div2.Attributes["style"] = "display: none";
        div3.Attributes["style"] = "display: none";

        span1.Attributes["class"] = "badge badge-primary";
        span2.Attributes["class"] = "badge badge-default";
        span3.Attributes["class"] = "badge badge-default";
    }

    protected void btnSpan2_Click(object sender, EventArgs e)
    {
        div1.Attributes["style"] = "display: none";
        div2.Attributes["style"] = "display: block";
        div3.Attributes["style"] = "display: none";

        span1.Attributes["class"] = "badge badge-default";
        span2.Attributes["class"] = "badge badge-primary";
        span3.Attributes["class"] = "badge badge-default";
    }

    protected void btnSpan3_Click(object sender, EventArgs e)
    {
        div1.Attributes["style"] = "display: none";
        div2.Attributes["style"] = "display: none";
        div3.Attributes["style"] = "display: block";

        span1.Attributes["class"] = "badge badge-default";
        span2.Attributes["class"] = "badge badge-default";
        span3.Attributes["class"] = "badge badge-primary";
    }





}