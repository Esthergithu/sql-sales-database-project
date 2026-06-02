INSERT INTO Customers(customer_id, first_name, second_name, email, city)
VALUES
(1, 'Julia', 'Mwaniki', 'jm@gmail.com', 'Nairobi'),
(2, 'Marcus', 'Ronnie', 'mr@gmail.com', 'Kisumu'),
(3, 'Joylynn', 'Angie', 'ja@gmail.com', 'Moyale'),
(4, 'Aurora', 'Ngige', 'an@gmail.com', 'Nairobi'),
(5, 'John', 'Waceke', 'jw@gmail.com', 'Tatu'),
(6, 'William', 'Kimemia', 'wk@gmail.com', 'Nakuru'),
(7, 'Lucy', 'Maina', 'lm@gmail.com', 'Muranga'),
(8, 'Dennis', 'Githu', 'dg@gmail.com', 'Nakuru');

INSERT INTO orderitems(order_item_id, order_id, product_id, quantity)
VALUES
(101, 1, 111, 5),
(102, 2, 222, 6),
(103, 3, 333, 7),
(104, 4, 444, 2),
(105, 5, 555, 3),
(106, 6, 666, 9),
(107, 7, 777, 1),
(108, 8, 888, 4);

INSERT INTO orders(order_id, customer_id, order_date)
VALUES
(1, 1, '2026-06-01'),
(2, 2, '2026-07-03'),
(3, 3, '2026-03-26'),
(4, 4, '2026-04-17'),
(5, 5, '2025-06-15'),
(6, 6, '2026-02-01'),
(7, 7, '2026-04-20'),
(8, 8, '2025-03-24');

INSERT INTO products(product_id, product_name, category, price)
VALUES
(111, 'Denim Jacket', 'Jacket', 2000),
(222, 'Floral Dresses', 'Dress', 1000),
(333, 'Shoe Rack', 'Organizer', 5000),
(444, 'Dish Washer', 'Organizer', 7000),
(555, 'Heels', 'Shoes', 3000),
(666, 'Mugs', 'Cups', 500),
(777, 'Spoons', 'Silverware', 2000),
(888, 'Sportshoes', 'Shoes', 4000);
