<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="calendario.aspx.cs" Inherits="calendario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!--Banner Inner-->
    <section>
        <div class="lgx-banner lgx-banner-inner">
            <div class="lgx-page-inner">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="lgx-heading-area">
                                <div class="lgx-heading lgx-heading-white">
                                    <h2 class="heading">Calendario</h2>
                                </div>
                                <ul class="breadcrumb">
                                    <li><a href="Default.aspx"><i class="fa fa-home" aria-hidden="true"></i>Inicio</a></li>
                                    <li class="active">Calendario</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!--//.ROW-->
                </div>
                <!-- //.CONTAINER -->
            </div>
            <!-- //.INNER -->
        </div>
    </section>
    <!--//.Banner Inner-->
    <section>
        <div id="lgx-schedule" class="lgx-schedule lgx-schedule2 lgx-schedule-white">
            <div class="lgx-inner">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="lgx-heading">
                                <h2 class="heading">Proximos eventos a realizarse </h2>
                                <h3 class="subheading">Inscribete y Reserva los cupos disponibles</h3>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="lgx-tab">
                                <ul class="nav nav-pills lgx-nav">
                                    <li class="active">
                                        <a data-toggle="pill" href="#home">
                                            <h3>Junio <span>2021</span></h3>
                                            <p><span>29 </span>Jun, 2021</p>
                                        </a>
                                    </li>
                                    <li>
                                        <a data-toggle="pill" href="#menu1">
                                            <h3>Junio <span>2021</span></h3>
                                            <p><span>30 </span>Jun, 2021</p>
                                        </a>
                                    </li>
                                    <li>
                                        <a data-toggle="pill" href="#menu2">
                                            <h3>Agosto <span>2021</span></h3>
                                            <p><span>29 </span>Ago, 2021</p>
                                        </a>
                                    </li>
                                    <li>
                                        <a data-toggle="pill" href="#menu3">
                                            <h3>Noviembre <span>2021</span></h3>
                                            <p><span>15 </span>Nov, 2021</p>
                                        </a>
                                    </li>
                                </ul>
                                <div class="tab-content lgx-tab-content">
                                    <div id="home" class="tab-pane fade in active">
                                        <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                                            <div class="panel panel-default lgx-panel">
                                                <div class="panel-heading" role="tab" id="headingOne">
                                                    <div class="panel-title">
                                                        <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                                            <div class="lgx-single-schedule">
                                                                <div class="author">
                                                                    <img src="assets/img/schedule/speaker1.jpg" alt="Speaker" />
                                                                </div>
                                                                <div class="schedule-info">
                                                                    <h4 class="time">09:00 <span>Am</span> - 10.30 <span>Am</span></h4>
                                                                    <h3 class="title">Titulo de la Conferencia</h3>
                                                                    <h4 class="author-info">Dirigida  <span>Por </span> , Autor</h4>
                                                                </div>
                                                            </div>
                                                        </a>
                                                    </div>
                                                </div>
                                                <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                                                    <div class="panel-body">
                                                        <p class="text">
                                                            Aqui tendriamos una descripcion de las conferencias a dictar
                                                        </p>
                                                        <h4 class="location"><strong>Ubicacion:</strong>  Desde Plataforma <span>Colombia</span> </h4>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="panel panel-default lgx-panel">
                                                <div class="panel-heading" role="tab" id="headingTwo">
                                                    <div class="panel-title">
                                                        <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="true" aria-controls="collapseOne">
                                                            <div class="lgx-single-schedule">
                                                                <div class="author">
                                                                    <img src="assets/img/schedule/speaker1.jpg" alt="Speaker" />
                                                                </div>
                                                                <div class="schedule-info">
                                                                    <h4 class="time">09:00 <span>Am</span> - 10.30 <span>Am</span></h4>
                                                                    <h3 class="title">Titulo de la Conferencia</h3>
                                                                    <h4 class="author-info">Dirigida  <span>Por </span> , Autor</h4>
                                                                </div>
                                                            </div>
                                                        </a>
                                                    </div>
                                                </div>
                                                <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                                                   <div class="panel-body">
                                                        <p class="text">
                                                            Aqui tendriamos una descripcion de las conferencias a dictar
                                                        </p>
                                                        <h4 class="location"><strong>Ubicacion:</strong>  Desde Plataforma <span>Colombia</span> </h4>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="panel panel-default lgx-panel">
                                                <div class="panel-heading" role="tab" id="headingThree">
                                                    <div class="panel-title">
                                                        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="true" aria-controls="collapseThree">
                                                            <div class="lgx-single-schedule">
                                                                <div class="author author-multi">
                                                                    <img src="assets/img/schedule/speaker1.jpg" alt="Speaker" />
                                                                    <img src="assets/img/schedule/speaker2.jpg" alt="Speaker" />
                                                                    <img src="assets/img/schedule/speaker3.jpg" alt="Speaker" />
                                                                    <img src="assets/img/schedule/speaker4.jpg" alt="Speaker" />
                                                                </div>
                                                                <div class="schedule-info">
                                                                    <h4 class="time">09:00 <span>Am</span> - 10.30 <span>Am</span></h4>
                                                                    <h3 class="title">Titulo de la Conferencia</h3>
                                                                    <h4 class="author-info">Dirigida  <span>Por </span> , Autor</h4>
                                                                </div>
                                                            </div>
                                                        </a>
                                                    </div>
                                                </div>
                                                <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                                                    <div class="panel-body">
                                                       <p class="text">
                                                            Aqui tendriamos una descripcion de las conferencias a dictar
                                                        </p>
                                                        <h4 class="location"><strong>Ubicacion:</strong>  Desde Plataforma <span>Colombia</span> </h4>
                                                    </div>
                                                </div>
                                            </div>
                                           
                                            
                                        </div>

                                    </div>


                                    <div id="menu1" class="tab-pane fade">

                                        <div class="panel-group" id="accordion2" role="tablist" aria-multiselectable="true">
                                            <div class="panel panel-default lgx-panel">
                                                <div class="panel-heading" role="tab" id="headingOne2">
                                                    <div class="panel-title">
                                                        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion2" href="#collapseOne2" aria-expanded="true" aria-controls="collapseOne2">
                                                            <div class="lgx-single-schedule">
                                                                <div class="author author-multi">
                                                                    <img src="assets/img/schedule/speaker1.jpg" alt="Speaker" />
                                                                    <img src="assets/img/schedule/speaker2.jpg" alt="Speaker" />
                                                                    <img src="assets/img/schedule/speaker3.jpg" alt="Speaker" />
                                                                </div>
                                                                <div class="schedule-info">
                                                                    <h4 class="time">09:00 <span>Am</span> - 10.30 <span>Am</span></h4>
                                                                    <h3 class="title">The Wait is Over! Stony Brook Captures First Conference Title</h3>
                                                                    <h4 class="author-info">By <span>Joanna Smith</span> , <span>Riaz Sagar</span> & <span>Devid Smith</span> , Design Apple</h4>
                                                                </div>
                                                            </div>
                                                        </a>
                                                    </div>
                                                </div>
                                                <div id="collapseOne2" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
                                                    <div class="panel-body">
                                                        <p class="text">
                                                            Meh synth Schlitz, tempor duis single-origin coffee ea next level ethnic fingerstache fanny pack nostrud. Photo booth anim 8-bit hella, PBR 3 wolf moon beard Helvetica. Salvia esse flexitarian Truffaut synth art party deep v chillwave.
                                                        </p>
                                                        <h4 class="location"><strong>Location:</strong>  Hall 1, Building A , Golden Street , <span>Southafrica</span> </h4>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="panel panel-default lgx-panel">
                                                <div class="panel-heading" role="tab" id="headingTwo2">
                                                    <div class="panel-title">
                                                        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo2" aria-expanded="true" aria-controls="collapseTwo2">
                                                            <div class="lgx-single-schedule">
                                                                <div class="author">
                                                                    <img src="assets/img/schedule/speaker1.jpg" alt="Speaker" />
                                                                </div>
                                                                <div class="schedule-info">
                                                                    <h4 class="time">09:00 <span>Am</span> - 10.30 <span>Am</span></h4>
                                                                    <h3 class="title">Digital World Event Introduction</h3>
                                                                    <h4 class="author-info">By <span>Joanna Smith</span> , Design Apple</h4>
                                                                </div>
                                                            </div>
                                                        </a>
                                                    </div>
                                                </div>
                                                <div id="collapseTwo2" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                                                    <div class="panel-body">
                                                        <p class="text">
                                                            Meh synth Schlitz, tempor duis single-origin coffee ea next level ethnic fingerstache fanny pack nostrud. Photo booth anim 8-bit hella, PBR 3 wolf moon beard Helvetica. Salvia esse flexitarian Truffaut synth art party deep v chillwave.
                                                        </p>
                                                        <h4 class="location"><strong>Location:</strong>  Hall 1, Building A , Golden Street , <span>Southafrica</span> </h4>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="panel panel-default lgx-panel">
                                                <div class="panel-heading" role="tab" id="headingThree2">
                                                    <div class="panel-title">
                                                        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion2" href="#collapseThree2" aria-expanded="true" aria-controls="collapseThree2">
                                                            <div class="lgx-single-schedule">
                                                                <div class="author">
                                                                    <img src="assets/img/schedule/speaker1.jpg" alt="Speaker" />
                                                                </div>
                                                                <div class="schedule-info">
                                                                    <h4 class="time">09:00 <span>Am</span> - 10.30 <span>Am</span></h4>
                                                                    <h3 class="title">Digital World Event Introduction</h3>
                                                                    <h4 class="author-info">By <span>Joanna Smith</span> , Design Apple</h4>
                                                                </div>
                                                            </div>
                                                        </a>
                                                    </div>
                                                </div>
                                                <div id="collapseThree2" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                                                    <div class="panel-body">
                                                        <p class="text">
                                                            Meh synth Schlitz, tempor duis single-origin coffee ea next level ethnic fingerstache fanny pack nostrud. Photo booth anim 8-bit hella, PBR 3 wolf moon beard Helvetica. Salvia esse flexitarian Truffaut synth art party deep v chillwave.
                                                        </p>
                                                        <h4 class="location"><strong>Location:</strong>  Hall 1, Building A , Golden Street , <span>Southafrica</span> </h4>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                    </div>


                                    <div id="menu2" class="tab-pane fade">

                                        <div class="panel-group" id="accordion3" role="tablist" aria-multiselectable="true">
                                            <div class="panel panel-default lgx-panel">
                                                <div class="panel-heading" role="tab" id="headingOne3">
                                                    <div class="panel-title">
                                                        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion3" href="#collapseOne3" aria-expanded="true" aria-controls="collapseOne3">
                                                            <div class="lgx-single-schedule">
                                                                <div class="author">
                                                                    <img src="assets/img/schedule/speaker1.jpg" alt="Speaker" />
                                                                </div>
                                                                <div class="schedule-info">
                                                                    <h4 class="time">09:00 <span>Am</span> - 10.30 <span>Am</span></h4>
                                                                    <h3 class="title">Digital World Event Introduction</h3>
                                                                    <h4 class="author-info">By <span>Joanna Smith</span> , Design Apple</h4>
                                                                </div>
                                                            </div>
                                                        </a>
                                                    </div>
                                                </div>
                                                <div id="collapseOne3" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
                                                    <div class="panel-body">
                                                        <p class="text">
                                                            Meh synth Schlitz, tempor duis single-origin coffee ea next level ethnic fingerstache fanny pack nostrud. Photo booth anim 8-bit hella, PBR 3 wolf moon beard Helvetica. Salvia esse flexitarian Truffaut synth art party deep v chillwave.
                                                        </p>
                                                        <h4 class="location"><strong>Location:</strong>  Hall 1, Building A , Golden Street , <span>Southafrica</span> </h4>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="panel panel-default lgx-panel">
                                                <div class="panel-heading" role="tab" id="headingTwo3">
                                                    <div class="panel-title">
                                                        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion3" href="#collapseTwo3" aria-expanded="true" aria-controls="collapseTwo3">
                                                            <div class="lgx-single-schedule">
                                                                <div class="author">
                                                                    <img src="assets/img/schedule/speaker1.jpg" alt="Speaker" />
                                                                </div>
                                                                <div class="schedule-info">
                                                                    <h4 class="time">09:00 <span>Am</span> - 10.30 <span>Am</span></h4>
                                                                    <h3 class="title">Digital World Event Introduction</h3>
                                                                    <h4 class="author-info">By <span>Joanna Smith</span> , Design Apple</h4>
                                                                </div>
                                                            </div>
                                                        </a>
                                                    </div>
                                                </div>
                                                <div id="collapseTwo3" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                                                    <div class="panel-body">
                                                        <p class="text">
                                                            Meh synth Schlitz, tempor duis single-origin coffee ea next level ethnic fingerstache fanny pack nostrud. Photo booth anim 8-bit hella, PBR 3 wolf moon beard Helvetica. Salvia esse flexitarian Truffaut synth art party deep v chillwave.
                                                        </p>
                                                        <h4 class="location"><strong>Location:</strong>  Hall 1, Building A , Golden Street , <span>Southafrica</span> </h4>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="panel panel-default lgx-panel">
                                                <div class="panel-heading" role="tab" id="headingThree3">
                                                    <div class="panel-title">
                                                        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion3" href="#collapseThree3" aria-expanded="true" aria-controls="collapseThree3">
                                                            <div class="lgx-single-schedule">
                                                                <div class="author">
                                                                    <img src="assets/img/schedule/speaker1.jpg" alt="Speaker" />
                                                                </div>
                                                                <div class="schedule-info">
                                                                    <h4 class="time">09:00 <span>Am</span> - 10.30 <span>Am</span></h4>
                                                                    <h3 class="title">Digital World Event Introduction</h3>
                                                                    <h4 class="author-info">By <span>Joanna Smith</span> , Design Apple</h4>
                                                                </div>
                                                            </div>
                                                        </a>
                                                    </div>
                                                </div>
                                                <div id="collapseThree3" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                                                    <div class="panel-body">
                                                        <p class="text">
                                                            Meh synth Schlitz, tempor duis single-origin coffee ea next level ethnic fingerstache fanny pack nostrud. Photo booth anim 8-bit hella, PBR 3 wolf moon beard Helvetica. Salvia esse flexitarian Truffaut synth art party deep v chillwave.
                                                        </p>
                                                        <h4 class="location"><strong>Location:</strong>  Hall 1, Building A , Golden Street , <span>Southafrica</span> </h4>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                    </div>


                                    <div id="menu3" class="tab-pane fade">

                                        <div class="panel-group" id="accordion4" role="tablist" aria-multiselectable="true">
                                            <div class="panel panel-default lgx-panel">
                                                <div class="panel-heading" role="tab" id="headingOne4">
                                                    <div class="panel-title">
                                                        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion4" href="#collapseOne4" aria-expanded="true" aria-controls="collapseOne4">
                                                            <div class="lgx-single-schedule">
                                                                <div class="author">
                                                                    <img src="assets/img/schedule/speaker1.jpg" alt="Speaker" />
                                                                </div>
                                                                <div class="schedule-info">
                                                                    <h4 class="time">09:00 <span>Am</span> - 10.30 <span>Am</span></h4>
                                                                    <h3 class="title">Digital World Event Introduction</h3>
                                                                    <h4 class="author-info">By <span>Joanna Smith</span> , Design Apple</h4>
                                                                </div>
                                                            </div>
                                                        </a>
                                                    </div>
                                                </div>
                                                <div id="collapseOne4" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne4">
                                                    <div class="panel-body">
                                                        <p class="text">
                                                            Meh synth Schlitz, tempor duis single-origin coffee ea next level ethnic fingerstache fanny pack nostrud. Photo booth anim 8-bit hella, PBR 3 wolf moon beard Helvetica. Salvia esse flexitarian Truffaut synth art party deep v chillwave.
                                                        </p>
                                                        <h4 class="location"><strong>Location:</strong>  Hall 1, Building A , Golden Street , <span>Southafrica</span> </h4>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="panel panel-default lgx-panel">
                                                <div class="panel-heading" role="tab" id="headingTwo4">
                                                    <div class="panel-title">
                                                        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion4" href="#collapseTwo4" aria-expanded="true" aria-controls="collapseTwo4">
                                                            <div class="lgx-single-schedule">
                                                                <div class="author">
                                                                    <img src="assets/img/schedule/speaker1.jpg" alt="Speaker" />
                                                                </div>
                                                                <div class="schedule-info">
                                                                    <h4 class="time">09:00 <span>Am</span> - 10.30 <span>Am</span></h4>
                                                                    <h3 class="title">Digital World Event Introduction</h3>
                                                                    <h4 class="author-info">By <span>Joanna Smith</span> , Design Apple</h4>
                                                                </div>
                                                            </div>
                                                        </a>
                                                    </div>
                                                </div>
                                                <div id="collapseTwo4" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo4">
                                                    <div class="panel-body">
                                                        <p class="text">
                                                            Meh synth Schlitz, tempor duis single-origin coffee ea next level ethnic fingerstache fanny pack nostrud. Photo booth anim 8-bit hella, PBR 3 wolf moon beard Helvetica. Salvia esse flexitarian Truffaut synth art party deep v chillwave.
                                                        </p>
                                                        <h4 class="location"><strong>Location:</strong>  Hall 1, Building A , Golden Street , <span>Southafrica</span> </h4>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="panel panel-default lgx-panel">
                                                <div class="panel-heading" role="tab" id="headingThree4">
                                                    <div class="panel-title">
                                                        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion4" href="#collapseThree4" aria-expanded="true" aria-controls="collapseThree4">
                                                            <div class="lgx-single-schedule">
                                                                <div class="author">
                                                                    <img src="assets/img/schedule/speaker1.jpg" alt="Speaker" />
                                                                </div>
                                                                <div class="schedule-info">
                                                                    <h4 class="time">09:00 <span>Am</span> - 10.30 <span>Am</span></h4>
                                                                    <h3 class="title">Digital World Event Introduction</h3>
                                                                    <h4 class="author-info">By <span>Joanna Smith</span> , Design Apple</h4>
                                                                </div>
                                                            </div>
                                                        </a>
                                                    </div>
                                                </div>
                                                <div id="collapseThree4" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree4">
                                                    <div class="panel-body">
                                                        <p class="text">
                                                            Meh synth Schlitz, tempor duis single-origin coffee ea next level ethnic fingerstache fanny pack nostrud. Photo booth anim 8-bit hella, PBR 3 wolf moon beard Helvetica. Salvia esse flexitarian Truffaut synth art party deep v chillwave.
                                                        </p>
                                                        <h4 class="location"><strong>Location:</strong>  Hall 1, Building A , Golden Street , <span>Southafrica</span> </h4>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--//.ROW-->
                </div>
                <!-- //.CONTAINER -->
            </div>
            <!-- //.INNER -->
        </div>
    </section>
    <!--SCHEDULE END-->
</asp:Content>

