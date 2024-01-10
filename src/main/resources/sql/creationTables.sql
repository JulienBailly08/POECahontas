
create schema poec;

DROP TABLE IF EXISTS poec.users;
DROP TABLE IF EXISTS poec.customers;
DROP TABLE IF EXISTS poec.orders;


CREATE TABLE poec.customers(id SERIAL NOT NULL,
								lastname VARCHAR(100),
                                firstname VARCHAR(100),
                                company VARCHAR(200),
                                mail VARCHAR(255),
                                phone VARCHAR(15),
                                mobile VARCHAR(15),
                                notes VARCHAR(255),
                                active BOOLEAN,
                                PRIMARY KEY (id));

CREATE TABLE poec.orders(id SERIAL NOT NULL,
									customer_id INT,
                                    label VARCHAR(100),
                                    adr_et DECIMAL,
                                    number_of_days DECIMAL,
                                    tva DECIMAL,
                                    status VARCHAR(30),
                                    type VARCHAR(100),
                                    notes VARCHAR(255),
                                    PRIMARY KEY (id),
                                    FOREIGN KEY (customer_id) REFERENCES poec.customers(id));

CREATE TABLE poec.users (id SERIAL NOT NULL,
									   username VARCHAR(30),
                                       password VARCHAR(255),
                                       mail VARCHAR(255),
                                       grants VARCHAR(20),
                                       PRIMARY KEY(id));

INSERT INTO poec.customers (lastname, firstname, company, mail, phone, mobile, notes, active) VALUES ('JONES', 'Indiana', 'Université de Chicago', 'indiana.jonas@univ-chicago.com', '0222222222', '0666666666', 'Les notes d''Indiana', true);

INSERT INTO poec.customers (lastname, firstname, company, mail, phone, mobile, notes, active) VALUES ('KENOBI', 'Obi-Wan', 'Jedis', 'obiwan.kenobi@jedis.com', '0222222222', '0666666666', 'Les notes d''Obi Wan', true);

INSERT INTO poec.customers (lastname, firstname, company, mail, phone, mobile, notes, active) VALUES ('MCCLANE', 'John', 'NYPD', 'john.mcclane@nypd.com', '0222222222', '0666666666', 'Les notes de John', false);

INSERT INTO poec.customers (lastname, firstname, company, mail, phone, mobile, notes, active) VALUES ('MCFLY', 'Marty', 'DOC', 'marty.mcfly@doc.com', NULL, NULL, 'Les notes de Marty', false);

INSERT INTO poec.orders (customer_id, label, adr_et, number_of_days, tva, status, type, notes) VALUES (1, 'Formation Java', 450.0, 5, 20, 'En cours', 'Forfait', 'Test');

INSERT INTO poec.orders (customer_id, label, adr_et, number_of_days, tva, status, type, notes) VALUES (1, 'Formation Spring', 450.0, 3, 20.0, 'En attente', 'Forfait', 'Test');

INSERT INTO poec.orders (customer_id, label, adr_et, number_of_days, tva, status, type, notes) VALUES (2, 'Formation Jedi', 1500.0, 2, 20.0, 'Payée', 'Forfait', 'Notes sur la formation');

INSERT INTO poec.users (username, password, mail, grants) VALUES ('toto', '1234', 'toto@titi.com', 'ADMIN');