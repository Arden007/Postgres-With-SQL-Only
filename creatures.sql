-- CREATE

CREATE TABLE wizards (
    name character varying(50),
    power character varying(50)
);

CREATE TABLE elves (
    name character varying(50),
    speed real
);

CREATE TABLE hobbits (
    name character varying(50),
    personality character varying(50)
);

-- Relational Table that will link Wizards & Elves (many to many)             
CREATE TABLE allies (
    wizard character varying(50),
    elf character varying(50)
);

-- Relational Table that will link Hobbits and Elves(one to many)
CREATE TABLE guardians (
    hobbits character varying(50),
    elf character varying(50)
);

-- INSERT

INSERT INTO wizards(name, power)
VALUES 
('Gandalf', 'fireworks'),
('Sauron', 'iceberg'),
('Lee', 'airbender');

INSERT INTO elves(name, speed)
VALUES 
('Legolas', 10),
('Arwen', 9),
('Led', 5);

INSERT INTO hobbits(name, personality)
VALUES 
('Frodo', 'careful'),
('sam', 'brave'),
('Bilbo', 'greedy');

-- Inserting to our Relational Table allies, this is a many to many relational table
INSERT INTO allies(wizard, elf)
VALUES 
('Gandalf', 'Legolas'),
('Gandalf', 'Arwen'),
('Sauron', 'Led'),
('Sauron', 'Legolas');

-- Inserting to our Relational Table, this is a one to one relational table
INSERT INTO guardians(hobbits, elf)
VALUES 
('Frodo', 'Legolas'),
('sam', 'Arwen'),
('Bilbo', 'Led');

