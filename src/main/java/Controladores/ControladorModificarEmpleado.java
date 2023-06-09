package Controladores;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.dao.ModeloDepartamento;
import modelo.dao.ModeloEmpleado;
import modelo.dao.ModeloSucursal;
import modelo.dto.Empleado;

/**
 * Servlet implementation class ControladorModificarEmpleado
 */
@WebServlet("/ControladorModificarEmpleado")
public class ControladorModificarEmpleado extends HttpServlet {
	/***
	 *  Se encarga de recibir el id del cual se va a modificar  para luego recoger Strings de un formulario y enviarlo a la base de datos 
	 * para modificarlo.
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ControladorModificarEmpleado() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ModeloEmpleado modeloEmpleado = new ModeloEmpleado();

		Empleado empleado = new Empleado();

		String dni = request.getParameter("dni");

		empleado = modeloEmpleado.verEmpleado(dni);
		modeloEmpleado.cerrarConexion();
		request.setAttribute("empleado", empleado);
		request.getRequestDispatcher("ModificarEmpleado.jsp").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			Empleado empleado = new Empleado();
			ModeloDepartamento modeloDepartamento = new ModeloDepartamento();
			ModeloEmpleado modeloEmpleado = new ModeloEmpleado();
			ModeloSucursal modeloSucursal = new ModeloSucursal();

			int codSucursal = Integer.parseInt(request.getParameter("cod_sucursal"));
			String dni = request.getParameter("dni");
			String nombre = request.getParameter("nombre");
			String direccion = request.getParameter("direccion");
			String telefono = request.getParameter("telefono");
			String nss = request.getParameter("nss");
			String categoria = request.getParameter("categoria");
			double nomina = Double.parseDouble(request.getParameter("nomina"));
			double comision = Double.parseDouble(request.getParameter("comision"));
			int codDepartamento = Integer.parseInt(request.getParameter("cod_departamento"));
			String contrasena = request.getParameter("contrasena");

			empleado.setSucursal(modeloSucursal.verSucursal(codSucursal));
			empleado.setDni(dni);
			empleado.setNombre(nombre);
			empleado.setDireccion(direccion);
			empleado.setTelefono(telefono);
			empleado.setNumSeguridadS(nss);
			empleado.setCategoria(categoria);
			empleado.setNomina(nomina);
			empleado.setComision(comision);
			empleado.setDepartamento(modeloDepartamento.verDepartamento(codDepartamento));
			empleado.setContrasena(contrasena);

			modeloEmpleado.modificarEmpleado(empleado);
			modeloEmpleado.cerrarConexion();
			request.getRequestDispatcher("ControladorVistaAdmin").forward(request, response);

		} catch (Exception e) {
			String MensajeError = "ERROR";
			request.setAttribute("MensajeError", MensajeError);
			request.getRequestDispatcher("ModificarEmpleado.jsp").forward(request, response);
		}
		
	}

}
