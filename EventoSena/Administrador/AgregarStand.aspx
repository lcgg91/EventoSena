<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador/MasterPage.master" AutoEventWireup="true" CodeFile="AgregarStand.aspx.cs" Inherits="Administrador_AgregarStand" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContenTitulo" runat="Server">
    <h5>Agregar Stand</h5>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContenAccionesTitulo" runat="Server">
    <a class="btn btn-primary" href="Stand.aspx"><i class="fas fa-arrow-left"></i> Volver</a>
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
            <asp:TextBox runat="server" class="form-control" id="txtNombreStand"/>
        </div>
        <div class="form-group">
            <label>Descripción de la empresa</label>
            <textarea runat="server" class="form-control" id="txtDescripcionEmpresa"></textarea>
        </div>
        <div class="form-group">
            <label>Imagen de la empresa</label>
            <asp:FileUpload id="fileImagenEmpresa" runat="server" CssClass="form-control"/>
            <img id="imageEmpresa" runat="server" style="width: 350px"/>
        </div>
        <div class="form-group">
            <label>Localización</label>
            <asp:TextBox runat="server" class="form-control" ID="txtLocalizacion" />
        </div>
        <div class="form-group">
            <label>Accesibilidad al evento</label>
            <select class="form-control" runat="server" id="txtEventoCerrado">
                <option selected>Abierto</option>
                <option>Cerrado</option>
            </select>
        </div>
        <div class="form-row">
            <div class="form-group col-6">
                <label>Latitud</label>
                <asp:TextBox runat="server" class="form-control" id="txtLatitud"/>
            </div>
            <div class="form-group col-6">
                <label>Longitud</label>
                <asp:TextBox runat="server" class="form-control" ID="txtLongitud" />
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
                <asp:TextBox runat="server" class="form-control" ID="txtNombreContacto"/>
            </div>
            <div class="form-group col-md-6">
                <label>Cargo</label>
                <asp:TextBox runat="server" class="form-control" ID="txtCargoContacto"/>
            </div>
            <div class="form-group col-md-6">
                <label>Correo</label>
                <asp:TextBox runat="server" type="email" class="form-control" ID="txtEmailContacto"/>
            </div>
            <div class="form-group col-md-6">
                <label>Celular</label>
                <asp:TextBox runat="server" type="number" class="form-control" ID="txtCelularContacto"/>
            </div>
        </div>
        <asp:Button Text="Guardar Cambios / Siguiente" runat="server" class="btn btn-primary w-100" id="btnSiguiente1" OnClick="btnSiguiente1_Click"/>
    </div>
    
    <div id="div2" runat="server" style="display:none">
        <!-- Redes Social -->
        <asp:Textbox runat="server" id="txtIdRedesSocialesStand" Style="display:none"/>
        <asp:Button ID="Button1" Runat="server" OnClick="EliminarRedSocial" Style="display:none"/>
        <h5>
            <span class="badge badge-primary" style="border-radius: 50%">2</span>
            Redes Sociales
        </h5>
        <div class="form-row">
            <div class="form-group col-md-6">
                <label>Red social</label>
                <select class="form-control" id="selectRedSocial" runat="server">
                    <option selected disabled value="">Seleccione una red social</option>
                </select>
            </div>
            <div class="form-group col-md-6">
                <label>Dirección de red</label>
                <asp:TextBox runat="server" CssClass="form-control" ID="txtDireccionRed" />
            </div>
        </div>
        <button class="btn btn-success w-100" runat="server" id="btnAgregarRedSocial" onserverclick="btnAgregarRedSocial_ServerClick">Agregar Red <i class="fas fa-plus"></i></button>
        <div class="card mb-2">
            <div class="card-body">
                <h5 class="card-title">Redes sociales</h5>
                <div class="row text-center" id="listRedSocial" runat="server">
                           
                </div>
            </div>
        </div>
        <asp:Button Text="Siguiente" runat="server" class="btn btn-primary w-100" id="btnSiguiente2" OnClick="btnSiguiente2_Click"/>
        <script>
            function eliminarRed(id) {
                document.getElementById('<%=txtIdRedesSocialesStand.ClientID%>').value = id;
                document.getElementById('<%=Button1.ClientID%>').click();
     
            };
        </script>
    </div>

    <div id="div3" runat="server" style="display:none">

        <!-- Catalogo -->
    
        <h5>
            <span class="badge badge-primary" style="border-radius: 50%">3</span>
            Productos y/o servicios
        </h5>
    
        <div class="form-row">
            <div class="form-group col-md-4">
                <label>Nombre</label>
                <input type="text" class="form-control" runat="server" id="txtNombreProducto"/>
            </div>
            <div class="form-group col-md-4">
                <label>Categoria</label>
                <select class="form-control" runat="server" id="selectCategoriaProducto">
                    <option disabled selected value="">Seleccione una opcion</option>
                </select>
            </div>
            <div class="form-group col-md-4">
                <label>Precio</label>
                <input type="text" class="form-control" runat="server" id="txtPrecioProducto"/>
            </div>
            <div class="form-group col-md-12">
                <label>Imagen</label>
                <asp:FileUpload type="file" class="form-control" runat="server" ID="fileImagenProducto" />
            </div>
            <div class="form-group col-md-12">
                <label>Descripción del producto</label>
                <textarea class="form-control" runat="server" id="txtDescripcionProducto"></textarea>
            </div>
        </div>
        <button class="btn btn-success w-100" runat="server" id="btnAgregarProducto" onserverclick="btnAgregarProducto_ServerClick">Agregar <i class="fas fa-plus"></i></button>
        <div class="row p-1 mb-2" id="listProductos" runat="server">
           
        </div>
        <asp:Button Text="Siguiente" runat="server" class="btn btn-primary w-100" id="btnSiguiente3" OnClick="btnSiguiente3_Click"/>
    
    </div>


    <div id="div4" runat="server" style="display:none">

        <!-- Galeria de fotos -->

        <h5>
            <span class="badge badge-primary" style="border-radius: 50%">4</span>
            Galería de fotos
        </h5>
    
        
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
        <div class="row p-1 mb-2">
            <div class="card col-md-6">
                <div class="card-body">
                    <div class="text-center">
                        <h5 class="card-title">Concierto</h5>
                        <asp:Image ImageUrl="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT578xIt2Pqk_JURkETu50eUTKZknXrle5yzogc9IKlanIj3vJ0KJILphZMONaMzmCIwHU&usqp=CAU" Width="350px" runat="server" />
                        <p>Lorem ipsum dolor sit amet Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </p>
                    </div>
                </div>
                <div class="card-footer justify-content-center">
                        <button class="btn btn-danger">Eliminar</button>
                </div>

            </div>
            <div class="card col-md-6">
                <div class="card-body">
                    <div class="text-center">
                        <h5 class="card-title">Integrantes</h5>
                        <asp:Image ImageUrl="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQix1UpaxFv4MP8r0h1WahRTyGN9MCryDZ2Sw&usqp=CAU" Width="400px" runat="server" />
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </p>
                    </div>
                </div>
                <div class="card-footer justify-content-center">
                        <button class="btn btn-danger">Eliminar</button>
                </div>
            </div>
            <button class="btn btn-primary mt-2 w-100" id="btnGuardarCambios" runat="server" onserverclick="btnGuardarCambios_ServerClick">Guardar Cambios</button>
      
     
        </div>
    </div>

</asp:Content>

