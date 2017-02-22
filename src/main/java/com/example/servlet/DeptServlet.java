package com.example.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.example.domain.Dept;

@WebServlet("/dept")
public class DeptServlet extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse resoponse) throws ServletException, IOException {
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("color", "black");
		map.put("backgroundColor", "gold");
		map.put("deptSeoul", new Dept(10, "총무부", "서울"));
		map.put("deptBusan", new Dept(10, "개발부", "부산"));
		
		List<Object> list = new ArrayList<>();
		list.add(3.14);
		list.add(new Dept(30, "경리부", "광주"));
		
		map.put("xxx", list);
		
		request.setAttribute("data", map);
		
		RequestDispatcher d = request.getRequestDispatcher("/WEB-INF/dept.jsp");
		d.forward(request, resoponse);
	}	
}
