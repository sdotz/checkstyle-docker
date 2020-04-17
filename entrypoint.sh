#!/bin/sh

results=$(java -jar /checkstyle.jar $*)
echo "::set-output name=results::$results"
