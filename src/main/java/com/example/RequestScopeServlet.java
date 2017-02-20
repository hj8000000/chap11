package com.example;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.web.context.annotation.RequestScope;


@WebServlet("/requestScope")
public class RequestScopeServlet extends HttpServlet {

	static Log log = LogFactory.getLog(RequestScope.class);
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		log.info("###############################");
		log.info("###############################");
		log.info("###############################");
		
		req.setAttribute("id", "hong");
		req.setAttribute("pw", "1234");
		
		/*
		 * Map
		 */
		HashMap<String, String> job = new HashMap<>();
		job.put("xxx1", "habit1");
		job.put("xxx2", "habit2");
		req.setAttribute("job", job);
		
		/*
		 * Array
		 */
		int[] array = {90, 80, 55};
		req.setAttribute("arr", array);
		
		RequestDispatcher d = req.getRequestDispatcher("/WEB/requestScope.jsp");
		d.forward(req, resp);
	
	}
}
