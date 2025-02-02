# Chinese Horoscope

## Description
This project is a Java-based web application that allows users to register, log in, and check their corresponding Chinese zodiac sign based on their birth year. The system is built using JSP, Servlets, and JDBC for database interaction.

## Features
- **User Authentication**: Users must register and log in to access the horoscope lookup feature.
- **Horoscope Calculation**: Determines the user's Chinese zodiac sign based on their birth year.
- **User Management**:
  - Register new users
  - Modify user details
  - Delete users
  - List all users
- **Database Integration**: Stores user data and horoscope information using a PostgreSQL database.

## Technologies Used
- Java 17 (JSP, Servlets)
- JDBC (Database connectivity)
- Apache Tomcat (Application server)
- PostgreSQL (Database

## Database Schema
### Tables:
- **HOROSCOPO**
  - `ANIMAL` (VARCHAR(30))
  - `FECHA_INICIO` (DATE)
  - `FECHA_FIN` (DATE)

- **USUARIOS**
  - `ID` (SERIAL, PRIMARY KEY)
  - `NOMBRE` (VARCHAR(30))
  - `USERNAME` (VARCHAR(30), UNIQUE)
  - `EMAIL` (VARCHAR(50), UNIQUE)
  - `FECHA_NACIMIENTO` (DATE)
  - `PASSWORD` (VARCHAR(30))
  - `ANIMAL` (VARCHAR(30))

## Project Structure
- **com.edutecno.servlets**: Contains Servlets for handling user requests.
- **com.edutecno.dao**: Data Access Objects for database interactions.
- **com.edutecno.modelo**: Java classes representing entities (User, Horoscope).
- **com.edutecno.procesaconexion**: Manages database connections.

## Setup Instructions
1. Clone the repository.
2. Import the project into your Java IDE as a Dynamic Web Project.
3. Set up the PostgreSQL database and create the required tables.
4. Configure database connection settings in `DBConnection.java`.
5. Deploy the project on Apache Tomcat.
6. Run the application and access it via `http://localhost:your-port/`.

## Usage
1. Register a new user.
2. Log in with your credentials.
3. Enter the Horoscope section to know what Chinese animal corresponds to your birthday.
4. Modify or delete user details if needed.

