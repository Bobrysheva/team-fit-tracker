package com.bobrysheva.teamfitchecker.model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class SessionRepository {
    List<Session> sessions = new ArrayList<>();
    Map<String, List<Session>> sessionMap = new HashMap<String, List<Session>>();

    public SessionRepository() {
    }

    public Map<String, List<Session>> getSessionMap() {
        return sessionMap;
    }

    public List<Session> getSessions(String name) {
        return sessionMap.get(name);
    }

     public void addNewSession(Session session) {
        String username = session.getName();
        List <Session> userSessions = sessionMap.get(username);
        if (userSessions == null) {
            userSessions = new ArrayList<>();
            userSessions.add(session);
            sessionMap.put(session.getName(), userSessions);
        } else {
            userSessions.add(session);
        }
    }

    public int sessionCount(String name) {
        if (sessionMap.get(name)!=null) {
        List<Session> sessions1 = sessionMap.get(name);
        return sessions1.size();}
        else return 0;}
    }
