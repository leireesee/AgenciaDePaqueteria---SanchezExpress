package Controladores;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.dao.ModeloSucursal;
import modelo.dto.Sucursal;

/**
 * Servlet implementation class ControladorVerSucursales
 */
@WebServlet("/ControladorVerSucursales")
public class ControladorVerSucursales extends HttpServlet {
	/***
	 * Este controlador se conecta a la base de datos y desde ahi  se los enviamos por el doGet el arraylist de sucursales para que se visualice.
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ControladorVerSucursales() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ModeloSucursal modeloSucursal = new ModeloSucursal();

		ArrayList<Sucursal> sucursales = null;

		sucursales = modeloSucursal.verSucursales();
		modeloSucursal.cerrarConexion();
		request.setAttribute("sucursales", sucursales);
		request.getRequestDispatcher("VerSucursales.jsp").forward(request, response);

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
