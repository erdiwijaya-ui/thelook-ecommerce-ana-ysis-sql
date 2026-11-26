SELECT COUNT(*) AS total_orders
FROM `bigquery-public-data.thelook_ecommerce.orders`;


SELECT status, COUNT(*) AS total_orders
FROM `bigquery-public-data.thelook_ecommerce.orders`
GROUP BY status
ORDER BY total_orders DESC;

SELECT
  product_id,
  COUNT(*) AS item_rows
FROM `bigquery-public-data.thelook_ecommerce.order_items`
GROUP BY 1
ORDER BY item_rows DESC
LIMIT 10;

SELECT country, COUNT(*) AS customer_records
FROM `bigquery-public-data.thelook_ecommerce.users`
GROUP BY country
ORDER BY customer_records DESC
LIMIT 10;

SELECT
    status,
    COUNT(*) AS total_items,
    COUNT(DISTINCT order_id) AS total_orders,
    ROUND(SUM(sale_price), 2) AS total_sales,
    ROUND(AVG(sale_price), 2) AS avg_sale_price
FROM `bigquery-public-data.thelook_ecommerce.order_items`
GROUP BY status
HAVING COUNT(*) >= 100
ORDER BY total_sales DESC;

SELECT SUM(sale_price) AS total_item_sales
FROM `bigquery-public-data.thelook_ecommerce.order_items`;

SELECT
    category,
    COUNT(*) AS total_products,
    ROUND(AVG(retail_price), 2) AS avg_retail_price
FROM `bigquery-public-data.thelook_ecommerce.products`
GROUP BY category
ORDER BY avg_retail_price DESC;

SELECT status, COUNT(*) AS total_orders
FROM `bigquery-public-data.thelook_ecommerce.orders`
GROUP BY status
ORDER BY total_orders DESC;


SELECT
    country,
    COUNT(*) AS total_users
FROM `bigquery-public-data.thelook_ecommerce.users`
GROUP BY country
ORDER BY total_users DESC
LIMIT 10;
