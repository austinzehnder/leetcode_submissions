SELECT users.user_id AS buyer_id, users.join_date, COUNT(orders.order_id) AS orders_in_2019 
FROM users
LEFT JOIN orders ON users.user_id = orders.buyer_id AND orders.order_date BETWEEN '2019-01-01' AND '2019-12-31'
GROUP BY users.user_id, users.join_date;
