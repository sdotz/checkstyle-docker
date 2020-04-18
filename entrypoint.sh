#!/bin/sh

results=$(java -jar /checkstyle.jar $* | awk NF | grep WARN)

if [ -n "$GITHUB_ACTIONS" ]; then
  echo "::set-output name=results::$results"
else
  if [ -n $results ]; then
    echo "code style looks good"
    exit 0
  else
    echo $results
    exit 1
  fi
fi

