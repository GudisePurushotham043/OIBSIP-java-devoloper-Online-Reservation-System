# Phases — Online Reservation System

## Phase 1 — Project Setup

- [ ] Install Java JDK.
- [ ] Install an IDE such as IntelliJ IDEA, Eclipse, NetBeans, or VS Code.
- [ ] Create a Java project using Maven.
- [ ] Add the JDBC database dependency.
- [ ] Select MySQL or SQLite.
- [ ] Create the basic project package structure.

**Output:** Working Java project.

---

## Phase 2 — Database Setup

- [ ] Create the database.
- [ ] Create the `users` table.
- [ ] Create the `trains` table.
- [ ] Create the `reservations` table.
- [ ] Insert sample user credentials.
- [ ] Insert sample train records.
- [ ] Test database connection.

**Output:** Working database with sample data.

---

## Phase 3 — JDBC Connection

- [ ] Create `DBConnection.java`.
- [ ] Configure the database URL.
- [ ] Configure database username and password if using MySQL.
- [ ] Create JDBC connection.
- [ ] Add exception handling.
- [ ] Test connection from Java.

**Output:** Java application successfully connected to the database.

---

## Phase 4 — Login Module

- [ ] Create `LoginFrame.java`.
- [ ] Add username field.
- [ ] Add password field.
- [ ] Add Login button.
- [ ] Retrieve login credentials from the database.
- [ ] Validate credentials using `PreparedStatement`.
- [ ] Display an error for invalid credentials.
- [ ] Open Dashboard after successful login.

**Output:** Functional login screen.

---

## Phase 5 — Dashboard

- [ ] Create `DashboardFrame.java`.
- [ ] Add Book Ticket button.
- [ ] Add Cancel Ticket button.
- [ ] Add Exit button.
- [ ] Connect buttons to the respective screens.

**Output:** Functional application dashboard.

---

## Phase 6 — Reservation Module

- [ ] Create `ReservationFrame.java`.
- [ ] Add passenger name field.
- [ ] Add train number field.
- [ ] Add train-name field.
- [ ] Add class-type `JComboBox`.
- [ ] Add journey-date field.
- [ ] Add source field.
- [ ] Add destination field.
- [ ] Add Book/Insert button.
- [ ] Add Clear button.

**Output:** Complete reservation form.

---

## Phase 7 — Train Lookup

- [ ] Accept train number from the user.
- [ ] Validate that the train number is numeric.
- [ ] Search the train table using JDBC.
- [ ] Retrieve train name.
- [ ] Automatically populate the train-name field.
- [ ] Show an error if the train number does not exist.

**Output:** Automatic train-name lookup.

---

## Phase 8 — Booking and PNR Generation

- [ ] Validate all reservation fields.
- [ ] Validate journey date.
- [ ] Check source and destination.
- [ ] Generate a unique PNR.
- [ ] Insert booking details into the reservation table.
- [ ] Show booking confirmation.
- [ ] Display the generated PNR.

**Output:** Fully functional ticket booking.

---

## Phase 9 — Cancellation Module

- [ ] Create `CancellationFrame.java`.
- [ ] Add PNR input field.
- [ ] Add Fetch button.
- [ ] Search reservation using PNR.
- [ ] Display complete booking details.
- [ ] Display error for an invalid PNR.

**Output:** PNR-based booking retrieval.

---

## Phase 10 — Ticket Cancellation

- [ ] Add Confirm Cancellation button.
- [ ] Display an "Are you sure?" dialog.
- [ ] Delete the selected booking after confirmation.
- [ ] Display cancellation success message.
- [ ] Clear the form.
- [ ] Verify that the cancelled PNR no longer exists.

**Output:** Functional ticket cancellation.

---

## Phase 11 — Validation and Error Handling

- [ ] Prevent empty required fields.
- [ ] Validate numeric train number.
- [ ] Validate date format.
- [ ] Prevent invalid train numbers.
- [ ] Prevent source and destination from being the same.
- [ ] Validate PNR before cancellation.
- [ ] Handle database connection errors.
- [ ] Handle SQL exceptions.
- [ ] Display user-friendly error messages.

**Output:** Reliable application with basic error handling.

---

## Phase 12 — Testing

- [ ] Test valid login.
- [ ] Test invalid login.
- [ ] Test empty fields.
- [ ] Test invalid train number.
- [ ] Test valid train number.
- [ ] Test automatic train-name retrieval.
- [ ] Test successful booking.
- [ ] Test unique PNR generation.
- [ ] Test invalid PNR.
- [ ] Test booking retrieval.
- [ ] Test cancellation confirmation.
- [ ] Test successful cancellation.
- [ ] Test database records after cancellation.

**Output:** Tested and stable application.

---

## Phase 13 — UI Improvement

- [ ] Improve JFrame layouts.
- [ ] Add consistent fonts.
- [ ] Align labels and input fields.
- [ ] Add appropriate button sizes.
- [ ] Add application title.
- [ ] Improve error and success dialogs.
- [ ] Make the forms user-friendly.

**Output:** Clean and professional GUI.

---

## Phase 14 — Final Documentation

- [ ] Prepare project README.
- [ ] Add project objective.
- [ ] Add technology stack.
- [ ] Add system requirements.
- [ ] Add database schema.
- [ ] Add screenshots.
- [ ] Add installation instructions.
- [ ] Add execution steps.
- [ ] Add testing results.
- [ ] Add future enhancements.

**Output:** Complete project documentation.

---

## Final Project Flow

```text
Setup
  ↓
Database
  ↓
JDBC Connection
  ↓
Login
  ↓
Dashboard
  ↓
Reservation
  ↓
Train Lookup
  ↓
PNR Generation
  ↓
Booking Confirmation
  ↓
Cancellation
  ↓
Testing
  ↓
Documentation
  ↓
FINAL PROJECT
```