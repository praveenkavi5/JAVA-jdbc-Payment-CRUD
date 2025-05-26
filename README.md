
# Java JDBC Payment CRUD Application

This is a simple Java-based web application for managing payment records using JDBC (Java Database Connectivity). It provides full **CRUD** (Create, Read, Update, Delete) operations for payment data through a user-friendly interface.

## 📌 Features

- Add new payment entries
- View all payment records
- Update existing payments
- Delete unwanted payment records
- Uses JSP for the frontend
- JDBC with MySQL for backend integration

## 🛠 Technologies Used

- Java (JSP/Servlet)
- JDBC
- MySQL
- Apache Tomcat
- HTML/CSS (WebContent)
- Eclipse IDE (project structure)

## 🗃️ Project Structure

```

JAVA-jdbc-Payment-CRUD-main/
├── src/                         # Java servlet files
├── WebContent/                 # JSP pages, CSS, JavaScript
│   └── index.jsp               # Home page
│   └── payments.jsp            # Payment display and operations
├── build/                      # Compiled classes
├── .settings/                 # Eclipse configuration
└── README.md

````

## 🚀 Getting Started

### Prerequisites

- Java Development Kit (JDK)
- Apache Tomcat 8.x or later
- MySQL Server
- Eclipse IDE (recommended)

### Database Setup

1. Create a MySQL database:

```sql
CREATE DATABASE paymentdb;
````

2. Create the `payments` table:

```sql
CREATE TABLE payments (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  amount DECIMAL(10, 2) NOT NULL,
  date DATE NOT NULL
);
```

3. Update your DB credentials in the Java connection file (usually in a class like `DBConnection.java`):

```java
String jdbcURL = "jdbc:mysql://localhost:3306/paymentdb";
String dbUser = "root";
String dbPassword = "your_password";
```

### Running the Project

1. Import the project into Eclipse as a **Dynamic Web Project**
2. Add Apache Tomcat server runtime
3. Deploy the project to the server
4. Start the server and visit:

```
http://localhost:8080/JAVA-jdbc-Payment-CRUD-main/
```

## 📷 Screenshots

> 

## 📂 License

This project is open-source and free to use for educational purposes.

---

**Developed with ❤️ using Java, JSP, and JDBC**



