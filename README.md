# Simple Maven + Tomcat Web Application

A simple, modern-looking Java web application built with Maven and deployable to Apache Tomcat.

---

## Required Software Versions

| Software   | Required Version | Download |
|------------|-----------------|----------|
| **JDK**    | 17 (LTS)        | https://adoptium.net |
| **Maven**  | 3.9.x           | https://maven.apache.org/download.cgi |
| **Tomcat** | 10.1.x          | https://tomcat.apache.org/download-10.cgi |

> **Note:** Tomcat 10.1 uses the `jakarta.servlet` namespace (Jakarta EE 10).  
> If you need the older `javax.servlet` namespace, use **Tomcat 9.0.x** with `javax.servlet-api 4.0.1` instead.

---

## Pages

### Welcome Page — `http://localhost:8080/simple-webapp/`
- Dark glassmorphism UI with a centered card
- Live server info badge (green dot + Tomcat version)
- Name input field with a **Say Hello** button
- Stack tags: Java 17 · Maven 3.9 · Tomcat 10.1 · Jakarta EE 10

### Hello Page — `http://localhost:8080/simple-webapp/hello?name=Alice`
- Greeting card with the submitted name highlighted
- Back Home button to return to the welcome page
- Input is HTML-escaped to prevent XSS

---

## Project Structure

```
simple-webapp/
├── pom.xml
└── src/
    └── main/
        ├── java/com/example/
        │   └── HelloServlet.java      ← handles GET /hello?name=
        └── webapp/
            ├── index.jsp              ← welcome page with name form
            └── WEB-INF/
                └── web.xml
```

---

## Build

```bash
mvn clean package
```

Output WAR: `target/simple-webapp.war`

---

## Deploy to Tomcat

1. Copy the WAR into Tomcat's `webapps/` directory:
   ```bash
   copy target\simple-webapp.war C:\path\to\tomcat\webapps\
   ```
2. Start Tomcat:
   ```bash
   C:\path\to\tomcat\bin\startup.bat
   ```
3. Open your browser:
   ```
   http://localhost:8080/simple-webapp/
   ```

> The context path (`/simple-webapp`) is derived automatically from the WAR filename.

---

## Environment Verification

Check your installed versions before building:

```bash
java -version    # should be 17.x.x
mvn -version     # should be 3.9.x
```
