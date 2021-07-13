<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador/MasterPage.master" AutoEventWireup="true" CodeFile="DetallesStand.aspx.cs" Inherits="Administrador_DetallesStand" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .edit {
            display: none;
        }


    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContenTitulo" runat="Server">
    <h5>Detalles de Stand</h5>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContenAccionesTitulo" runat="Server">
    <a class="btn btn-primary" href="Stand.aspx"><i class="fas fa-arrow-left"></i> Volver</a>
    <button type="button" class="btn btn-danger" onclick="showEdit()">Editar</button>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContenContenido" runat="Server">

    <div class="d-flex justify-content-between mb-4" role="group" style="background: white;
    padding: 15px;
    border-radius: 7px;">
        <div>
            
            <button type="button" class="btn btn-default" runat="server" onserverclick="btnSpan1_Click" id="btnSpan1">
                <span class="badge badge-primary" runat="server" id="span1">1. Informacion general</span>
            </button>
        </div>
        <div>
            <button type="button" class="btn btn-default" runat="server" onserverclick="btnSpan2_Click">
                <span class="badge badge-default" runat="server" id="span2">2. Redes sociales</span>
            </button>
        </div>
        <div>
            <button type="button" class="btn btn-default" runat="server" onserverclick="btnSpan3_Click">
                <span class="badge badge-default" runat="server" id="span3">3. Productos y/o servicios</span>
                
            </button>
        </div>
        <div>
            <button type="button" class="btn btn-default" runat="server" onserverclick="btnSpan4_Click">
                <span class="badge badge-default" runat="server" id="span4">4. Galeria de fotos</span>
                
            </button>
        </div>
    </div>

    <div id="div1" runat="server">
        
        <!-- Descripcion General -->

        <h5>
            <span class="badge badge-primary" style="border-radius: 50%">1</span>
            Información general
        </h5>
        <div class="form-group">
            <label>Nombre del stand</label>
            <asp:TextBox runat="server" class="form-control" />
        </div>
        <div class="form-group">
            <label>Descripción de la empresa</label>
            <textarea runat="server" class="form-control"></textarea>
        </div>
        <div class="form-group">
            <label>Localización</label>
            <asp:TextBox runat="server" class="form-control" />
        </div>
        <div class="form-group">
            <label>Accesibilidad al evento</label>
            <select class="form-control">
                <option selected>Abierto</option>
                <option>Cerrado</option>
            </select>
        </div>
        <div class="form-row">
            <div class="form-group col-6">
                <label>Latitud</label>
                <asp:TextBox runat="server" class="form-control" />
            </div>
            <div class="form-group col-6">
                <label>Longitud</label>
                <asp:TextBox runat="server" class="form-control" />
            </div>
        </div>
        <hr />
        <div class="form-group">
            <div class="text-center" style="font-size:20px">
                <i class="fas fa-address-card font-weight-bold"></i>
                <p class="font-weight-bold">Información de contacto</p>
            </div>
        </div>
        <div class="form-row">
            <div class="form-group col-md-6">
                <label>Nombre</label>
                <asp:TextBox runat="server" class="form-control"/>
            </div>
            <div class="form-group col-md-6">
                <label>Cargo</label>
                <asp:TextBox runat="server" class="form-control"/>
            </div>
            <div class="form-group col-md-6">
                <label>Correo</label>
                <asp:TextBox runat="server" type="email" class="form-control"/>
            </div>
            <div class="form-group col-md-6">
                <label>Celular</label>
                <asp:TextBox runat="server" type="number" class="form-control"/>
            </div>
        </div>
        <asp:Button Text="Guardar Cambios" runat="server" class="btn btn-primary w-100 edit" id="btnSiguiente1" OnClick="btnSiguiente1_Click"/>
    </div>
    
    <div id="div2" runat="server" style="display:none">
        <!-- Redes Social -->
        <h5>
            <span class="badge badge-primary" style="border-radius: 50%">2</span>
            Redes Sociales
        </h5>
        <div id="inputsDiv2" runat="server" class="edit">
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label>Red social</label>
                    <select class="form-control">
                        <option selected disabled>Seleccione una red social</option>
                        <option>Facebook</option>
                        <option>Telegram</option>
                        <option>Instagram</option>
                    </select>
                </div>
                <div class="form-group col-md-6">
                    <label>Dirección de red</label>
                    <asp:TextBox runat="server" CssClass="form-control" />
                </div>
            </div>
            <button class="btn btn-success w-100">Agregar Red <i class="fas fa-plus"></i></button>
        </div>
        <div class="card mb-2">
            <div class="card-body">
                <h5 class="card-title">Redes sociales</h5>
                <div class="row text-center">
                    <div class="col-md-3 mt-2 mb-2">
                        <h5>Facebook</h5>
                        <asp:Image CssClass="mt-2 mb-2" ImageUrl="https://cdn.icon-icons.com/icons2/91/PNG/512/facebook_16423.png" Width="40px" runat="server" />
                        <p>
                            <a href="http://facebook.com/evento">http://facebook.com/evento</a>
                        </p>
                        <button class="btn btn-danger edit m-auto">Eliminar</button>
                    </div>
                    <div class="col-md-3 mt-2 mb-2">
                        <h5>Facebook</h5>
                        <asp:Image CssClass="mt-2 mb-2" ImageUrl="https://cdn.icon-icons.com/icons2/91/PNG/512/facebook_16423.png" Width="40px" runat="server" />
                        <p>
                            <a href="http://facebook.com/evento">http://facebook.com/evento</a>
                        </p>
                        <button class="btn btn-danger edit m-auto">Eliminar</button>
                    </div>
                    <div class="col-md-3 mt-2 mb-2">
                        <h5>Facebook</h5>
                        <asp:Image CssClass="mt-2 mb-2" ImageUrl="https://cdn.icon-icons.com/icons2/91/PNG/512/facebook_16423.png" Width="40px" runat="server" />
                        <p>
                            <a href="http://facebook.com/evento">http://facebook.com/evento</a>
                        </p>
                        <button class="btn btn-danger edit m-auto">Eliminar</button>
                    </div>
                   
                </div>
            </div>
        </div>
        <asp:Button Text="Guardar Cambios" runat="server" class="btn btn-primary w-100 edit" id="btnSiguiente2" OnClick="btnSiguiente2_Click"/>
    
    </div>

    <div id="div3" runat="server" style="display:none">

        <!-- Catalogo -->
    
        <h5>
            <span class="badge badge-primary" style="border-radius: 50%">3</span>
            Productos y/o servicios
        </h5>
        <div class="edit">
            <div class="form-row">
                <div class="form-group col-md-4">
                    <label>Nombre</label>
                    <input type="text" class="form-control" />
                </div>
                <div class="form-group col-md-4">
                    <label>Categoria</label>
                    <select class="form-control">
                        <option>Seleccione una opcion</option>
                    </select>
                </div>
                <div class="form-group col-md-4">
                    <label>Precio</label>
                    <input type="text" class="form-control" />
                </div>
                <div class="form-group col-md-12">
                    <label>Imagen</label>
                    <input type="file" class="form-control" />
                </div>
                <div class="form-group col-md-12">
                    <label>Descripción del producto</label>
                    <textarea class="form-control"></textarea>
                </div>
            </div>
            <button class="btn btn-success w-100">Agregar <i class="fas fa-plus"></i></button>
        </div>
        <div class="row p-1 mb-2">
            <div class="card col-md-3">
                <div class="card-body">
                    <div class="text-center">
                        <h5 class="card-title">Bateria</h5>
                        <p>
                            <span class="badge badge-info">Equipo musical</span>
                        </p>
                        <asp:Image ImageUrl="https://img.vixdata.io/pd/jpg-large/es/sites/default/files/imj/hogartotal/c/como-limpiar-una-bateria-facilmente-1.jpg" Width="150px" runat="server" />
                        <p>Precio: <span>$10000</span></p>
                        <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo</p>
                    </div>
                </div>
                <div class="card-footer justify-content-center">
                    <button class="btn btn-danger edit">Eliminar</button>
                </div>
            </div>
            <div class="card col-md-3">
                <div class="card-body">
                    <div class="text-center">
                        <h5 class="card-title">Bateria</h5>
                        <p>
                            <span class="badge badge-info">Equipo musical</span>
                        </p>
                        <asp:Image ImageUrl="https://img.vixdata.io/pd/jpg-large/es/sites/default/files/imj/hogartotal/c/como-limpiar-una-bateria-facilmente-1.jpg" Width="150px" runat="server" />
                        <p>Precio: <span>$10000</span></p>
                        <p>Sed ut perspiciatis o</p>
                    </div>
                </div>
                <div class="card-footer justify-content-center">
                    <button class="btn btn-danger edit">Eliminar</button>
                </div>
            </div>
            <div class="card col-md-3">
                <div class="card-body">
                    <div class="text-center">
                        <h5 class="card-title">Bateria</h5>
                        <p>
                            <span class="badge badge-info">Equipo musical</span>
                        </p>
                        <asp:Image ImageUrl="https://img.vixdata.io/pd/jpg-large/es/sites/default/files/imj/hogartotal/c/como-limpiar-una-bateria-facilmente-1.jpg" Width="150px" runat="server" />
                        <p>Precio: <span>$10000</span></p>
                        <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo</p>
                    </div>
                </div>
                <div class="card-footer justify-content-center">
                    <button class="btn btn-danger edit">Eliminar</button>
                </div>
            </div>
            <div class="card col-md-3">
                <div class="card-body">
                    <div class="text-center">
                        <h5 class="card-title">Bateria</h5>
                        <p>
                            <span class="badge badge-info">Equipo musical</span>
                        </p>
                        <asp:Image ImageUrl="https://img.vixdata.io/pd/jpg-large/es/sites/default/files/imj/hogartotal/c/como-limpiar-una-bateria-facilmente-1.jpg" Width="150px" runat="server" />
                        <p>Precio: <span>$10000</span></p>
                        <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo</p>
                    </div>
                </div>
                <div class="card-footer justify-content-center">
                    <button class="btn btn-danger edit">Eliminar</button>
                </div>
            </div>
            <div class="card col-md-3">
                <div class="card-body">
                    <div class="text-center">
                        <h5 class="card-title">Bateria</h5>
                        <p>
                            <span class="badge badge-info">Equipo musical</span>
                        </p>
                        <asp:Image ImageUrl="https://img.vixdata.io/pd/jpg-large/es/sites/default/files/imj/hogartotal/c/como-limpiar-una-bateria-facilmente-1.jpg" Width="150px" runat="server" />
                        <p>Precio: <span>$10000</span></p>
                        <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo</p>
                    </div>
                </div>
                <div class="card-footer justify-content-center">
                    <button class="btn btn-danger edit">Eliminar</button>
                </div>
            </div>
            <div class="card col-md-3">
                <div class="card-body">
                    <div class="text-center">
                        <h5 class="card-title">Bateria</h5>
                        <p>
                            <span class="badge badge-info">Equipo musical</span>
                        </p>
                        <asp:Image ImageUrl="https://img.vixdata.io/pd/jpg-large/es/sites/default/files/imj/hogartotal/c/como-limpiar-una-bateria-facilmente-1.jpg" Width="150px" runat="server" />
                        <p>Precio: <span>$10000</span></p>
                        <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam</p>
                    </div>
                </div>
                <div class="card-footer justify-content-center">
                    <button class="btn btn-danger edit">Eliminar</button>
                </div>
            </div>
        </div>
        <asp:Button Text="Guardar Cambios" runat="server" class="btn btn-primary w-100 edit" id="btnSiguiente3" OnClick="btnSiguiente3_Click"/>
    
    </div>


    <div id="div4" runat="server" style="display:none">

        <!-- Galeria de fotos -->

        <h5>
            <span class="badge badge-primary" style="border-radius: 50%">4</span>
            Galería de fotos
        </h5>
    
        <div class="edit">
            <div class="form-row">
                <div class="form-group col-md-12">
                    <label>Titulo de foto</label>
                    <input type="text" class="form-control" />
                </div>
                <div class="form-group col-md-6">
                    <label>Imagen</label>
                    <input type="file" class="form-control" />
                </div>
                <div class="form-group col-md-6">
                    <label>Url Video</label>
                    <input type="text" class="form-control" />
                </div>
                <div class="form-group col-md-12">
                    <label>Descripción de foto</label>
                    <textarea class="form-control"></textarea>
                </div>
            </div>
            <button class="btn btn-success w-100">Agregar <i class="fas fa-plus"></i></button>
        </div>
        <div class="row p-1 mb-2">
            <div class="card col-md-6">
                <div class="card-body">
                    <div class="text-center">
                        <h5 class="card-title">Concierto</h5>
                        <asp:Image ImageUrl="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT578xIt2Pqk_JURkETu50eUTKZknXrle5yzogc9IKlanIj3vJ0KJILphZMONaMzmCIwHU&usqp=CAU" Width="250px" runat="server" />
                        <p>Lorem ipsum dolor sit amet Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </p>
                    </div>
                </div>
                <div class="card-footer justify-content-center">
                        <button class="btn btn-danger edit">Eliminar</button>
                </div>

            </div>
            <div class="card col-md-6">
                <div class="card-body">
                    <div class="text-center">
                        <asp:Image ImageUrl="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQix1UpaxFv4MP8r0h1WahRTyGN9MCryDZ2Sw&usqp=CAU" Width="250px" runat="server" />
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </p>
                    </div>
                </div>
                <div class="card-footer justify-content-center">
                        <button class="btn btn-danger edit">Eliminar</button>
                </div>
            </div>
            <button class="btn btn-primary mt-2 w-100 edit">Guardar Cambios</button>
      
     
        </div>
    </div>
    <script>
        document.addEventListener("DOMContentLoaded", function () {
            $("input").prop("readonly", "true")
            $("textarea").prop("readonly", "true")
            $("select").attr("readonly", "true")
        });

        function showEdit() {
            $("input").removeAttr("readonly")
            $("textarea").removeAttr("readonly")
            $("select").removeAttr("readonly")
            $(".edit").css("display", "block")
        }
    </script>
</asp:Content>



