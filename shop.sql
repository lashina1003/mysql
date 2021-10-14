# TASK 000

USE g01u00;
DROP TABLE IF EXISTS g03u57_shop;
CREATE TABLE g03u57_shop 
(g03u57_product_name VARCHAR(30), 
g03u57_amount VARCHAR(30),
g03u57_quantity INT, 
g03u57_monetary_unit VARCHAR(3),
g03u57_price INT, 
g03u57_bought INT, 
g03u57_date_of_buying DATE);

# TASK 055

ALTER TABLE `g01u00`.`g03u57_shop` 
ADD COLUMN `id` INT NOT NULL AUTO_INCREMENT FIRST,
ADD PRIMARY KEY (`id`),
ADD UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE;
;
SELECT * FROM g03u57_shop;

# TASK 010

INSERT INTO g03u57_shop (g03u57_product_name, g03u57_amount, g03u57_quantity, g03u57_price, g03u57_monetary_unit, g03u57_bought, g03u57_date_of_buying) VALUES
('Пепси Кола', 'бутылка 0.33 л', 55, 45, 'RUB', 46, '2021-10-01'),
('Пепси Кола', 'бутылка 2 л', 105, 85, 'RUB', 34, '2021-10-05'),
('Картофель', 'мешок 4 кг', 200, 250, 'RUB', 100, '2021-10-09'),
('Греча', '1 кг', 20, 36, 'RUB', 10, '2021-10-01'),
('Пиво Балтика №6', 'ящик 20 бутылок 0.5 л', 280, 50, 'USD', 20, '2021-09-30'),
('Пиво Макарий №3', 'бочка 50 л', 500, 5000, 'RUB', 100, '2021-09-30'),
('Чипсы Лэйс', 'ящик 50 упаковок по 100 г', 100, 20, 'USD', 67, '2021-09-28'),
('Творог', 'упаковка 50 кг', 500, 500, 'RUB', 120, '2021-10-12'),
('Кока Кола', 'бутылка 0.33 л', 243, 0.5, 'USD', 240, '2021-09-25'),
('Мука', 'мешок 40 кг', 400, 2000, 'RUB', 100, '2021-09-28'),
('Сахар', 'пакеты 2 кг', 22, 60, 'RUB', 5, '2021-09-20'),
('Яйцо куриное', 'ящик 200 штук', 200, 1200, 'RUB', 175, '2021-09-28');

# TASK 015

SELECT * FROM g03u57_shop;

# TASK 025

SELECT id, g03u57_product_name, g03u57_amount, g03u57_quantity FROM g03u57_shop;
SELECT g03u57_price, g03u57_monetary_unit, g03u57_bought, g03u57_date_of_buying FROM g03u57_shop;

# TASK 030

SELECT * FROM g03u57_shop
WHERE g03u57_product_name='Пепси Кола' OR g03u57_product_name='Кока Кола';

SELECT * FROM g03u57_shop
WHERE  g03u57_monetary_unit = 'RUB' AND g03u57_quantity = '500';

# TASK 035

SELECT * FROM g03u57_shop ORDER BY g03u57_product_name;
SELECT * FROM g03u57_shop ORDER BY g03u57_price DESC;
SELECT * FROM g03u57_shop ORDER BY g03u57_date_of_buying DESC;

# TASK 040

SELECT id, g03u57_product_name, g03u57_date_of_buying, CURDATE(),
TIMESTAMPDIFF(DAY, g03u57_date_of_buying, CURDATE()) AS g03u57_days_since_buying 
FROM g03u57_shop;

SELECT id, g03u57_product_name, g03u57_date_of_buying, CURDATE(),
TIMESTAMPDIFF(DAY, g03u57_date_of_buying, CURDATE()) AS g03u57_days_since_buying 
FROM g03u57_shop
WHERE g03u57_monetary_unit='USD';

# TASK 045

SELECT * FROM g03u57_shop
WHERE g03u57_product_name LIKE '%Кола%' AND g03u57_amount NOT LIKE '%2__';

SELECT * FROM g03u57_shop
WHERE g03u57_date_of_buying LIKE '2021-10-%' AND g03u57_quantity LIKE '__';

# TASK 051

SELECT g03u57_amount, COUNT(*) FROM g03u57_shop
GROUP BY g03u57_amount;

SELECT g03u57_date_of_buying, g03u57_monetary_unit, COUNT(*) FROM g03u57_shop
GROUP BY g03u57_monetary_unit, g03u57_date_of_buying;

# TASK 052

