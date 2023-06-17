package com.ismo.crjj.efm.controllers;

import java.io.IOException;
import java.time.LocalDateTime;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ismo.crjj.efm.beans.Etablissement;
import com.ismo.crjj.efm.dao.DAOEtablissement;
import com.ismo.crjj.efm.dao.IDao;

/**
 * Servlet implementation class Controller
 */
@WebServlet(name = "controllers", urlPatterns = { "/do/*" })
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	IDao<Etablissement> dao=new DAOEtablissement();
	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Controller() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		switch (request.getPathInfo()) {
		case "/All":
			request.setAttribute("etablissement", dao.getAll());
			request.getRequestDispatcher("/pages/tableEtab.jsp").forward(request, response);
			break;
		case "/goAdd":
			request.getRequestDispatcher("/pages/AddEtab.jsp").forward(request, response);
			break;
		case "/etab/add":
			request.setAttribute("etablissement", dao.getAll());
			request.getRequestDispatcher("/pages/tableEtab.jsp").forward(request, response);
			break;
		default:
			break;
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
