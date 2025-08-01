SELECT
  ROUND(
    SUM(order_date = customer_pref_delivery_date) * 100.0 / COUNT(*),
    2
  ) AS immediate_percentage
FROM (
  SELECT *,
         RANK() OVER (PARTITION BY customer_id ORDER BY order_date) AS rnk
  FROM Delivery
) AS first_orders
WHERE rnk = 1;
