@echo off
rem Gradle wrapper script
if not exist gradle\wrapper\gradle-wrapper.jar (
    echo Downloading Gradle Wrapper...
    powershell -Command "& {param($u,$f);[Net.ServicePointManager]::SecurityProtocol=[Net.SecurityProtocolType]::Tls12;Invoke-WebRequest -Uri $u -OutFile $f}" -u "https://github.com/gradle/gradle/raw/v8.5.0/gradle/wrapper/gradle-wrapper.jar" -f "gradle\wrapper\gradle-wrapper.jar"
)
java -jar gradle\wrapper\gradle-wrapper.jar %*
