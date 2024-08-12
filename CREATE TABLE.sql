
CREATE TABLE orders_details (
    order_details_id int NOT NULL,
    order_id INT NOT NULL,
    pizza_id text NOT NULL,
    quantity int not null,
    PRIMARY KEY (order_details_idorders_details) );