#!/bin/bash

awk '/serdar/ {print}' event_history.csv | tee event_history1.csv
awk '/TerminateInstances/ {print}' event_history1.csv | tee event_history2.csv
awk '/i-0c127ab5cdf997cf4/ {print}' event_history2.csv | tee result.txt
