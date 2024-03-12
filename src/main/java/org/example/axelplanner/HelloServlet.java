package org.example.axelplanner;

import java.io.*;

import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet {
    private String message;

    public void init() {
        message = "Hello World!";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");

        String task = request.getParameter("task");

        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        out.println("<h1>" + task + "</h1>");
        out.println("</body></html>");
    }

    public void destroy() {
    }
}