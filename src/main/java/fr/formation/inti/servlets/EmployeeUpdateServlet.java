package fr.formation.inti.servlets;

import java.io.IOException;
import java.io.PrintWriter;
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
 * Servlet implementation class EmployeeUpdateServlet
 */
@WebServlet("/employeeUpdate")
public class EmployeeUpdateServlet extends HttpServlet {

	private static final Log log = LogFactory.getLog(EmployeeServlet.class);

	EmployeeService service = new EmployeeService();

	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public EmployeeUpdateServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String empId = request.getParameter("id");
		
		Integer id = null;
		if (empId != null)
			id = Integer.parseInt(empId);
		
		Employee emp = service.findById(id);

		String firstName = request.getParameter("prenom");
		String lastName= request.getParameter("nom");
		String title = request.getParameter("titre"); 
        String dateDebut = request.getParameter("dateDebut");
		
		emp.setFirstName(firstName);
		emp.setLastName(lastName);
		emp.setTitle(title);
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        Date date = new Date();
        try {
            date = format.parse(dateDebut);
        } catch (ParseException e1) {
            e1.printStackTrace();
        }
		emp.setStartDate(date);
				
		service.update(emp); // modification de l'employé

		// Redirection vers le tableau des employés
		String contextPath = request.getContextPath();
		response.sendRedirect(contextPath + "/employees");
	}

}
