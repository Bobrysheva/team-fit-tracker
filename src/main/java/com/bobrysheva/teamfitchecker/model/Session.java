package com.bobrysheva.teamfitchecker.model;

import com.bobrysheva.teamfitchecker.model.enums.SessionResult;
import com.bobrysheva.teamfitchecker.model.enums.SessionStatus;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.RequiredArgsConstructor;

@Data
@RequiredArgsConstructor
@AllArgsConstructor
public class Session {
    private String name;
    private String ip;
    private int attemptNumber;
    private SessionStatus sessionStatus;
    private SessionResult sessionResult;

    public Session(String name, String ip) {
        this.name = name;
        this.ip = ip;
    }

    public void setAttemptNumber(int attemptNumber) {
        this.attemptNumber = attemptNumber;
    }

    public void startSession() {
        sessionStatus = SessionStatus.IN_PROGRESS;
        sessionResult = SessionResult.NOT_YET;

    }

    public void endSessionFailed() {
        sessionStatus = SessionStatus.FINISHED;
        sessionResult = SessionResult.FAILED;
    }

    public void endSessionPassed() {
        sessionStatus = SessionStatus.FINISHED;
        sessionResult = SessionResult.PASSED;
    }

    @Override
    public String toString() {
        return "Номер попытки: " + attemptNumber +
                ", Статус сессии: " + sessionStatus +
                ", Результат: " + sessionResult;
    }
}
