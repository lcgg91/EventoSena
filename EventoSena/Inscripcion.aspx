<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Inscripcion.aspx.vb" Inherits="Inscripcion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <!--Banner Inner-->
    <section>
        <div class="lgx-banner lgx-banner-inner">
            <div class="lgx-page-inner">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="lgx-heading-area">
                                <div class="lgx-heading lgx-heading-white">
                                    <h2 class="heading">Inscripción</h2>
                                </div>
                                <ul class="breadcrumb">
                                    <li><a href="Default.aspx"><i class="fa fa-home" aria-hidden="true"></i>Inicio</a></li>
                                    <li class="active">Inscripción</li>
                                </ul>
                            </div>
                        </div>
                    </div><!--//.ROW-->
                </div><!-- //.CONTAINER -->
            </div><!-- //.INNER -->
        </div>
    </section> <!--//.Banner Inner-->


     <main>
        <div class="lgx-page-wrapper">
            <!--News-->
            <section>
                <div class="container">
                    <div class="row">

                        <div class="col-sm-12 col-md-6 col-md-offset-3">

                            <div class="lgx-contactform">
                                <div class="form-group">
                                    <asp:DropDownList ID="ddlEvento" runat="server" class="form-control ">
                                        <asp:ListItem>Evento 1</asp:ListItem>
                                        <asp:ListItem>Evento 2</asp:ListItem>
                                        <asp:ListItem>Evento 3</asp:ListItem>
                                        <asp:ListItem>Evento 4</asp:ListItem>
                                    </asp:DropDownList>
                                    
                                </div>


                                <div class="form-group">
                                    <input type="text" name="lgxname" class="form-control lgxname" id="lgxname" placeholder="Nombre" required>
                                </div>

                                <div class="form-group">
                                    <input type="email" name="lgxemail" class="form-control lgxemail" id="lgxemail" placeholder="Email" required>
                                </div>

                                

                                <div class="form-group">
                                    <textarea class="form-control lgxmessage" name="lgxmessage" id="lgxmessage" rows="5" placeholder="Comentarios" required></textarea>
                                </div>


                                <button type="submit" name="submit" value="contact-form" class="lgx-btn hvr-glow hvr-radial-out lgxsend lgx-send"><span>Inscribirme</span></button>
                            </div>

                            <!-- MODAL SECTION -->
                            <div id="lgx-form-modal" class="modal fade lgx-form-modal" tabindex="-1" role="dialog" aria-hidden="true">
                                <div class="modal-dialog modal-lg">
                                    <div class="modal-content lgx-modal-content">
                                        <div class="modal-header lgx-modal-header">
                                            <button type="button" class="close brand-color-hover" data-dismiss="modal" aria-label="Close">
                                                <i class="fa fa-power-off"></i>
                                            </button>
                                        </div>

                                        <div class="modal-body">
                                            <div class="alert lgx-form-msg" role="alert"></div>
                                        </div> <!--//MODAL BODY-->

                                    </div>
                                </div>
                            </div> <!-- //MODAL -->

                        </div> <!--//.COL-->
                    </div>
                </div><!-- //.CONTAINER -->
            </section>
            <!--News END-->
        </div>
    </main>

</asp:Content>

