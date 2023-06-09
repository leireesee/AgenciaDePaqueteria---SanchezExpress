package Controladores;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.dao.ModeloEmpleado;

/**
 * Servlet implementation class ControladorEmpleadoEliminar
 */
@WebServlet("/ControladorEmpleadoEliminar")
public class ControladorEmpleadoEliminar extends HttpServlet {
	/***
	 * Se encarga de recoger  un dni  para eliminar un empleado.
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ControladorEmpleadoEliminar() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String dni = request.getParameter("dni");

		ModeloEmpleado modeloEmpleado = new ModeloEmpleado();

		modeloEmpleado.eliminarEmpleado(dni);
		modeloEmpleado.cerrarConexion();
		request.getRequestDispatcher("ControladorVistaAdmin").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
