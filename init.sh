#!/bin/sh
java $JAVA_OPTS -jar -Dserver.port=9093 -DLOG_PATH=/logs -Dspring.profiles.active=production app.jar $*
