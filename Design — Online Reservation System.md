# Design — Online Reservation System

## 1. System Architecture

The application follows a simple three-layer architecture:

```text
+-----------------------------+
|       Java Swing GUI        |
| Login / Reservation /       |
| Cancellation Forms          |
+-------------+---------------+
              |
              v
+-----------------------------+
|       Java Application      |
| Validation / PNR Logic /    |
| Event Handling              |
+-------------+---------------+
              |
              v
+-----------------------------+
|          JDBC Layer         |
| Connection / SQL Queries /  |
| PreparedStatement           |
+-------------+---------------+
              |
              v
+-----------------------------+
|       MySQL / SQLite        |
| Users / Trains /            |
| Reservations                |
+-----------------------------+
```

## 2. Application Screens

### Screen 1 — Login

```text
+--------------------------------------+
|       ONLINE RESERVATION SYSTEM      |
+--------------------------------------+
|                                      |
| Username:  [____________________]   |
|                                      |
| Password:  [____________________]   |
|                                      |
|             [ LOGIN ]                |
|                                      |
| Invalid credentials → Error Message  |
+--------------------------------------+
```

### Screen 2 — Main Dashboard

```text
+------------------------------------------------+
|             RESERVATION DASHBOARD              |
+------------------------------------------------+
|                                                |
|   [ BOOK TICKET ]       [ CANCEL TICKET ]      |
|                                                |
|   [ EXIT ]                                     |
|                                                |
+------------------------------------------------+
```

### Screen 3 — Reservation Form

```text
+------------------------------------------------+
|              TRAIN RESERVATION                 |
+------------------------------------------------+
| Passenger Name:  [________________________]    |
|                                                |
| Train Number:    [____________] [FETCH]        |
|                                                |
| Train Name:      [________________________]    |
|                                                |
| Class Type:      [ Select Class ▼ ]            |
|                                                |
| Journey Date:    [ DD-MM-YYYY ]                |
|                                                |
| Source:          [________________________]    |
|                                                |
| Destination:     [________________________]    |
|                                                |
|       [ BOOK / INSERT ]   [ CLEAR ]            |
+------------------------------------------------+
```

### Screen 4 — Booking Confirmation

```text
+-----------------------------------------------+
|              BOOKING SUCCESSFUL               |
+-----------------------------------------------+
| PNR Number:     202608140001                  |
| Passenger:      Rahul                         |
| Train Number:   12785                         |
| Train Name:     ABC Express                   |
| Class:          AC                            |
| Journey Date:   20-08-2026                   |
| Source:         Anantapur                     |
| Destination:    Bengaluru                     |
|                                               |
|                    [ OK ]                     |
+-----------------------------------------------+
```

### Screen 5 — Cancellation Form

```text
+------------------------------------------------+
|               CANCEL RESERVATION               |
+------------------------------------------------+
|                                                |
| PNR Number: [________________] [ FETCH ]       |
|                                                |
| Passenger:  ______________________________     |
| Train No:   ______________________________     |
| Train Name: ______________________________     |
| Class:      ______________________________     |
| Date:       ______________________________     |
| Source:     ______________________________     |
| Destination:______________________________     |
|                                                |
|       [ CONFIRM CANCELLATION ]                 |
+------------------------------------------------+
```

## 3. Java Class Structure

```text
src/
└── main/
    └── java/
        └── reservation/
            ├── Main.java
            ├── DBConnection.java
            ├── LoginFrame.java
            ├── DashboardFrame.java
            ├── ReservationFrame.java
            ├── CancellationFrame.java
            ├── TrainDAO.java
            ├── ReservationDAO.java
            └── PNRGenerator.java
```

## 4. Class Responsibilities

### Main.java

Starts the application and opens the login screen.

### DBConnection.java

Creates and manages the JDBC database connection.

### LoginFrame.java

Handles:

- Username input
- Password input
- Login validation
- Opening the dashboard

### DashboardFrame.java

Provides navigation to:

- Reservation
- Cancellation
- Exit

### ReservationFrame.java

Handles:

- Passenger information
- Train number
- Train-name lookup
- Class selection
- Journey date
- Source/destination
- Booking

### CancellationFrame.java

Handles:

- PNR input
- Fetching booking details
- Cancellation confirmation
- Deleting reservation

### TrainDAO.java

Handles database operations related to trains.

### ReservationDAO.java

Handles:

- Insert reservation
- Find reservation by PNR
- Delete reservation

### PNRGenerator.java

Generates unique PNR numbers.

## 5. Database Relationship

```text
USERS
  |
  | Login
  v
DASHBOARD
  |
  +------------------+
  |                  |
  v                  v
TRAINS          RESERVATIONS
  |                  |
  | Train Number     | PNR
  +------------------+
```

## 6. User Flow

```text
START
  |
  v
LOGIN
  |
  +---- Invalid ----> Error Message
  |
 Valid
  |
  v
DASHBOARD
  |
  +----------+-----------+
  |                      |
  v                      v
BOOK TICKET         CANCEL TICKET
  |                      |
  v                      v
VALIDATE             ENTER PNR
  |                      |
  v                      v
GENERATE PNR         FETCH BOOKING
  |                      |
  v                      v
SAVE DATABASE        SHOW DETAILS
  |                      |
  v                      v
CONFIRM BOOKING      CONFIRM CANCEL
                         |
                         v
                    DELETE BOOKING
```

## 7. UI Components

| Component | Swing Class |
|---|---|
| Main window | `JFrame` |
| Text input | `JTextField` |
| Password input | `JPasswordField` |
| Button | `JButton` |
| Class selection | `JComboBox` |
| Labels | `JLabel` |
| Message dialog | `JOptionPane` |
| Booking details | `JTextArea` |
| Date input | `JTextField` |

## 8. Design Principles

- Keep the interface simple.
- Use consistent labels and buttons.
- Separate GUI and database logic.
- Use DAO classes for database operations.
- Validate data before database insertion.
- Use `PreparedStatement` for SQL operations.
- Display clear success and error messages.