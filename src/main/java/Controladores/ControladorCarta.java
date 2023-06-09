package Controladores;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import modelo.dao.ModeloCarta;
import modelo.dao.ModeloEmpleado;
import modelo.dao.ModeloEnvio;
import modelo.dto.Carta;
import modelo.dto.Empleado;

/**
 * Servlet implementation class ControladorCarta
 */
@WebServlet("/ControladorCarta")
public class ControladorCarta extends HttpServlet {
	/**
	 * En este controlador se encarga de recibir insertar una carta pero antes tiene que coger strings del formulario.
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ControladorCarta() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("InsertarCarta.jsp").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			String mensual = request.getParameter("mensual");

			Carta carta = new Carta();
			ModeloEnvio modeloEnvio = new ModeloEnvio();
			ModeloCarta modeloCarta = new ModeloCarta();

			carta.setCodEnvio(modeloEnvio.recibirUltimoCodigo());
			carta.setMensual(mensual);

			modeloCarta.insertarCarta(carta);
			modeloCarta.cerrarConexion();

		} catch (Exception e) {
			String MensajeError = "ERROR";
			request.setAttribute("MensajeError", MensajeError);
			request.getRequestDispatcher("InsertarCarta.jsp").forward(request, response);
		}

		HttpSession session = request.getSession();
		Empleado empleado = (Empleado) session.getAttribute("empleado");
		if (empleado.getCategoria().equals("Administrador")) {
			response.sendRedirect("ControladorVistaAdmin");
		} else {
			response.sendRedirect("ControladorVistaEmpleado");

		}
	}

}
