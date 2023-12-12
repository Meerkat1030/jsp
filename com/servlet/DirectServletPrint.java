package com.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/13/DirectServletPrint.do")
public class DirectServletPrint extends HttpServlet {
    private static final long seriaVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=UTF-8");
        PrintWriter writer = resp.getWriter();
        writer.println("<html>");
        writer.println("<head><title>DirectServletPrint</title></head>");
        writer.println("<body>");
        writer.println("<h2>서블릿에서 직접 출력합니다.</h2>");
        writer.println("<p>jsp로 포워드하지 않습니다.");
        writer.println("</body>");
        writer.println("</html>");
        writer.close();
    }
}
