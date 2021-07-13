<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DetalleEvento.aspx.cs" Inherits="DetalleEvento" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <!--SCHEDULE-->
    <section>
        <div id="lgx-schedule" class="lgx-schedule lgx-schedule2 lgx-schedule-black">
            <div class="lgx-inner">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="lgx-heading lgx-heading-white">
                                <h2 class="heading">Información del Conferencista</h2>
                                <h3 class="subheading">Detalle de la conferenia/poster o demas</h3>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="lgx-tab lgx-tab2">
                                <ul class="nav nav-pills lgx-nav lgx-nav-nogap lgx-nav-colorful">
                                    <!--lgx-nav-nogap lgx-nav-colorful-->
                                    <li class="active"><a data-toggle="pill" href="#home">
                                        <h3>Información  <span>Conferencia</span></h3>

                                    </a></li>
                                    <li><a data-toggle="pill" href="#menu1">
                                        <h3>Conferencia <span>En Vivo</span></h3>

                                    </a></li>
                                    <li><a data-toggle="pill" href="#menu2">
                                        <h3>Productos <span>Asociados</span></h3>

                                    </a></li>
                                    <li><a data-toggle="pill" href="#menu3">
                                        <h3>Comentarios <span>Galeria</span></h3>

                                    </a></li>
                                </ul>
                                <div class="tab-content lgx-tab-content">


                                    <div id="home" class="tab-pane fade in active">
                                        <main>
                                            <div class="lgx-post-wrapper" style="background: #fff">
                                                <!--News-->
                                                <section>
                                                    <div class="container">
                                                        <div class="row">
                                                            <div class="col-xs-12">
                                                                <article>
                                                                    <header>
                                                                        <figure>
                                                                            <img src="assets/img/speakers/speaker1.jpg" alt="New" height="500px" />
                                                                        </figure>
                                                                        <div class="text-area">
                                                                            <div class="speaker-info">
                                                                                <h1 class="title"><a href="speaker.html">Jonathon Doe</a></h1>
                                                                                <h4 class="subtitle">Ceo of LogicHunt</h4>
                                                                            </div>
                                                                            <ul class="list-inline lgx-social">
                                                                                <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                                                                <li><a href="#"><i class="fa fa-facebook-f" aria-hidden="true"></i></a></li>
                                                                                <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                                                                                <li><a href="#"><i class="fa fa-youtube-play" aria-hidden="true"></i></a></li>
                                                                                <li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                                                                            </ul>
                                                                        </div>
                                                                    </header>
                                                                    <section>
                                                                        <p>
                                                                            Cras porttitor convallis ligula, at elementum erat mattis quis. In vitae vulputate tellus, sed laoreet est. Nam eget
                                        dolor non eros rutrum facilisis ut vel sapien. Aenean sed vehicula massa. Morbi imperdiet egestas ullamcorperet.
                                        Expo neque, congue nec nibh in, pellentesque fringilla risus. Suspendisse hendrerit et sapien ut pretium. Aenean
                                        nulla ipsum, facilisis eu porta non, rutrum sit amet nibh. Quisque id diam feugiat, pharetra arcu eget, bibendum
                                        tortor. Vivamus aliquam lacus id leo tristique sagittis. Pellentesque mattis diam metus, id commodo ex placerat
                                        vitae. Curabitur lobortis justo ante, in varius leo congue id. Etiam a libero elementum, posuere est at, sodales
                                        justo. Proin nec venenatis metus. Cras porttitor convallis ligula, at elementum erat mattis quis. In vitae vulputate
                                        tellus, sed laoreet est. Nam eget dolor non eros rutrum facilisis ut vel sapien. Aenean sed vehicula massa. Morbi
                                        imperdiet egestas ullamcorperet. Expo neque, congue nec nibh in, pellentesque fringilla risus. Suspendisse
                                        hendrerit et sapien ut pretium. Aenean nulla ipsum, facilisis eu porta non, rutrum sit amet nibh. Quisque id diam
                                        feugiat, pharetra arcu eget, bibendum tortor. Vivamus aliquam lacus id leo tristique sagittis. Pellentesque mattis
                                        diam metus, id commodo ex placerat vitae.
                                                                        </p>
                                                                        <blockquote>
                                                                            <p>Suspendisse hendrerit et sapien ut pretium. Aenean nulla ipsum, facilisis eu porta non, rutrum sit amet nibh. Quisque id diam feugiat, pharetra arcu eget, bibendum tortor. </p>
                                                                            <footer>Someone famous in <cite title="Source Title">Source Title</cite></footer>
                                                                        </blockquote>
                                                                        <blockquote>
                                                                            Suspendisse hendrerit et sapien ut pretium. Aenean nulla ipsum, facilisis eu porta non, rutrum sit amet nibh. Quisque id diam feugiat, pharetra arcu eget, bibendum tortor.
                                                                        </blockquote>
                                                                    </section>
                                                                    <footer>
                                                                        <div class="row">
                                                                            <div class="col-xs-12">
                                                                                <h4 class="title">Share</h4>
                                                                                <div class="lgx-share">
                                                                                    <ul class="list-inline lgx-social">
                                                                                        <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                                                                        <li><a href="#"><i class="fa fa-facebook-f" aria-hidden="true"></i></a></li>
                                                                                        <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                                                                                        <li><a href="#"><i class="fa fa-youtube-play" aria-hidden="true"></i></a></li>
                                                                                        <li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                                                                                    </ul>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </footer>
                                                                </article>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- //.CONTAINER -->
                                                </section>
                                                <!--News END-->
                                            </div>
                                        </main>

                                    </div>


                                    <div id="menu1" class="tab-pane fade">

                                        <!--VIDEO-->
                                        <section>
                                            <div id="lgx-video" class="lgx-video lgx-video2">
                                                <div class="lgx-inner">
                                                    <div class="container">
                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <!--<h2 class="lgx-video-title"><span>Watch Our Promo video!</span>How to make an online order</h2>-->
                                                                <div class="lgx-video-area">
                                                                    <figure>
                                                                        <figcaption>
                                                                            <div class="video-icon">
                                                                                <div class="lgx-vertical">
                                                                                    <a id="myModalLabel" class="icon" href="#" data-toggle="modal" data-target="#lgx-modal">
                                                                                        <i class="fa fa-play " aria-hidden="true"></i>
                                                                                    </a>
                                                                                </div>
                                                                            </div>
                                                                        </figcaption>
                                                                    </figure>
                                                                    <!-- Modal-->
                                                                    <div id="lgx-modal" class="modal fade lgx-modal">
                                                                        <div class="modal-dialog">
                                                                            <div class="modal-content">
                                                                                <div class="modal-header">
                                                                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                                                                </div>

                                                                                <div class="modal-body">
                                                                                    <iframe id="modalvideo" src="https://www.youtube.com/embed/dFgXDeQbnB0" allowfullscreen></iframe>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <!-- //.Modal-->
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- //.CONTAINER -->
                                                </div>
                                                <!-- //.INNER -->
                                            </div>
                                        </section>
                                        <!--//.VIDEO END-->

                                    </div>


                                    <div id="menu2" class="tab-pane fade">

                                        <main>
                                            <div class="lgx-page-wrapper" style="background: #fff;padding:25px 0">
                                                <!--News-->
                                                <section>
                                                    <div class="container" style="width:95%">
                                                        <div class="row">
                                                            <div class="col-xs-12 col-sm-6 col-md-3">
                                                                <div class="lgx-single-news">
                                                                    <figure>
                                                                        <a href="news-single.html">
                                                                            <img src="assets/img/news/news1.jpg" alt=""></a>
                                                                    </figure>
                                                                    <div class="single-news-info">

                                                                        <h3 class="title"><a href="news-single.html">Producto 1</a></h3>
                                                                        <a class="lgx-btn lgx-btn-white lgx-btn-sm" href="#"><span>Leer Más</span></a>
                                                                    </div>
                                                                </div>
                                                            </div>

                                                            <div class="col-xs-12 col-sm-6 col-md-3">
                                                                <div class="lgx-single-news">
                                                                    <figure>
                                                                        <a href="news-single.html">
                                                                            <img src="assets/img/news/news1.jpg" alt=""></a>
                                                                    </figure>
                                                                    <div class="single-news-info">

                                                                        <h3 class="title"><a href="news-single.html">Producto 2</a></h3>
                                                                        <a class="lgx-btn lgx-btn-white lgx-btn-sm" href="#"><span>Leer Más</span></a>
                                                                    </div>
                                                                </div>
                                                            </div>

                                                            <div class="col-xs-12 col-sm-6 col-md-3">
                                                                <div class="lgx-single-news">
                                                                    <figure>
                                                                        <a href="news-single.html">
                                                                            <img src="assets/img/news/news1.jpg" alt=""></a>
                                                                    </figure>
                                                                    <div class="single-news-info">

                                                                        <h3 class="title"><a href="news-single.html">Producto 3</a></h3>
                                                                        <a class="lgx-btn lgx-btn-white lgx-btn-sm" href="#"><span>Leer Más</span></a>
                                                                    </div>
                                                                </div>
                                                            </div>


                                                            <div class="col-xs-12 col-sm-6 col-md-3">
                                                                <div class="lgx-single-news">
                                                                    <figure>
                                                                        <a href="news-single.html">
                                                                            <img src="assets/img/news/news1.jpg" alt=""></a>
                                                                    </figure>
                                                                    <div class="single-news-info">

                                                                        <h3 class="title"><a href="news-single.html">Producto 4</a></h3>
                                                                        <a class="lgx-btn lgx-btn-white lgx-btn-sm" href="#"><span>Leer Más</span></a>
                                                                    </div>
                                                                </div>
                                                            </div>


                                                            <div class="col-xs-12 col-sm-6 col-md-3">
                                                                <div class="lgx-single-news">
                                                                    <figure>
                                                                        <a href="news-single.html">
                                                                            <img src="assets/img/news/news1.jpg" alt=""></a>
                                                                    </figure>
                                                                    <div class="single-news-info">

                                                                        <h3 class="title"><a href="news-single.html">Producto 5</a></h3>
                                                                        <a class="lgx-btn lgx-btn-white lgx-btn-sm" href="#"><span>Leer Más</span></a>
                                                                    </div>
                                                                </div>
                                                            </div>

                                                            <div class="col-xs-12 col-sm-6 col-md-3">
                                                                <div class="lgx-single-news">
                                                                    <figure>
                                                                        <a href="news-single.html">
                                                                            <img src="assets/img/news/news1.jpg" alt=""></a>
                                                                    </figure>
                                                                    <div class="single-news-info">

                                                                        <h3 class="title"><a href="news-single.html">Producto 6</a></h3>
                                                                        <a class="lgx-btn lgx-btn-white lgx-btn-sm" href="#"><span>Leer Más</span></a>
                                                                    </div>
                                                                </div>
                                                            </div>

                                                        </div>
                                                    </div>
                                                    <!-- //.CONTAINER -->
                                                </section>
                                                <!--News END-->
                                            </div>
                                        </main>

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

