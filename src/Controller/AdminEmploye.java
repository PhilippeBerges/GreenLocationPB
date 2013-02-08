package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modele.Client;
import modele.ConnectionDB;
import modele.Employe;

/**
 * Servlet implementation class AdminEmploye
 */
@WebServlet("/AdminEmploye")
public class AdminEmploye extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String PERSISTENCE_UNIT_NAME = "LocationVoitureDB";
	private static ConnectionDB db = new ConnectionDB(PERSISTENCE_UNIT_NAME);
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminEmploye() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();		
	    List<Employe> empList = db.getAll("Employe");		    
	
	    out.println("No d'Employe dans le DB: " + empList.size());
	    request.setAttribute("Clients", empList);		
		RequestDispatcher dispatcher = getServletContext().
		getRequestDispatcher("/ListeEmploye.jsp"); 
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
				String nomEmpStr=request.getParameter("emp_nom");
				String prenomEmpStr=request.getParameter("emp_prenom");
				String fonctionEmpStr=request.getParameter("emp_fonction");
				String adminEmpStr=request.getParameter("emp_admin");
				PrintWriter out = response.getWriter();
					    
			    String sql = "select c from Employe c where c.nom = "+nomEmpStr+" and c.prenom = "+prenomEmpStr+" and c.fonction="+fonctionEmpStr+" and c.admin = "+adminEmpStr+"";
			    List<Employe> empList = db.get(sql);
			    
			   
			    out.println("No d'Employe dans le DB: " + empList.size());
			    request.setAttribute("Employes", empList);
				
				RequestDispatcher dispatcher = getServletContext().
				getRequestDispatcher("/AdminEmploye.jsp"); 
				dispatcher.forward(request, response);
	}

}
