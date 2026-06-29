#!/bin/sh
# Gradle wrapper script
if [ ! -f gradle/wrapper/gradle-wrapper.jar ]; then
    echo "Downloading Gradle Wrapper..."
    curl -sL "https://github.com/gradle/gradle/raw/v8.5.0/gradle/wrapper/gradle-wrapper.jar" -o gradle/wrapper/gradle-wrapper.jar 2>/dev/null || true
fi
exec java -jar gradle/wrapper/gradle-wrapper.jar "$@"
