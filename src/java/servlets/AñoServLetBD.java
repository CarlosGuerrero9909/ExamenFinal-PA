/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlets;

import control.dao.OperacionesBD;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Usuario
 */
@WebServlet(name = "AñoServLetBD", urlPatterns = {"/AñoServLetBD"})
public class AñoServLetBD extends HttpServlet {
	
	private OperacionesBD opBD;

	public AñoServLetBD() {
		//iniciamos OperacionesBD () (vicular servlet con BD)
		opBD = new OperacionesBD();
	}
	
	/**
	 * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
	 *
	 * @param request servlet request
	 * @param response servlet response
	 * @throws ServletException if a servlet-specific error occurs
	 * @throws IOException if an I/O error occurs
	 */
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		try {

			String signo = request.getParameter("Enviar");
			String datosBD = opBD.consultarHoroscopoAño(signo);
			
			out.println("<!DOCTYPE html>");
			
			out.println("<html>");

			out.println("<head>");
			out.println("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">");
			out.println("<title>Servlet ServletBD</title>");
			out.println("<link rel=\"stylesheet\" href=\"styles/optionalPageStyles.css\" type=\"text/css\" media=\"all\">");
			out.println("<link rel=\"preconnect\" href=\"https://fonts.googleapis.com\">");
			out.println("<link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin>");
			out.println("<link href=\"https://fonts.googleapis.com/css2?family=Roboto+Mono:wght@200&display=swap\" rel=\"stylesheet\">");
			out.println("<link href=\"https://fonts.googleapis.com/css2?family=Lobster&family=Roboto+Mono:wght@200&display=swap\" rel=\"stylesheet\">");
			out.println("</head>");

			out.println("<body>");
			
			out.println("<header class=\"header\">");
			out.println("<img src=\"imgData/encabezado.gif\" alt=\"\">");
			out.println("</header>");

			out.println("<main class=\"main\">");
			out.println("<h2 class=\"header-item\">"+signo.toUpperCase()+"</h2>");
			out.println("<a href=\"optionalPages/horoscopoAño.jsp\" >Back page</a>");
			out.println("</main>");
			
			out.println("<div class=\"flex-container\">");
			out.println("<div class=\"container-descripcion\">");
			out.println("<p class=\"p-indicaciones\" >"+datosBD+"</p>");
			out.println("</div>");
			out.println("</div>");
			
			out.println("</body>");
			
			out.println("</html>");
			
		} finally {
			out.close();
		}
	}

	// <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
	/**
	 * Handles the HTTP <code>GET</code> method.
	 *
	 * @param request servlet request
	 * @param response servlet response
	 * @throws ServletException if a servlet-specific error occurs
	 * @throws IOException if an I/O error occurs
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processRequest(request, response);
	}

	/**
	 * Handles the HTTP <code>POST</code> method.
	 *
	 * @param request servlet request
	 * @param response servlet response
	 * @throws ServletException if a servlet-specific error occurs
	 * @throws IOException if an I/O error occurs
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processRequest(request, response);
	}

	/**
	 * Returns a short description of the servlet.
	 *
	 * @return a String containing servlet description
	 */
	@Override
	public String getServletInfo() {
		return "Short description";
	}// </editor-fold>

}
