CREATE TABLE `market_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` decimal(11,2) NOT NULL DEFAULT 0.00,
  `price_min` decimal(11,2) NOT NULL DEFAULT 0.00,
  `price_max` decimal(11,2) NOT NULL DEFAULT 0.00,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `market_data` (`item`, `name`, `price`, `price_min`, `price_max`) VALUES
('corn', 'Corn', '0.01', '0.01', '5.00'),
('sugar', 'Sugar', '0.01', '0.01', '5.00'),
('tobacco', 'Tobacco', '0.01', '0.01', '5.00'),
('carrot', 'Carrot', '0.01', '0.01', '5.00'),
('tomato', 'Tomato', '0.01', '0.01', '5.00'),
('broccoli', 'Broccoli', '0.01', '0.01', '5.00'),
('potato', 'Potato', '0.01', '0.01', '5.00');