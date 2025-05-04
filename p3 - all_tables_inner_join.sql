USE market;
SELECT o.id, o.date, c.name, c.postal_code, c.country, c.city, c.address, c.contact, e.first_name, e.last_name, s.name as suppliers_name, p.name as product_name, d.quantity
  FROM orders o INNER JOIN order_details d ON o.id = d.order_id
				INNER JOIN customers c ON o.customer_id = c.id
				INNER JOIN products p ON d.product_id = p.id
                INNER JOIN categories i ON p.category_id = i.id
                INNER JOIN employees e ON o.employee_id = e.employee_id
                INNER JOIN shippers h ON o.shipper_id = h.id
                INNER JOIN suppliers s ON p.supplier_id = s.id; 