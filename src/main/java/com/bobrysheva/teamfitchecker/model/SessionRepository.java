package com.bobrysheva.teamfitchecker.model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class SessionRepository {
    List<Session> sessions = new ArrayList<>();
    Map<String, List<Session>> sessionMap = new HashMap<String, List<Session>>();

    public SessionRepository(Map<String, List<Session>> sessionMap) {
        this.sessionMap = sessionMap;
    }

    public SessionRepository() {
    }

    public Map<String, List<Session>> getSessionMap() {
        return sessionMap;
    }

    public List<Session> getSessions(String name) {
        return sessionMap.get(name);
    }

    public void setSessions(List<Session> sessions) {
        this.sessions = sessions;
    }

    public void setSessionMap(Map<String, List<Session>> sessionMap) {
        this.sessionMap = sessionMap;
    }

    public void addNewSession(String username, Session session) {
        if (!sessionMap.containsKey(session.getName())) {
            ArrayList<Session> sessions1 = new ArrayList<>();
            sessions1.add(session);
            sessionMap.put(session.getName(), sessions1);
        } else {
            List<Session> updateSessions = sessionMap.get(session.getName());
            updateSessions.add(session);
            sessionMap.put(session.getName(), (ArrayList) updateSessions);
        }
    }

    public int sessionCount(String name) {
        List<Session> sessions1 = sessionMap.get(name);
        return sessions1.size();
    }
}
