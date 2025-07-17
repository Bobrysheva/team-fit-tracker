package com.bobrysheva.teamfitchecker.servlets;

import java.io.*;

import com.bobrysheva.teamfitchecker.model.Session;
import com.bobrysheva.teamfitchecker.model.SessionRepository;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet("/start")
public class StartSessionServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");

        String username = request.getParameter("username");
        String clientIp = request.getRemoteAddr();

        Session userSession = new Session(username, clientIp);
        userSession.startSession();

        ServletContext context = getServletContext();
        SessionRepository sessionRepository = (SessionRepository) context.getAttribute("sessionRepository");

        if (sessionRepository == null) {
            sessionRepository = new SessionRepository();
            context.setAttribute("sessionRepository", sessionRepository);
            userSession.setAttemptNumber(1);
        }
        else if (sessionRepository != null) {
            userSession.setAttemptNumber(sessionRepository.sessionCount(username)+1);
        }

        sessionRepository.addNewSession(username, userSession);

        HttpSession httpSession = request.getSession();
        httpSession.setAttribute("username", username);
        httpSession.setAttribute("sessionObject", userSession);
        httpSession.setAttribute("sessionNumber", sessionRepository.sessionCount(username));

        response.sendRedirect("welcome.jsp");
    }
}