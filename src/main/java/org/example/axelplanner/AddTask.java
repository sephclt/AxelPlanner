package org.example.axelplanner;

import java.awt.*;
import java.io.*;
import java.util.ArrayList;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name = "addTask", value = "/add-task")
public class AddTask extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // response.setContentType("text/html");

        String mon_task = request.getParameter("mon_task");
        String tue_task = request.getParameter("tue_task");
        String wed_task = request.getParameter("wed_task");
        String thu_task = request.getParameter("thu_task");
        String fri_task = request.getParameter("fri_task");
        String sat_task = request.getParameter("sat_task");
        String sun_task = request.getParameter("sun_task");

        if (mon_task != null && !mon_task.isEmpty()) {
            ArrayList<String> mon_tasks;
            if (request.getSession().getAttribute("mon_tasks") == null) {
                mon_tasks = new ArrayList<>();
                request.getSession().setAttribute("mon_tasks", mon_tasks);
            } else {
                mon_tasks = (ArrayList<String>) request.getSession().getAttribute("mon_tasks");
            }

            mon_tasks.add(mon_task);
        }

        if (tue_task != null && !tue_task.isEmpty()) {
            ArrayList<String> tue_tasks;
            if (request.getSession().getAttribute("tue_tasks") == null) {
                tue_tasks = new ArrayList<>();
                request.getSession().setAttribute("tue_tasks", tue_tasks);
            } else {
                tue_tasks = (ArrayList<String>) request.getSession().getAttribute("tue_tasks");
            }

            tue_tasks.add(tue_task);
        }

        if (wed_task != null && !wed_task.isEmpty()) {
            ArrayList<String> wed_tasks;
            if (request.getSession().getAttribute("wed_tasks") == null) {
                wed_tasks = new ArrayList<>();
                request.getSession().setAttribute("wed_tasks", wed_tasks);
            } else {
                wed_tasks = (ArrayList<String>) request.getSession().getAttribute("wed_tasks");
            }

            wed_tasks.add(wed_task);
        }

        if (thu_task != null && !thu_task.isEmpty()) {
            ArrayList<String> thu_tasks;
            if (request.getSession().getAttribute("thu_tasks") == null) {
                thu_tasks = new ArrayList<>();
                request.getSession().setAttribute("thu_tasks", thu_tasks);
            } else {
                thu_tasks = (ArrayList<String>) request.getSession().getAttribute("thu_tasks");
            }

            thu_tasks.add(thu_task);
        }

        if (fri_task != null && !fri_task.isEmpty()) {
            ArrayList<String> fri_tasks;
            if (request.getSession().getAttribute("fri_tasks") == null) {
                fri_tasks = new ArrayList<>();
                request.getSession().setAttribute("fri_tasks", fri_tasks);
            } else {
                fri_tasks = (ArrayList<String>) request.getSession().getAttribute("fri_tasks");
            }

            fri_tasks.add(fri_task);
        }

        if (sat_task != null && !sat_task.isEmpty()) {
            ArrayList<String> sat_tasks;
            if (request.getSession().getAttribute("sat_tasks") == null) {
                sat_tasks = new ArrayList<>();
                request.getSession().setAttribute("sat_tasks", sat_tasks);
            } else {
                sat_tasks = (ArrayList<String>) request.getSession().getAttribute("sat_tasks");
            }

            sat_tasks.add(sat_task);
        }

        if (sun_task != null && !sun_task.isEmpty()) {
            ArrayList<String> sun_tasks;
            if (request.getSession().getAttribute("sun_tasks") == null) {
                sun_tasks = new ArrayList<>();
                request.getSession().setAttribute("sun_tasks", sun_tasks);
            } else {
                sun_tasks = (ArrayList<String>) request.getSession().getAttribute("sun_tasks");
            }

            sun_tasks.add(sun_task);
        }

        request.getRequestDispatcher("/index.jsp").forward(request, response);
    }
}
