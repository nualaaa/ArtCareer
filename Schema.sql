# This is the structure of the ArtCareer relational database.

# Creating the overall database.

CREATE DATABASE ArtCareer;

USE ArtCareer;

SELECT DATABASE();

# Creating the tables.
# This table, Galleries, starts with a lot of typical location based data.
# We also want the option to score the galleries on certain metrics. 

CREATE TABLE Galleries(
	Id INT PRIMARY KEY AUTO_INCREMENT,
    Gallery VARCHAR(100) UNIQUE NOT NULL,
    Postcode VARCHAR(7),
    FirstContactYear YEAR,
    Exhibitions INT DEFAULT(1),
    Artworks INT,
    Media INT(2),
    Networking INT(2),
    Safety INT(2),
    Crime INT(2)
);


# The second table is exhibitions.
# Exhibitions are events, whereas galleries are locations. Galleries and exhibitions relate to each other.
# From this point, we specify collumns that act as foreign keys and where they link to. 

CREATE TABLE Exhibitions(
Id INT PRIMARY KEY AUTO_INCREMENT,
Title VARCHAR(80) NOT NULL,
Opening YEAR,
MainVenue VARCHAR(100),
FOREIGN KEY(MainVenue) REFERENCES Galleries(Gallery),
Artists INT,
Artworks INT,
Media INT,
Network INT,
Safety INT,
Crime INT,
OtherVenues BOOLEAN
);

# The third table is projects.
# This is required to support the artist understanding the relationships between various locations and events.

CREATE TABLE Projects(
Id INT PRIMARY KEY AUTO_INCREMENT,
Title VARCHAR(40),
StartYear YEAR,
AssociatedOrganisation VARCHAR(100),
FOREIGN KEY(AssociatedOrganisation) REFERENCES Galleries(Gallery),
Ongoing BOOLEAN
);
