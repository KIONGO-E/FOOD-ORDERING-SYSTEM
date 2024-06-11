CREATE TABLE Orders (
    order_id INTEGER PRIMARY KEY AUTOINCREMENT,
    customer_id INTEGER,
    order_date DATETIME,
    FOREIGN KEY (customer_id) REFERENCES Customers(id)
);

CREATE TABLE OrderItems (
    order_item_id INTEGER PRIMARY KEY AUTOINCREMENT,
    order_id INTEGER,
    menu_id INTEGER,
    quantity INTEGER,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (menu_id) REFERENCES Menu(menu_id)
);

INSERT INTO Orders (customer_id, order_date) VALUES
(1, '2023-06-11 12:00:00'),
(2, '2023-06-12 13:00:00');

INSERT INTO OrderItems (order_id, menu_id, quantity) VALUES
(1, 1, 2),
(1, 2, 1),
(2, 1, 1);
