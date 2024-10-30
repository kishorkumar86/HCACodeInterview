
**HCACodeInterview**

This repository contains a small application built using plain MVC .NET with Entity Framework, connecting to a SQL Server database. The application demonstrates CRUD operations (Create, Read, Update, Delete) and follows the MVC (Model-View-Controller) design pattern.


**Getting Started**

**Prerequisites**

  •	.NET Core SDK 8.0 or later
  •	SQL Server
  
**Setup Instructions**
  1.	Clone the Repository
      git clone https://github.com/kishorkumar86/HCACodeInterview.git
  2.	Database Setup
      o Navigate to the database folder and find the SQL scripts in ‘Scripts’ file.
      o	Execute these scripts in your SQL Server to set up the database.
  3.	Configure Connection Strings
      o	Open the appsettings.json file located in the root of the project.
      o	Add your database connection string in the ConnectionStrings section.
        "ConnectionStrings": {
        "DefaultConnection": "Server=localhost\\SQLEXPRESS;Database=HCAInterviewDB;Trusted_Connection=True;TrustServerCertificate=True;"
          }
  4.	Build and Run the Application
      o	Open Visual Studio and load the project
      o	Restore the dependencies and tools:
      o	Build the project:
      o	Run the application:

**Features**
      •	Built using the MVC (Model-View-Controller) design pattern
      •	Database connection configured and working
      •	Developed in .NET Core
      •	Uses Entity Framework for database operations
      •	Implements CRUD operations
      •	Utilizes Dependency Injection (DI) for injecting DbContext services
      •	CSS used for styling and responsiveness
      •	jQuery used for opening modal popups for feedback inputs

**Author**
      •	Kishor Kumar

