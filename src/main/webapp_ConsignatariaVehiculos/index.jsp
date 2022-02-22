<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Map"%>
<%Map<String,String> errores = (Map<String,String>)request.getAttribute("errores");%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>ConsignatariaVehiculos-Formulario de Revision Tecnica</title>
    <link href="<%=request.getContexPath()%>/css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=request.getContexPath()%>/css/style.css" rel="stylesheet">
</head>
<body>
<h1>Aplicacion web de la consignataria de vehiculos </h1>
<h2>Formulario de Revision Tecnica</h2>
<a href="/webapp_ConsignatariaVehiculos/RevisionTecnica" >Redireccionar a la pagina del servlet </a>
<a href="/webapp_ConsignatariaVehiculos/parametros/get-url?saludo=Hola a todos" >Redireccionar a la pagina del servlet con parametros </a>
<div class="px-5">
<div class="row">
<form action="/webapp_ConsignatariaVehiculos/reserva" method="post">
  <div class="col">
               <h5>Codigo de la Revision</h5>
               <input type="text" id="codigoDeLaRevision" class="form-control" placeholder="codigoDeLaRevision" aria-label="codigoDeLaRevision" value="${param.codigoDeLaRevision}"></div>

             <%
             if(errores != null && errores.containsKey("codigoRevision")){
                out.println("<div class='col alert alert-danger form-control' style='color:red;'>"+errores.get("codigoRevision")+"</div");


             }
             %>



           <div class="col">
               <h5>Fecha de la Revision</h5>
               <input type="text" id="fechaDeLaRevision" class="form-control" placeholder="fechaDeLaRevision" aria-label="fechaDeLaRevision" value="${param.fechaDeLaRevision}">
           </div>
             <%
                        if(errores != null && errores.containsKey("fechaDeLaRevision")){
                           out.println("<div class='col alert alert-danger form-control' style='color:red;'>"+errores.get("fechaDeLaRevision")+"</div");


                        }
                        %>
       </div>

       <div class="row">
           <div class="col">
               <h5>Hora de Ingreso</h5>
               <input type="text" id="horaDeIngreso" class="form-control" placeholder="horaDeIngreso" aria-label="horaDeIngreso"value="${param.horaDeIngreso}">
           </div>
           <%
                                   if(errores != null && errores.containsKey("horaDeIngreso")){
                                      out.println("<div class='col alert alert-danger form-control' style='color:red;'>"+errores.get("horaDeIngreso")+"</div");


                                   }
                                   %>
           <div class="col">
               <h5>Hora de Salida</h5>
               <input type="text" id="horaDeSalida" class="form-control" placeholder="horaDeSalida" aria-label="horaDeSalida"value="${param.horaDeSalida}">
           </div>
           <%
                                              if(errores != null && errores.containsKey("horaDeSalida")){
                                                 out.println("<div class='col alert alert-danger form-control' style='color:red;'>"+errores.get("horaDeSalida")+"</div");


                                              }
                                              %>
       </div>

       <div class="mb-3">
           <label for="exampleFormControlInput1" class="form-label">Valor de la Revision Tecnica</label>
           <input type="Valor" class="form-control" id="valor" placeholder="$ 000"value="${param.valor}">
       </div>
        <%
                                                     if(errores != null && errores.containsKey("valor")){
                                                        out.println("<div class='mb-3 alert alert-danger form-label' style='color:red;'>"+errores.get("valor")+"</div");


                                                     }
                                                     %>
       <div class="mb-3">
           <label for="exampleFormControlTextarea1" class="form-label">Descripcion de la Revision Tecnica</label>
           <textarea class="form-control" id="descripcion" value="${param.descripcion}" rows="3"></textarea>
       </div>
        <%
                                                     if(errores != null && errores.containsKey("descripcion")){
                                                        out.println("<div class='mb-3 alert alert-danger form-label' style='color:red;'>"+errores.get("descripcion")+"</div");


                                                     }
                                                     %>
       <div class="container my-4">



           <p class="font-weight-bold">Selecione el Tipo de Revision</p>

           <select class="mdb-select md-form" searchable="Seleccione aqui.."id="tipoDeRevision"value="${param.valor}"value="${param.tipoDeRevision}">
               <option value="" disabled selected>Seleccione la Revision Tecnica </option>
               <option value="1">Revision Sistema Mecanico</option>
               <option value="2">Revision Sistema Electrico</option>
               <option value="3">Revision Sistema Mecanico y Electrico</option>
               <option value="4">-</option>
           </select>

       </div>
         <%
                                                             if(errores != null && errores.containsKey("tipoDeRevision")){
                                                                out.println("<div class='container my-4 alert alert-danger mdb-select md-form' style='color:red;'>"+errores.get("tipoDeRevision")+"</div");


                                                             }
                                                             %>
       <h2>Informacion del Cliente y del Vehiculo</h2>

       <div class="input-group">
           <span class="input-group-text">Nombre y Apellidos</span>
           <input type="text" aria-label="nombre" id="nombre"class="form-control"value="${param.nombre}">
           <input type="text" aria-label="apellidos"id="apellidos" class="form-control"value="${param.apellidos}">
       </div>
       <%
                                                                    if(errores != null && errores.containsKey("nombre y apellido")){
                                                                       out.println("<div class='input-group alert alert-danger form-control' style='color:red;'>"+errores.get("nombre y apellido")+"</div");


                                                                    }
                                                                    %>
       <div class="row">
           <div class="col">
               <h7>Direccion</h7>
               <input type="text" id="direccion"class="form-control" placeholder="direccion" aria-label="direccion"value="${param.direccion}">
           </div>
           <%
                                                                               if(errores != null && errores.containsKey("direccion")){
                                                                                  out.println("<div class='col alert alert-danger form-control' style='color:red;'>"+errores.get("direccion")+"</div");


                                                                               }
                                                                               %>
           <div class="col">
               <h7>Telefono</h7>
               <input type="text" id="telefono" class="form-control" placeholder="telefono" aria-label="telefono"value="${param.direccion}">
           </div>
             <%
                                                                                          if(errores != null && errores.containsKey("telefono")){
                                                                                             out.println("<div class='col alert alert-danger form-control' style='color:red;'>"+errores.get("telefono")+"</div");


                                                                                          }
                                                                                          %>
       </div>
           <div class="px-5">
       </div>
       <fieldset class="row mb-3">
           <legend class="col-form-label col-sm-2 pt-0">Tipo de Vehiculo</legend>
           <div class="col-sm-10">
               <div class="form-check">
                   <input class="form-check-input" type="radio" name="tipoDeVehiculo" id="tipoDeVehiculo" value="option1" checked value="${param.tipoDeVehiculo}">
                   <label class="form-check-label" for="gridRadios1">
                       Carro
                   </label>
               </div>
               <div class="form-check">
                   <input class="form-check-input" type="radio" name="tipoDeVehiculo" id="tipoDeVehiculo" value="option2"value="${param.tipoDeVehiculo}">
                   <label class="form-check-label" for="gridRadios2">
                       Moto
                   </label>
               </div>

               </div>
           </fieldset>
       </div>
       </form>
       <div class="px-5">
           <div class="input-group">
               <span class="input-group-text">Numero de Matricula</span>
               <input type="text" aria-label="numeroDeMatricula" id="numeroDeMatricula"class="form-control"value="${param.numeroDeMatricula}">
           </div>
            <%
                                                                                                     if(errores != null && errores.containsKey("numeroDeMatricula")){
                                                                                                        out.println("<div class='input-group alert alert-danger form-control' style='color:red;'>"+errores.get("numeroDeMatricula")+"</div");


                                                                                                     }
                                                                                                     %>
           <h2> Informacion Empleado<h2>

               <select class="form-select" aria-label="default select example"id="nombreApellidosEmpleado"value="${param.nombreApellidosEmpleado}">
                   <option selected>Open this select menu</option>
                   <option value="1">Empleado 1</option>
                   <option value="2">Empleado 2</option>
                   <option value="3">Empleado 3</option>
               </select>
               <div>
               <button type="button" class="btn btn-primary">RegistrarOperacion</button>
               <div>
</form>


</body>
</html>
