package fr.formation.inti.servlets;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import fr.formation.inti.entities.Employee;
import fr.formation.inti.service.EmployeeService;

/**
 * Servlet implementation class EmployeeAddServlet
 */
@WebServlet("/employeeAdd")
public class EmployeeAddServlet extends HttpServlet {
	
	private static final Log log = LogFactory.getLog(EmployeeServlet.class);
	
	EmployeeService service = new EmployeeService();
	
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmployeeAddServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		log.debug("Method doGet pour employeeAdd");
		
		String firstName = request.getParameter("prenom");
        String lastName = request.getParameter("nom"); 
        String title = request.getParameter("titre"); 
        String dateDebut = request.getParameter("dateDebut");
		
		Employee e = new Employee(); // création d'un employé à partir de la requete
		e.setFirstName(firstName);
		e.setLastName(lastName);
		e.setTitle(title);
		//e.setStartDate(new Date());
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        Date date = new Date();
        try {
            date = format.parse(dateDebut);
        } catch (ParseException e1) {
            e1.printStackTrace();
        }
		e.setStartDate(date);
		
		Integer id = service.save(e); // ajout de l'employé
		if(id != null) {
			String contextPath = request.getContextPath();
			response.sendRedirect(contextPath + "/employees");
		} else {
			
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
