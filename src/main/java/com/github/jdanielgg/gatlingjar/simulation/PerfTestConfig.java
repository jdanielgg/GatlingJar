package com.github.jdanielgg.gatlingjar.simulation;

import static com.github.jdanielgg.gatlingjar.simulation.SystemPropertiesUtil.*;

public final class PerfTestConfig {
    public static final String BASE_URL = getAsStringOrElse("baseUrl", "http://localhost:8080");
    public static final double REQUEST_PER_SECOND = getAsDoubleOrElse("requestPerSecond", 10f);
    public static final long DURATION_MIN = getAsIntOrElse("durationMin", 1);
    public static final int P95_RESPONSE_TIME_MS = getAsIntOrElse("p95ResponseTimeMs", 1000);
}
