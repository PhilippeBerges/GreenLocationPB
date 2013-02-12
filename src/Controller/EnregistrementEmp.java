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
 * Servlet implementation class EnregistrementEmp
 */
@WebServlet("/EnregistrementEmp")
public class EnregistrementEmp extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EnregistrementEmp() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		final String PERSISTENCE_UNIT_NAME = "LocationVoitureDB";
		ConnectionDB db = new ConnectionDB(PERSISTENCE_UNIT_NAME);
		String nomEmpStr=request.getParameter("emp_nom");
		String prenomEmpStr=request.getParameter("emp_prenom");
		String fonctionEmpStr=request.getParameter("emp_fonction");
		String adminEmpStr=request.getParameter("emp_admin");
		PrintWriter out = response.getWriter();
			    
		  String sql = "select c from Employe c where c.nom = "+nomEmpStr+" and c.prenom = "+prenomEmpStr+" and c.fonction="+fonctionEmpStr+" and c.admin = "+adminEmpStr+"";
		    Employe empRes = (Employe) db.get(sql);
	    
				if (empRes == null) {
				System.out.println("Employe non trouvé");
				} else {	
					empRes.setNom(nomEmpStr);	
					empRes.setPrenom(prenomEmpStr);
					empRes.setFonction(fonctionEmpStr);
					empRes.setAdmin(adminEmpStr);
				db.update(empRes);
				RequestDispatcher dispatcher = getServletContext().
						getRequestDispatcher("/ListeEmployes.jsp"); 
						dispatcher.forward(request, response); 
				}
				db.close();
	}

}
