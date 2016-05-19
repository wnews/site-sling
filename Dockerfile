FROM java:openjdk-8-jdk

# Set the WORKDIR. All following commands will be run in this directory.
WORKDIR /app

# Copying all gradle files necessary to install gradle with gradlew
COPY gradlew build.gradle settings.gradle ./
COPY gradle gradle

COPY wnews-app wnews-app
COPY wnews-content wnews-content
COPY wnews-config wnews-config

ENTRYPOINT ["/app/gradlew"]

CMD ["-q", "tasks", "--all"]
