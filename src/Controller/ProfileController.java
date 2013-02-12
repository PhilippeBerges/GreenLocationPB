package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import modele.Client;
import modele.ConnectionDB;
import modele.Employe;
import modele.Reservation;

/**
 * Servlet implementation class ProfileController
 */
@WebServlet("/ProfileController")
public class ProfileController extends HttpServlet {
	private static final String PERSISTENCE_UNIT_NAME = "LocationVoitureDB";
	private static final long serialVersionUID = 1L;
	private static ConnectionDB db = new ConnectionDB(PERSISTENCE_UNIT_NAME);
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProfileController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Employe emp = new Employe();
		
		emp.setLogin(request.getParameter("login"));
		emp.setPwd(request.getParameter("password"));
		emp.setNom(request.getParameter("nomEmp"));
		emp.setPrenom(request.getParameter("preEmp"));
		//cli.setCodePostal(request.getParameter("cpCli"));
		db.add(emp);
		
		response.sendRedirect("index.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession (true); 
		Client cli = new Client();
		
		cli.setLogin(request.getParameter("login"));
		cli.setPwd(request.getParameter("password"));
		cli.setNom(request.getParameter("nomCli"));
		cli.setPrenom(request.getParameter("preCli"));
		cli.setAdresse(request.getParameter("adCli"));
		cli.setVille(request.getParameter("villeCli"));
		cli.setCodePostal(request.getParameter("cpCli"));
		db.add(cli);
		String nom = (String) session.getAttribute("nom");
		session.setAttribute("nom", request.getParameter("login"));
		String pwdClient = (String) session.getAttribute("pwd");
		session.setAttribute("pwd", request.getParameter("password"));
		String nomclient = (String) session.getAttribute("nomclient");
		session.setAttribute("nomclient", request.getParameter("nomCli"));
		String prenomclient = (String) session.getAttribute("prenomclient");
		session.setAttribute("prenomclient", request.getParameter("preCli"));
		String adresseclient = (String) session.getAttribute("adresseclient");
		session.setAttribute("adresseclient", request.getParameter("adCli"));
		String villeclient = (String) session.getAttribute("villeclient");
		session.setAttribute("villeclient", request.getParameter("villeCli"));
		String cpclient = (String) session.getAttribute("cpclient");
		session.setAttribute("cpclient", request.getParameter("cpCli"));
		
		response.sendRedirect("index.jsp");
	}

}
