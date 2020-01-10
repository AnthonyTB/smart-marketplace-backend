CREATE TABLE users (
id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
Name TEXT NOT NULL,
Email TEXT NOT NULL,
Location TEXT NOT NULL,
Username TEXT NOT NULL,
Password TEXT NOT NULL,
Date_Created DATE NOT NULL,
Avatar TEXT
);

CREATE TABLE listings (
id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
Title TEXT NOT NULL,
Category INTEGER NOT NULL,
Owner INTEGER REFERENCES users(id) ON DELETE CASCADE NOT NULL,
Location TEXT NOT NULL,
Date_Created DATE NOT NULL,
Condition TEXT NOT NULL,
Price TEXT NOT NULL,
Description TEXT NOT NULL,
Image TEXT NOT NULL,
Page_Views INTEGER NOT NULL
);