#!/bin/sh

results=$(java -jar /checkstyle.jar $* | awk NF | grep WARN)


if [ -z "$results" ]; then
  message="code style looks good"
  if [ -n "$GITHUB_ACTIONS" ]; then
    echo "::set-output name=results::$message"
  else
    echo $message
  fi
  exit 0
else
  message=$results
  if [ -n "$GITHUB_ACTIONS" ]; then
    echo "::set-output name=results::$message"
  else
    echo $results
  fi
  exit 1
fi

