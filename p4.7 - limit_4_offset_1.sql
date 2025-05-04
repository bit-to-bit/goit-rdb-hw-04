USE market;
SELECT i.name          category_name,
       count(*)        cnt_rows,
       avg(d.quantity) avg_quantity
  FROM orders o INNER JOIN order_details d ON o.id = d.order_id
				INNER JOIN customers c ON o.customer_id = c.id
				INNER JOIN products p ON d.product_id = p.id
                INNER JOIN categories i ON p.category_id = i.id
                INNER JOIN employees e ON o.employee_id = e.employee_id
                INNER JOIN shippers h ON o.shipper_id = h.id
                INNER JOIN suppliers s ON p.supplier_id = s.id
 WHERE e.employee_id > 3 AND e.employee_id <= 10
 GROUP BY i.name
 HAVING avg(d.quantity) > 21
 ORDER BY cnt_rows desc
 LIMIT 4 OFFSET 1;        
