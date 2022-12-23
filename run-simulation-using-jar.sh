#!/usr/bin/env bash
JAVA_OPTS="-DbaseUrl=http://localhost:8080  -DdurationMin=1 -DrequestPerSecond=10"
SIMULATION_NAME=com.github.jdanielgg.gatlingjar.simulation.ExampleSimulation
java ${JAVA_OPTS} -cp target/GatlingJar.jar io.gatling.app.Gatling -s "${SIMULATION_NAME}"
