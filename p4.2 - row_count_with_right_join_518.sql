USE market;
SELECT count(*)
  FROM orders o INNER JOIN order_details d ON o.id = d.order_id
				INNER JOIN customers c ON o.customer_id = c.id
				RIGHT JOIN products p ON d.product_id = p.id
                RIGHT JOIN categories i ON p.category_id = i.id
                INNER JOIN employees e ON o.employee_id = e.employee_id
                INNER JOIN shippers h ON o.shipper_id = h.id
                INNER JOIN suppliers s ON p.supplier_id = s.id;
                
/*Відповідь на питання 4.2: Змінив кілька INNER JOIN на RIGHT JOIN. При цьому загальна кылькість записів, що повертає запит не змінилася і також дорівнює = 518 шт.
це говорить про те, що у замовленнях, присутні абсолютно усі можливі продукти. Якби були такі продукти, по яким ще не було замовлень, то кількість записів збільшилася б.*/