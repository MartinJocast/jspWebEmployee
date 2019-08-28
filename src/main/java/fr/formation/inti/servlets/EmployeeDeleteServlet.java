package fr.formation.inti.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import fr.formation.inti.service.EmployeeService;

/**
 * Servlet implementation class EmployeeDeleteServlet
 */
@WebServlet("/employeeDelete")
public class EmployeeDeleteServlet extends HttpServlet {
	
	private static final Log log = LogFactory.getLog(EmployeeServlet.class);

	EmployeeService service = new EmployeeService();
	
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmployeeDeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		log.debug("Method doGet pour employeeDelete");

		
		String empId = request.getParameter("id");
		
		service.delete(Integer.parseInt(empId)); //supression de l'employé
		log.debug("Employé supprimé : " + empId);
		
		String contextPath = request.getContextPath();
		response.sendRedirect(contextPath + "/employees");		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
