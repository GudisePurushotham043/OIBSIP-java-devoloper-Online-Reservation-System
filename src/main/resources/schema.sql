-- Users table
CREATE TABLE IF NOT EXISTS users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(50) NOT NULL
);

-- Trains table
CREATE TABLE IF NOT EXISTS trains (
    train_number INTEGER PRIMARY KEY,
    train_name VARCHAR(100) NOT NULL,
    source VARCHAR(50) NOT NULL,
    destination VARCHAR(50) NOT NULL
);

-- Reservations table
CREATE TABLE IF NOT EXISTS reservations (
    pnr VARCHAR(20) PRIMARY KEY,
    passenger_name VARCHAR(100) NOT NULL,
    train_number INTEGER NOT NULL,
    train_name VARCHAR(100) NOT NULL,
    class_type VARCHAR(20) NOT NULL,
    journey_date DATE NOT NULL,
    source VARCHAR(50) NOT NULL,
    destination VARCHAR(50) NOT NULL,
    FOREIGN KEY (train_number) REFERENCES trains(train_number)
);

-- Sample Data (Insert only if empty or ignore duplicates if needed, but for SQLite simple inserts are fine if we run this once)
INSERT OR IGNORE INTO users (id, username, password) VALUES (1, 'admin', 'admin123');
INSERT OR IGNORE INTO users (id, username, password) VALUES (2, 'user', 'user123');

INSERT OR IGNORE INTO trains (train_number, train_name, source, destination) VALUES (12785, 'Kacheguda Express', 'Bengaluru', 'Hyderabad');
INSERT OR IGNORE INTO trains (train_number, train_name, source, destination) VALUES (12627, 'Karnataka Express', 'Bengaluru', 'New Delhi');
INSERT OR IGNORE INTO trains (train_number, train_name, source, destination) VALUES (12245, 'Duronto Express', 'Howrah', 'Bengaluru');
