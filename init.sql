CREATE TABLE `clothes` (
  `id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `size` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `clothes` (`id`, `name`, `description`, `image`, `price`, `size`, `color`) VALUES
(1, 'T-Shirt Classic', 'Comfortable cotton t-shirt suitable for everyday wear.', 'https://www.example.com/clothes/1.jpg', 350.00, 'M', 'White'),
(2, 'Denim Jeans', 'Blue denim jeans with a slim fit style.', 'https://www.example.com/clothes/2.jpg', 1200.00, '32', 'Blue'),
(3, 'Hoodie Sport', 'Warm hoodie perfect for outdoor activities.', 'https://www.example.com/clothes/3.jpg', 800.00, 'L', 'Black'),
(4, 'Summer Dress', 'Lightweight summer dress with floral pattern.', 'https://www.example.com/clothes/4.jpg', 950.00, 'S', 'Yellow'),
(5, 'Leather Jacket', 'Genuine leather jacket with zipper closure.', 'https://www.example.com/clothes/5.jpg', 3500.00, 'M', 'Brown'),
(6, 'Sneakers Classic', 'Casual sneakers for everyday use.', 'https://www.example.com/clothes/6.jpg', 1800.00, '42', 'White'),
(7, 'Baseball Cap', 'Adjustable cap with embroidered logo.', 'https://www.example.com/clothes/7.jpg', 450.00, 'One Size', 'Red'),
(8, 'Sweater Knit', 'Cozy knitted sweater, perfect for winter.', 'https://www.example.com/clothes/8.jpg', 1100.00, 'L', 'Gray'),
(9, 'Shorts Sport', 'Lightweight shorts for running and exercise.', 'https://www.example.com/clothes/9.jpg', 550.00, 'M', 'Black'),
(10, 'Formal Shirt', 'Long sleeve formal shirt for office and events.', 'https://www.example.com/clothes/10.jpg', 750.00, 'L', 'White'),
(11, 'Skirt Pleated', 'Elegant pleated skirt for casual and office wear.', 'https://www.example.com/clothes/11.jpg', 650.00, 'M', 'Blue'),
(12, 'Raincoat', 'Waterproof raincoat suitable for wet weather.', 'https://www.example.com/clothes/12.jpg', 1200.00, 'L', 'Green');

ALTER TABLE `clothes`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `clothes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
