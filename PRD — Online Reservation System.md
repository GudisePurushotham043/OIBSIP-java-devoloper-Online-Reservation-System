# PRD — Online Reservation System

## 1. Project Title

**Online Reservation System**

## 2. Objective

Build a GUI-based train/transport reservation system using Java Swing, JDBC, and MySQL/SQLite. The system allows users to log in, book train tickets, generate a unique PNR number, view booking details, and cancel tickets using the PNR number.

## 3. Technology Stack

- **Programming Language:** Java
- **GUI:** Java Swing
- **Database Connectivity:** JDBC
- **Database:** MySQL or SQLite
- **IDE:** IntelliJ IDEA / Eclipse / NetBeans / VS Code
- **Build Tool:** Maven
- **Database Driver:** MySQL Connector/J or SQLite JDBC Driver

## 4. Target Users

- Railway/transport reservation users
- System administrators
- Students demonstrating a Java GUI + database project

## 5. Functional Requirements

### 5.1 Login Module

- Username field
- Password field
- Login button
- Validate username and password
- Display an error message for invalid credentials
- Open the main reservation dashboard after successful login

### 5.2 Reservation Module

The reservation form should contain:

- Passenger Name
- Train Number
- Train Name
- Class Type
- Date of Journey
- Source Station
- Destination Station
- Book/Insert button
- Clear button

### 5.3 Train Name Auto-Population

When the user enters a valid train number:

1. Search the train number in the database.
2. Retrieve the corresponding train name.
3. Automatically display the train name.
4. Display an error if the train number does not exist.

### 5.4 Ticket Booking

When the user clicks **Book**:

1. Validate all required fields.
2. Validate the train number.
3. Validate the journey date.
4. Generate a unique PNR number.
5. Store the booking in the database.
6. Display a confirmation dialog.
7. Show complete booking information.

### 5.5 PNR Generation

The system must generate a unique PNR for every successful reservation.

Example:

`PNR: 202608140001`

The PNR should be stored in the reservation table and used for cancellation.

### 5.6 Cancellation Module

The cancellation form should contain:

- PNR Number
- Fetch button
- Booking details display area
- Confirm Cancellation button

When the user enters a valid PNR:

1. Search the reservation database.
2. Retrieve the booking.
3. Display the complete booking details.

If the PNR does not exist, display an appropriate error message.

### 5.7 Ticket Cancellation

When **Confirm Cancellation** is selected:

1. Display an "Are you sure?" confirmation dialog.
2. If the user selects **Yes**, delete the reservation.
3. Display a successful cancellation message.
4. Clear the cancellation form.

If the user selects **No**, keep the booking unchanged.

## 6. Input Validation

The system should validate:

- Username cannot be empty.
- Password cannot be empty.
- Passenger name cannot be empty.
- Train number must be numeric.
- Train number must exist in the database.
- Class type must be selected.
- Date of journey cannot be empty.
- Date must follow the required format.
- Source station cannot be empty.
- Destination station cannot be empty.
- Source and destination should not be the same.
- PNR cannot be empty during cancellation.

## 7. Database Requirements

### Users Table

| Field | Type | Description |
|---|---|---|
| id | INT | Primary Key |
| username | VARCHAR | Login username |
| password | VARCHAR | Login password |

### Trains Table

| Field | Type | Description |
|---|---|---|
| train_number | INT | Primary Key |
| train_name | VARCHAR | Train name |
| source | VARCHAR | Starting station |
| destination | VARCHAR | Destination station |

### Reservations Table

| Field | Type | Description |
|---|---|---|
| pnr | VARCHAR | Primary Key |
| passenger_name | VARCHAR | Passenger name |
| train_number | INT | Train number |
| train_name | VARCHAR | Train name |
| class_type | VARCHAR | Ticket class |
| journey_date | DATE | Date of journey |
| source | VARCHAR | Source station |
| destination | VARCHAR | Destination station |

## 8. Non-Functional Requirements

- Simple and user-friendly GUI
- Fast database operations
- Reliable booking and cancellation
- Unique PNR generation
- Secure database queries using `PreparedStatement`
- Proper exception handling
- Maintainable Java code
- Responsive GUI

## 9. Security Requirements

- Use `PreparedStatement` for SQL queries.
- Do not concatenate user input directly into SQL statements.
- Validate all user inputs.
- Password fields should use `JPasswordField`.
- Database credentials should not be hard-coded in production.

## 10. Expected Output

The completed application should provide:

- Login screen
- Reservation screen
- Automatic train-name lookup
- Ticket booking
- Unique PNR generation
- Booking confirmation
- PNR-based booking search
- Ticket cancellation
- Input validation
- MySQL/SQLite database storage