package unit01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Add")			//URL 맵핑
public class Add extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Add() {
		super();
	}
									//요청 처리					//응답 처리
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int num1 = 20;				//예외 처리
		int num2 = 10;
		int add = num1 + num2;
		PrintWriter out = response.getWriter();
		out.println("<html><head><title>Addition</title></head>");
		out.println("<body>");
		out.println(num1 + "+" + num2 + "=" + add);
		out.println("</body>");
		out.println("</html>");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
