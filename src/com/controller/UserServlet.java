package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.PathDetailsDao;
import com.dao.PathDetailsDaoImpl;
import com.dto.PathDetails;


@WebServlet("/")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private PathDetailsDao pathDetailsDao;
	
	public void init() {
		pathDetailsDao = new PathDetailsDaoImpl();
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getServletPath();

		try {
			switch (action) {
			case "/view":
				listPaths(request, response);
				break;
			default:
				listPaths(request, response);
				break;
			}
		} catch (SQLException ex) {
			throw new ServletException(ex);
		}
	}

	private void listPaths(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
		List<PathDetails> paths = pathDetailsDao.listPathDetails();	
		HttpSession httpsession = request.getSession();
		httpsession.setAttribute("listPaths", paths);
		
		PrintWriter out = response.getWriter();
		out.print(paths);
	}
}
