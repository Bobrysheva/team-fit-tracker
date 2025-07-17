package com.bobrysheva.teamfitchecker.servlets;

import com.bobrysheva.teamfitchecker.model.SessionRepository;
import jakarta.servlet.ServletContext;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/result")
public class TeamFitTestResult extends HttpServlet {
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        ServletContext context = getServletContext();
        SessionRepository sessionRepository = (SessionRepository) context.getAttribute("sessionRepository");
        String result = null;
        for (int i = 0; i< sessionRepository.getSessionMap().size(); i++){
            result = result + sessionRepository.getSessionMap().toString();
        }
        response.setContentType("text/html");
        response.getWriter().println(result);
    }
}
