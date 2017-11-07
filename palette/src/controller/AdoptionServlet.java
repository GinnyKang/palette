package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.DogDAO;
import model.LostDogVO;
import rtest.RDBJava;

@WebServlet("/adoption")
public class AdoptionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		DogDAO dao = new DogDAO();
	/*	RDBJava rdj = new RDBJava();
		rdj.getDogInfo();*/
		ArrayList<LostDogVO> ldl = dao.LostDogList(); //전체 리스트 출력
		if (ldl != null && ldl.size() > 0) {
			request.setAttribute("ldl", ldl);
		}
		
		String com = request.getParameter("action");
		if (com != null) {
			if (com.equals("a")) {// action이 read일때 상세보기(listone)기능
				String loc = request.getParameter("lo");
				if(loc.equals("seoul")) {
					ArrayList<LostDogVO> locarray =dao.location("서울시");
					request.setAttribute("ldl", locarray);
				}else if(loc.equals("gg")) {
					ArrayList<LostDogVO> locarray =dao.location("경기도");
					request.setAttribute("ldl", locarray);
				}else if(loc.equals("in")) {
					ArrayList<LostDogVO> locarray =dao.location("인천");
					request.setAttribute("ldl", locarray);
				}else if(loc.equals("all")) {
					ArrayList<LostDogVO> locarray =dao.location("전국분양");
					request.setAttribute("ldl", locarray);
					}
			}else if (com.equals("b")) {// action이 read일때 상세보기(listone)기능
				String sex = request.getParameter("sex");
				if(sex.equals("b")) {
					ArrayList<LostDogVO> sexarray =dao.Sex("남아");
					request.setAttribute("ldl", sexarray);
				}else if(sex.equals("g")) {
					ArrayList<LostDogVO> sexarray =dao.Sex("여아");
					request.setAttribute("ldl", sexarray);
				}
			}else if (com.equals("c")) {// action이 read일때 상세보기(listone)기능
				String type = request.getParameter("type");
				if(type.equals("poo")) {
					ArrayList<LostDogVO> typearray =dao.type(" 푸들");
					request.setAttribute("ldl", typearray);
				}else if(type.equals("mal")) {
					ArrayList<LostDogVO> typearray =dao.type(" 말티즈");
					request.setAttribute("ldl", typearray);
				}else if(type.equals("mix")) {
					ArrayList<LostDogVO> typearray =dao.type(" 믹스");
					request.setAttribute("ldl", typearray);
				}else if(type.equals("pe")) {
					ArrayList<LostDogVO> typearray =dao.type(" 페키니");
					request.setAttribute("ldl", typearray);
				}else if(type.equals("yo")) {
					ArrayList<LostDogVO> typearray =dao.type(" 요크셔");
					request.setAttribute("ldl", typearray);
				}
				

		}}
	      
		request.getRequestDispatcher("/view/adoption.jsp").forward(request, response);
	}
	}
	
