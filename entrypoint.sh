#!/bin/sh

results=$(java -jar /checkstyle.jar $* | awk NF | grep WARN)


if [ -z "$results" ]; then
  message="code style looks good"
else
  message=$results
fi

if [ -n "$GITHUB_ACTIONS" ]; then
  echo "::set-output name=results::$message"
else
  echo $message
fi
