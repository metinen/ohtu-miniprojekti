Feature: As a user I am able to add a new book tip via CLI

Scenario: User is able to add a new tip with valid author and title
Given Command "lisää kirja" is entered
When author "Matti Nykänen" and title "Mattihan se sopan keitti" are entered
Then the application responds with "Kirjavinkki lisätty"

Scenario: User is unable to add a new tip with valid author and empty title
Given Command "lisää kirja" is entered
When author "Matti Nykänen" and title "" are entered
Then the application responds with "Kirjavinkkiä ei lisätty"

Scenario: User is unable to add a new tip with empty author and valid title
Given Command "lisää kirja" is entered
When author "" and title "Mattihan se sopan keitti" are entered
Then the application responds with "Kirjavinkkiä ei lisätty"

Scenario: User is unable to add a new tip with too long author and a valid title
Given Command "lisää kirja" is entered
When author "1234567890123456789012345678901234567890123456789012345678901234567890" and title "Mattihan se sopan keitti" are entered
Then the application responds with "Kirjavinkkiä ei lisätty"

Scenario: User is unable to add a new tip with too long author and a valid title
Given Command "lisää kirja" is entered
When author "Matti Nykänen" and title "1234567890123456789012345678901234567890123456789012345678901234567890" are entered
Then the application responds with "Kirjavinkkiä ei lisätty"