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

import fr.formation.inti.entities.Employee;
import fr.formation.inti.service.EmployeeService;

/**
 * Servlet implementation class GetEmployeeServlet
 */
@WebServlet("/getEmployee")
public class GetEmployeeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final Log log = LogFactory.getLog(EmployeeServlet.class);

	EmployeeService service = new EmployeeService();   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetEmployeeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		log.debug("Method doPost : GetEmployee");
		
		response.setContentType("text/html");
		String empId = request.getParameter("id");
		Integer id = null;
		if (empId != null)
			id = Integer.parseInt(empId);		
		Employee emp = service.findById(id);
		
		request.setAttribute("emp", emp);
		request.getRequestDispatcher("pages/updateEmployee.jsp").forward(request, response);
		
	}

}
