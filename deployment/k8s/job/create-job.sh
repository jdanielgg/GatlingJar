#!/usr/bin/env bash
set -ex

JAVA_OPTS="-DbaseUrl=http://localhost:8080 -DdurationMin=0.25 -DrequestPerSecond=10"
SIMULATION_NAME="com.github.jdanielgg.gatlingjar.simulation.ExampleSimulation"

id=$(uuidgen | cut -c1-8 | awk '{print tolower($0)}')
JOB_FILENAME=GatlingJar-job-${id}.yaml
JOB_NAME=GatlingJar-${id}
./create-job-yaml.py --out "${JOB_FILENAME}" --name "${JOB_NAME}" --java_opts "${JAVA_OPTS}" --simulation "${SIMULATION_NAME}"
kubectl apply -f ${JOB_FILENAME}
echo "JOB_FILENAME=${JOB_FILENAME}" > create-job.vars
echo "JOB_NAME=${JOB_NAME}" >> create-job.vars
