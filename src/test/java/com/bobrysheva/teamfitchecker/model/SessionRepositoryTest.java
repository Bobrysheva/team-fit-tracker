package com.bobrysheva.teamfitchecker.model;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.util.List;
import java.util.Map;

import static org.junit.jupiter.api.Assertions.*;

class SessionRepositoryTest {

    private SessionRepository sessionRepository;
    private Session session1;
    private Session session2;
    private Session session3;

    @BeforeEach
    void setUp () {
        sessionRepository= new SessionRepository();
        session1 = new Session("Анна", "127.1.3.1.11");
        session2 = new Session("Анна", "127.1.3.1.11");
        session3 = new Session("Светлана", "127.1.3.1.13");
    }

    @Test
    void addNewSessionForUser() {
        sessionRepository.addNewSession(session1);

        Map <String, List<Session>> sessionMap = sessionRepository.getSessionMap();
        assertEquals(1, sessionMap.size());
        assertEquals(1, sessionMap.get("Анна").size());
    }

    @Test
    void addNewSessionsForSameUser() {
        sessionRepository.addNewSession(session1);
        sessionRepository.addNewSession(session2);

        Map <String, List<Session>> sessionMap = sessionRepository.getSessionMap();
        assertEquals(1, sessionMap.size());
        assertEquals(2, sessionMap.get("Анна").size());
        assertTrue(sessionMap.get("Анна").contains(session1));
        assertTrue(sessionMap.get("Анна").contains(session2));
    }

    @Test
    void addNewSessionsForDifferentUsers () {
        sessionRepository.addNewSession(session1);
        sessionRepository.addNewSession(session2);
        sessionRepository.addNewSession(session3);

        Map<String, List <Session>> sessionMap = sessionRepository.getSessionMap();
        assertEquals(2, sessionMap.size());
        assertEquals(2, sessionMap.get("Анна").size());
        assertEquals(1, sessionMap.get("Светлана").size());
    }

    @Test
    void getSessionsForUser() {
        sessionRepository.addNewSession(session1);
        sessionRepository.addNewSession(session2);

        List <Session> userSessions = sessionRepository.getSessions(session1.getName());

        assertEquals(2, userSessions.size());
        assertTrue(userSessions.contains(session1));
        assertTrue(userSessions.contains(session2));
    }

    @Test
    void getSessionsForNotExistingUsers() {
        sessionRepository.addNewSession(session1);
        sessionRepository.addNewSession(session3);

        assertNull(sessionRepository.getSessions("notExistingUser"));
    }

    @Test
    void sessionCountForTheSameUser() {
        sessionRepository.addNewSession(session1);
        sessionRepository.addNewSession(session2);

        assertEquals(2, sessionRepository.sessionCount(session1.getName()));
    }

    @Test
    void sessionCountForNotExistingUser() {
        sessionRepository.addNewSession(session1);
        sessionRepository.addNewSession(session3);

        assertEquals(0, sessionRepository.sessionCount("NotExistingUser"));
    }
}