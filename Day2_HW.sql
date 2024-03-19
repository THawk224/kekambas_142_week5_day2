-- Creating the database for a Movie Theater

CREATE TABLE Customers (
    CustomerID SERIAL PRIMARY KEY,
    FirstName VARCHAR(255) NOT NULL,
    LastName VARCHAR(255) NOT NULL,
    Email VARCHAR(255) UNIQUE NOT NULL,
    RegistrationDate TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);
SELECT *
FROM Customers;


CREATE TABLE Movies (
    MovieID SERIAL PRIMARY KEY,
    Title VARCHAR(255) NOT NULL,
    Duration INT NOT NULL,
    ReleaseDate DATE NOT NULL,
    Genre VARCHAR(100)
);
SELECT *
FROM Movies;


CREATE TABLE Tickets (
    TicketID SERIAL PRIMARY KEY,
    CustomerID INT NOT NULL,
    MovieID INT NOT NULL,
    Showtime TIMESTAMP NOT NULL,
    SeatNumber VARCHAR(10) NOT NULL,
    Price DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (MovieID) REFERENCES Movies(MovieID)
);
SELECT *
FROM Tickets;

-- Challenge:

-- Add a column for rating in the Movies table
ALTER TABLE Movies
ADD COLUMN Rating VARCHAR(5);

SELECT *
FROM Movies;


-- Add a loyalty points column to the Customers table
ALTER TABLE Customers
ADD COLUMN LoyaltyPoints INT DEFAULT 0;

SELECT *
FROM Customers;