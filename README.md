# Java-Tomcat-Maven Example

This is an example ready-to-deploy Java web application built for Tomcat using Maven and `webapp-runner`. This project demonstrates how to use Maven to package a Java web application and run it using `webapp-runner` without requiring a separate Tomcat installation.

## Project Author

Developed by **OLUWAGBEMILA OLUWANIFEMI**.

## Running Locally

To run this application locally, ensure that you have the following installed on your machine:
- Java (JDK 8 or later)
- Maven (version 3.6.3 or later)

Follow these steps:

1. Clone this repository:

    ```bash
    git clone https://github.com/<your-username>/MAVENS-JENKINS-PROJECT.git
    cd MAVENS-JENKINS-PROJECT
    ```

2. Package the application using Maven:

    ```bash
    mvn package
    ```

3. Run the application with `webapp-runner`:

    ```bash
    java -jar target/dependency/webapp-runner.jar --port 8080 target/*.war
    ```

4. Open your browser and go to [http://localhost:8080](http://localhost:8080) to access the application.

## How This Was Built

1. **Generate the project** using a Maven archetype:

    ```bash
    mvn archetype:generate -DarchetypeArtifactId=maven-archetype-webapp
    ```

2. **Add the `webapp-runner` plugin** into the `pom.xml` to automatically download and copy `webapp-runner.jar` during the build process:

    ```xml
    <build>
      <plugins>
        <plugin>
          <groupId>org.apache.maven.plugins</groupId>
          <artifactId>maven-dependency-plugin</artifactId>
          <version>3.1.1</version>
          <executions>
            <execution>
              <phase>package</phase>
              <goals>
                <goal>copy</goal>
              </goals>
              <configuration>
                <artifactItems>
                  <artifactItem>
                    <groupId>com.github.jsimone</groupId>
                    <artifactId>webapp-runner</artifactId>
                    <version>9.0.36.1</version>
                    <destFileName>webapp-runner.jar</destFileName>
                  </artifactItem>
                </artifactItems>
              </configuration>
            </execution>
          </executions>
        </plugin>
      </plugins>
    </build>
    ```

## Deploying to a Cloud Platform (Optional)

You can deploy this application to cloud platforms like Heroku using a `Procfile`. Add the following to a `Procfile`:

```bash
web: java $JAVA_OPTS -jar target/dependency/webapp-runner.jar --port $PORT target/*.war
