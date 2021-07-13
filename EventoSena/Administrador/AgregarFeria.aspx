<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador/MasterPage.master" AutoEventWireup="true" CodeFile="AgregarFeria.aspx.cs" Inherits="Administrador_AgregarFeria" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContenTitulo" Runat="Server">
<h5>Agregar Feria</h5>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContenAccionesTitulo" Runat="Server">
    <a class="btn btn-primary" href="Ferias.aspx"><i class="fas fa-arrow-left"></i> Volver</a>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContenContenido" Runat="Server">

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
                <span class="badge badge-default" runat="server" id="span2">2. Presentaciones</span>
            </button>
        </div>
        <div>
            <button type="button" class="btn btn-default" runat="server" onserverclick="btnSpan3_Click">
                <span class="badge badge-default" runat="server" id="span3">3. Galeria de fotos</span>
                
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
            <label>Nombre de Feria</label>
            <asp:TextBox runat="server" class="form-control" />
        </div>
        <div class="form-row">
            <div class="form-group col-md-6">
                <label>Fecha Inicio</label>
                <asp:TextBox runat="server" type="date" class="form-control" />
            </div>
            <div class="form-group col-md-6">
                <label>Fecha Fin</label>
                <asp:TextBox runat="server" type="date" class="form-control" />
            </div>
        </div>
        <div class="form-group">
            <label>Imagen de feria </label>
            <asp:TextBox runat="server" type="file" class="form-control" />
        </div>
        <div class="form-group">
            <label>Descripción</label>
            <textarea class="form-control"></textarea>
        </div>
        <div class="form-group">
            <select class="form-control">
                <option disabled selected>Seleccione una plantilla</option>
                <option>1</option>
                <option>2</option>
                <option>3</option>
            </select>
        </div>
        <asp:Button Text="Guardar Cambios / Siguiente" runat="server" class="btn btn-primary w-100" id="btnSiguiente1" OnClick="btnSiguiente1_Click"/>
     
    </div>
    
    <div id="div2" runat="server" style="display:none">
        <!-- Presentaciones  -->
        <h5>
            <span class="badge badge-primary" style="border-radius: 50%">2</span>
            Presentaciones
        </h5>
        <div class="form-row">
            <div class="form-group col-md-6">
                <label>Fecha de presentación</label>
                <asp:TextBox runat="server" Type="date" CssClass="form-control"/>
            </div>
            <div class="form-group col-md-6">
                <label>Hora</label>
                <asp:TextBox runat="server" Type="time" CssClass="form-control"/>
            </div>
        </div>
        <div class="form-group">
            <label>Categorias</label>
            <div class="form-row">
                <div class="form-group col-md-11">
                    <select class="form-control">
                        <option>Seleccione una categoria</option>
                        <option>...</option>
                    </select>
                </div>
                <div class="form-group col-md-1">
                    <button class="btn btn-success w-100"><i class="fas fa-plus"></i></button>
                </div>
            </div>
        </div>
        <div class="form-row">
            <div class="form-group col-md-11">
                <input type="text" class="form-control" disabled/>
            </div>
            <div class="form-group col-md-1">
                <button class="btn btn-danger w-100"><i class="fas fa-plus"></i></button>
            </div>
        </div>
        <div class="form-row">
            <div class="form-group col-md-6">
                <label>Nombre de Empresa</label>
                <asp:TextBox runat="server" class="form-control"/>
            </div>
            <div class="form-group col-md-6">
                <label>Correo de la Empresa</label>
                <asp:TextBox runat="server" class="form-control"/>
            </div>
        </div>
        <div class="form-group">
            <label>Imagen de la Empresa</label>
            <asp:TextBox runat="server" Type="file" CssClass="form-control"/>
        </div>
        <div class="form-group">
            <label>Descripción de la Empresa</label>
            <textarea class="form-control"></textarea>
        </div>
        <div class="form-row">
            <div class="form-group col-md-6">
                <label>Invitado Especial</label>
                <select class="form-control">
                    <option disabled selected>Seleccione una opción</option>
                    <option value="1">Si</option>
                    <option value="0">No</option>
                </select>
            </div>
            <div class="form-group col-md-6">
                <label>Contacto</label>
                <select class="form-control">
                    <option disabled selected>Seleccione una opción</option>
                    <option value="1">Si</option>
                    <option value="0">No</option>
                </select>
            </div>
        </div>
        <div class="form-row">
           
            <div class="form-group col-md-6">
                <label>Chat</label>
                <select class="form-control">
                    <option disabled selected>Seleccione una opción</option>
                    <option value="1">Si</option>
                    <option value="0">No</option>
                </select>
            </div>
            <div class="form-group col-md-6">
                <label>Galeria</label>
                <select class="form-control">
                    <option disabled selected>Seleccione una opción</option>
                    <option value="1">Si</option>
                    <option value="0">No</option>
                </select>
            </div>
        </div>
         <div class="form-group">
            <label>Evento en Vivo</label>
            <select class="form-control" id="selectEventoVivo">
                <option disabled selected>Seleccione una opción</option>
                <option value="1">Si</option>
                <option value="0">No</option>
            </select>
        </div>
        <div class="form-group" style="display:none" id="divUrlEvento">
            <label>Url de Evento en Vivo</label>
            <asp:TextBox runat="server" class="form-control"/>
        </div>
        <asp:Label Text="" runat="server" id="label1"/>
        <div class="form-group">
            <label>id Plantilla</label>
            <select class="form-control">
                <option disabled selected>Seleccione una plantilla</option>
                <option>1</option>
                <option>2</option>
                <option>3</option>
            </select>
        </div>
        
        <button class="btn btn-success mb-2 w-100">Agregar <i class="fas fa-plus"></i></button>
        
         <div class="row p-1 mb-2">
            <div class="card col-md-6">
                <div class="card-body">
                    <div class="card-title text-center">
                        <h5>Equipos y Controles S.A</h5>
                    </div>
                    <div class="text-center">
                        <div class="row">
                            <div class="col-md-6">
                                <b>Fecha de presentación</b>
                                <p>12/07/2002</p>
                            </div>
                            <div class="col-md-6">
                                <b>Hora</b>
                                <p>12:00:00 pm</p>
                            </div>
                            <div class="col-md-12">
                                <b>Categoria</b>
                                <p>categoria 1, categoria 2, categoria 3</p>
                            </div>
                            <div class="col-md-12">
                                <b>Correo de la empresa</b>
                                <p>eci@eci.com.co</p>
                            </div>
                            <div class="col-md-12">
                                <b>Descripción</b>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </p>
                            </div>
                            <div class="col-md-12">
                                <asp:Image ImageUrl="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQix1UpaxFv4MP8r0h1WahRTyGN9MCryDZ2Sw&usqp=CAU" Width="400px" runat="server" />
                            </div>
                            <div class="col-md-6">
                                <b>Invitado Especial</b>
                                <p>Si</p>
                            </div>
                            <div class="col-md-6">
                                <b>Contacto</b>
                                <p>No</p>
                            </div>
                            <div class="col-md-6">
                                <b>Chat</b>
                                <p>Si</p>
                            </div>
                            <div class="col-md-6">
                                <b>Galeria</b>
                                <p>No</p>
                            </div>
                            <div class="col-md-12">
                                <b>Evento en vivo</b>
                                <p>No</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card-footer justify-content-center">
                    <button class="btn btn-danger">Eliminar</button>
                </div>

            </div>
             <div class="card col-md-6">
                <div class="card-body">
                    <div class="card-title text-center">
                        <h5>Equipos y Controles S.A</h5>
                    </div>
                    <div class="text-center">
                        <div class="row">
                            <div class="col-md-6">
                                <b>Fecha de presentación</b>
                                <p>12/07/2002</p>
                            </div>
                            <div class="col-md-6">
                                <b>Hora</b>
                                <p>12:00:00 pm</p>
                            </div>
                            <div class="col-md-12">
                                <b>Categoria</b>
                                <p>categoria 1, categoria 2, categoria 3</p>
                            </div>
                            <div class="col-md-12">
                                <b>Correo de la empresa</b>
                                <p>eci@eci.com.co</p>
                            </div>
                            <div class="col-md-12">
                                <b>Descripción</b>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </p>
                            </div>
                            <div class="col-md-12">
                                <asp:Image ImageUrl="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQix1UpaxFv4MP8r0h1WahRTyGN9MCryDZ2Sw&usqp=CAU" Width="400px" runat="server" />
                            </div>
                            <div class="col-md-6">
                                <b>Invitado Especial</b>
                                <p>Si</p>
                            </div>
                            <div class="col-md-6">
                                <b>Contacto</b>
                                <p>No</p>
                            </div>
                            <div class="col-md-6">
                                <b>Chat</b>
                                <p>Si</p>
                            </div>
                            <div class="col-md-6">
                                <b>Galeria</b>
                                <p>No</p>
                            </div>
                            <div class="col-md-12">
                                <b>Evento en vivo</b>
                                <p>No</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card-footer justify-content-center">
                    <button class="btn btn-danger">Eliminar</button>
                </div>

            </div>
        </div>

        <asp:Button Text="Siguiente" runat="server" class="btn btn-primary w-100" id="btnSiguiente2" OnClick="btnSiguiente2_Click"/>
        
    </div>

    

    <div id="div3" runat="server" style="display:none">
    
     <!-- Galeria de fotos -->

        <h5>
            <span class="badge badge-primary" style="border-radius: 50%">3</span>
            Galería de fotos
        </h5>
    
        
        <div class="form-group">
            <label>Imagen</label>
            <input type="file" class="form-control" />
        </div>
        <button class="btn btn-success w-100">Agregar <i class="fas fa-plus"></i></button>
        <div class="row p-1 mb-2">
            <div class="card col-md-6">
                <div class="card-body">
                    <div class="text-center">
                        <asp:Image ImageUrl="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT578xIt2Pqk_JURkETu50eUTKZknXrle5yzogc9IKlanIj3vJ0KJILphZMONaMzmCIwHU&usqp=CAU" Width="400px" runat="server" />
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
                        <asp:Image ImageUrl="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQix1UpaxFv4MP8r0h1WahRTyGN9MCryDZ2Sw&usqp=CAU" Width="400px" runat="server" />
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </p>
                    </div>
                </div>
                <div class="card-footer justify-content-center">
                        <button class="btn btn-danger">Eliminar</button>
                </div>
            </div>
            <button class="btn btn-primary mt-2 w-100">Guardar Cambios</button>
      
     
        </div>
    </div>


  <script>
      document.addEventListener("DOMContentLoaded", function () {
          $('#selectEventoVivo').change(() => {
              console.log("sirva")
              if ($('#selectEventoVivo').val() == 1) {
                  $("#divUrlEvento").css("display","block")
              } else {
                  $("#divUrlEvento").css("display", "none")
              }
          })
      });
  </script>

</asp:Content>

