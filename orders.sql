-- Creation of tables for order
CREATE TABLE IF NOT EXISTS orders (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    customer_id INTEGER NOT NULL,
    total_price FLOAT NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(id)
);

-- Creation of order_items table
CREATE TABLE IF NOT EXISTS order_items (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    order_id INTEGER NOT NULL,
    menu_id INTEGER NOT NULL,
    quantity INTEGER NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders(id),
    FOREIGN KEY (menu_id) REFERENCES menu(id)
);

-- Sample data for orders
INSERT INTO orders (customer_id, total_price) VALUES
(1, 1298.9),
(2, 658.9),
(3, 878.9),
(4, 548.9),
(5, 1428.9),
(6, 768.9),
(7, 438.9),
(8, 1648.9),
(9, 328.9),
(10, 383.9);

-- Sample data for order_items
INSERT INTO order_items (order_id, menu_id, quantity) VALUES
(1, 1, 2),
(1, 2, 1),
(2, 3, 3),
(2, 4, 1),
(3, 5, 2),
(4, 6, 2),
(4, 7, 1),
(5, 8, 1),
(6, 9, 2),
(7, 10, 3),
(8, 11, 1),
(9, 12, 2),
(10, 13, 1),
(10, 14, 1);
