USE LibraryManagement;
INSERT INTO authors(author_name)
VALUES ('Dzhordzh Orvell'),
       ('Agatha Christie'),
       ('John Champlin Gardner Jr');

INSERT INTO genres(genre_name)
VALUES ('Poetry'),
       ('Horror'),
       ('Science fiction');
       
INSERT INTO users(username, email)
VALUES ('Big Dog', 'dog@gmail.com'),
       ('Green Frog', 'frog@gmail.com'),
       ('Fly Bird', 'bird@gmail.com');
       
INSERT INTO books(title, publication_year, author_id, genre_id)
VALUES ('The Little Prince', 2021, 1, 3),
       ('The Great Gatsby', 1967, 2, 2),
       ('Fahrenheit 451', 2023, 3, 1);

INSERT INTO borrowed_books(book_id, user_id, borrow_date, return_date)
VALUES (1, 2, '2024-03-12', '2024-04-15'),
       (3, 2, '2024-04-15', null),
       (1, 3, '2024-04-17', null),
       (2, 1, '2025-01-01', '2025-03-03');