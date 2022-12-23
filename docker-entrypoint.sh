#!/bin/bash
SIMULATION_NAME=${SIMULATION_NAME:-com.github.jdanielgg.gatlingjar.simulation.ExampleSimulation}
exec java ${JAVA_OPTS} -cp bin/GatlingJar.jar  io.gatling.app.Gatling -s ${SIMULATION_NAME}
