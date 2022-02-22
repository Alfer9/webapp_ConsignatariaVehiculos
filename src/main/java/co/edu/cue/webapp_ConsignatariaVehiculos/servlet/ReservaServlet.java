package co.edu.cue.webapp_ConsignatariaVehiculos.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;


@WebServlet("/reserva")
public class ReservaServlet extends HttpServlet {

    String codigoRevision = "";
    String fecha = "";
    String horaDeIngreso = "";
    String horaDeSalida = "";
    Double valor = 0.0;
    String descripcion = "";
    String[] tipoDeRevision = null;
    String nombreCliente = "";
    String apellidoCliente = "";
    String direccion = "";
    String telefono = "";
    String[] tipoDeVehiculo = null;
    String numeroDeMatricula = "";
    String nombreApellidosEmpleado = "";


    Map<String,String> listaErrores = new HashMap<>();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        getDataRequest(req);
        validarParametros();

        if(listaErrores.isEmpty()) {

            try (PrintWriter out = resp.getWriter()) {


                out.println("<!DOCTYPE html>");
                out.println("<html>");
                out.println("   <head>");
                out.println("       <meta  chartset=\"UTF-8\">");
                out.println("       <title>Resultados de la Reserva del Servicio tecnico</title>");
                out.println("   </head>");
                out.println("   <body>");
                out.println("       <h1>Informacion de la Reserva realizada</h1>");
                out.println("        <ul>");


                out.println("   <li>El codigoRevision es: " + codigoRevision + "</li>");
                out.println("   <li>El fecha es: " + fecha + "</li>");
                out.println("   <li>El horaDeIngreso es: " + horaDeIngreso + "</li>");
                out.println("   <li>El horaDeSalida es: " + horaDeSalida + "</li>");
                out.println("   <li>El valor es: " + valor + "</li>");
                out.println("   <li>El descripcion es: " + descripcion + "</li>");
                out.println("   <li>El nombreCliente es: " + nombreCliente + "</li>");
                out.println("   <li>El apellidoCliente es: " + apellidoCliente + "</li>");
                out.println("   <li>El direccion es: " + direccion + "</li>");
                out.println("   <li>El telefono es: " + telefono + "</li>");
                out.println("   <li>El numeroDeMatricula es: " + numeroDeMatricula + "</li>");
                out.println("   <li>El nombreApellidosEmpleado es: " + nombreApellidosEmpleado + "</li>");
                out.println("   <li>  revision:  </li>");

                for (String revision : tipoDeRevision) {
                    out.println("   <li>" + revision + "</li>");

                }

                out.println("        </ul></li>");

                out.println("   <li>vehiculo: <ul>");
                for (String vehiculo : tipoDeVehiculo) {
                    out.println("   <li>" + vehiculo + "</li>");

                }

                out.println("        </ul></li>");
                out.println("         <ul>");
                out.println("   </body>");
                out.println("</html>");
            }



        }else{

            req.setAttribute("errores",listaErrores);
            getServletContext().getRequestDispatcher("/index.jsp").forward(req,resp);
        }






    }



    private void getDataRequest(HttpServletRequest req) {
          this.codigoRevision = req.getParameter( "codigoDeLaRevision");
          this.fecha = req.getParameter( "fechaDeLaRevision");
          this.horaDeIngreso = req.getParameter( "horaDeIngreso");
          this.horaDeSalida = req.getParameter( "horaDeSalida");
          this.valor = Double.parseDouble(req.getParameter( "valor"));
          this.descripcion = req.getParameter( "descripcion");
          this.tipoDeRevision = req.getParameterValues("tipoDeRevision" );
          this.nombreCliente = req.getParameter( "nombre");
          this.apellidoCliente = req.getParameter( "apellidos");
          this.direccion = req.getParameter( "direccion");
          this.telefono = req.getParameter( "telefono");
          this.tipoDeVehiculo = req.getParameterValues( "tipoDeVehiculo");
          this.numeroDeMatricula = req.getParameter( "numeroDeMatricula");
          this.nombreApellidosEmpleado = req.getParameter( "nombreApellidosEmpleado");

    }


    private void validarParametros() {

     if(codigoRevision == null || codigoRevision.isBlank()){
         listaErrores.put("codigoRevision","Codigo de la revision no ingresado");
     }

        if(fecha == null || fecha.isBlank()){
            listaErrores.put("fechaDeLaRevision","fechaDeLaRevision no ingresado");
        }

        if(horaDeIngreso == null || horaDeIngreso.isBlank()){
            listaErrores.put("horaDeIngreso","horaDeIngreso no ingresado");
        }

        if(horaDeSalida == null || horaDeSalida.isBlank()){
            listaErrores.put("horaDeSalida","horaDeSalida no ingresado");
        }

        if(valor == null || valor.isNaN()){
            listaErrores.put("valor","valor no ingresado");
        }

        if(descripcion == null || descripcion.isBlank()){
            listaErrores.put("descripcion","descripcion no ingresado");
        }

        if(tipoDeRevision == null ){
            listaErrores.put("tipoDeRevision","Tipo de Revision  no ingresado");
        }

        if(nombreCliente == null || nombreCliente.isBlank()){
            listaErrores.put("nombreCliente","Nombre del Cliente no ingresado");
        }

        if(apellidoCliente == null || apellidoCliente.isBlank()){
            listaErrores.put("apellidoCliente","Apellido del Cliente no ingresado");
        }

        if(direccion == null || direccion.isBlank()){
            listaErrores.put("direccion","Direccion no ingresada");
        }

        if(telefono == null || telefono.isBlank()){
            listaErrores.put("telefono","telefono no ingresado");
        }

        if(tipoDeVehiculo == null ){
            listaErrores.put("tipoDeVehiculo","Tipo de Vehiculo no ingresado");
        }

        if(numeroDeMatricula== null || numeroDeMatricula.isBlank()){
            listaErrores.put("numeroDeMatricula","Numero De La Matricula no ingresado");
        }

        if(nombreApellidosEmpleado  == null || nombreApellidosEmpleado .isBlank()){
            listaErrores.put("nombreApellidosEmpleado ","Nombre y Apellidos del Empleado  no ingresado");
        }


    }


}
