CREATE DATABASE CarShowroomDB;
USE CarShowroomDB;

--- Created table for car
CREATE TABLE Car (
    car_id INT AUTO_INCREMENT PRIMARY KEY,
    car_name VARCHAR(100),
    fuel_type ENUM('Petrol', 'Diesel', 'Electric', 'Hybrid'),
    transmission ENUM('Automatic', 'Manual'),
    body_type ENUM('Sedan', 'SUV', 'Hatchback', 'Coupe'),
    launch_date DATE,
    price DECIMAL(10,2)
);

--- created table for explaining features
CREATE TABLE Features (
    feature_id INT AUTO_INCREMENT PRIMARY KEY,
    car_id INT,
    feature_name VARCHAR(100),
    is_available BOOLEAN, -- TRUE for Yes, FALSE for No
    FOREIGN KEY (car_id) REFERENCES Car(car_id)
);

--- created table for Customer details
CREATE TABLE Customer (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(100),
    city VARCHAR(50)
);

--- created table to know about Test drive cars
CREATE TABLE TestDrive (
    testdrive_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    car_id INT,
    testdrive_date DATE,
    feedback TEXT,
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    FOREIGN KEY (car_id) REFERENCES Car(car_id)
);

--- created table for PreBooking
CREATE TABLE PreBooking (
    booking_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    car_id INT,
    booking_date DATE,
    booking_amount DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    FOREIGN KEY (car_id) REFERENCES Car(car_id)
);

--- created table to know about the trending cars
CREATE TABLE TrendingCars (
    trend_id INT AUTO_INCREMENT PRIMARY KEY,
    car_id INT,
    trend_month DATE,
    views INT,
    inquiries INT,
    FOREIGN KEY (car_id) REFERENCES Car(car_id)
);

INSERT INTO Car (car_name, fuel_type, transmission, body_type, launch_date, price) VALUES
('Hyundai Creta', 'Petrol', 'Manual', 'SUV', '2021-05-12', 1150000.00),
('Hyundai Venue', 'Diesel', 'Automatic', 'SUV', '2022-01-18', 980000.00),
('Hyundai i20', 'Petrol', 'Manual', 'Hatchback', '2020-09-10', 720000.00),
('Hyundai Verna', 'Petrol', 'Automatic', 'Sedan', '2021-08-20', 1250000.00),
('Hyundai Kona', 'Electric', 'Automatic', 'SUV', '2020-02-15', 2350000.00),

('Mahindra XUV700', 'Diesel', 'Automatic', 'SUV', '2022-03-22', 1800000.00),
('Mahindra Thar', 'Diesel', 'Manual', 'SUV', '2021-06-14', 1600000.00),
('Mahindra Scorpio-N', 'Diesel', 'Automatic', 'SUV', '2022-07-01', 1700000.00),
('Mahindra Bolero', 'Diesel', 'Manual', 'SUV', '2020-04-09', 1000000.00),
('Mahindra eXUV300', 'Electric', 'Automatic', 'SUV', '2023-02-12', 1400000.00),

('Honda City', 'Petrol', 'Manual', 'Sedan', '2020-08-15', 1200000.00),
('Honda Amaze', 'Diesel', 'Automatic', 'Sedan', '2021-05-20', 850000.00),
('Honda Jazz', 'Petrol', 'Manual', 'Hatchback', '2020-11-05', 780000.00),
('Honda WR-V', 'Diesel', 'Manual', 'SUV', '2021-09-09', 1050000.00),
('Honda Accord Hybrid', 'Hybrid', 'Automatic', 'Sedan', '2022-03-17', 2800000.00),

('Toyota Innova Crysta', 'Diesel', 'Manual', 'SUV', '2021-01-25', 2100000.00),
('Toyota Fortuner', 'Diesel', 'Automatic', 'SUV', '2022-04-12', 3500000.00),
('Toyota Camry Hybrid', 'Hybrid', 'Automatic', 'Sedan', '2021-07-10', 4200000.00),
('Toyota Glanza', 'Petrol', 'Manual', 'Hatchback', '2020-05-05', 750000.00),
('Toyota Urban Cruiser Hyryder', 'Hybrid', 'Automatic', 'SUV', '2022-09-21', 1600000.00),

('Chevrolet Beat', 'Petrol', 'Manual', 'Hatchback', '2019-06-10', 500000.00),
('Chevrolet Cruze', 'Diesel', 'Automatic', 'Sedan', '2018-11-18', 1500000.00),
('Chevrolet Tavera', 'Diesel', 'Manual', 'SUV', '2019-08-05', 950000.00),
('Chevrolet Spark', 'Petrol', 'Manual', 'Hatchback', '2018-04-25', 420000.00),
('Chevrolet Trailblazer', 'Diesel', 'Automatic', 'SUV', '2019-12-15', 2200000.00),

('Kia Seltos', 'Petrol', 'Manual', 'SUV', '2021-02-10', 1100000.00),
('Kia Sonet', 'Diesel', 'Automatic', 'SUV', '2021-07-19', 900000.00),
('Kia Carnival', 'Diesel', 'Automatic', 'SUV', '2020-03-03', 2900000.00),
('Kia EV6', 'Electric', 'Automatic', 'SUV', '2022-06-25', 5900000.00),
('Kia Carens', 'Petrol', 'Manual', 'SUV', '2022-01-15', 1500000.00),

('Hyundai Alcazar', 'Petrol', 'Automatic', 'SUV', '2021-11-12', 1600000.00),
('Hyundai Santro', 'Petrol', 'Manual', 'Hatchback', '2020-03-18', 500000.00),
('Hyundai Tucson', 'Diesel', 'Automatic', 'SUV', '2022-08-10', 2700000.00),
('Mahindra Marazzo', 'Diesel', 'Manual', 'SUV', '2020-12-05', 1300000.00),
('Mahindra KUV100', 'Petrol', 'Manual', 'Hatchback', '2019-02-14', 600000.00),

('Honda Civic', 'Petrol', 'Automatic', 'Sedan', '2020-09-01', 2200000.00),
('Honda CR-V', 'Diesel', 'Automatic', 'SUV', '2021-06-20', 3200000.00),
('Honda Brio', 'Petrol', 'Manual', 'Hatchback', '2019-11-11', 450000.00),
('Toyota Etios', 'Petrol', 'Manual', 'Sedan', '2020-04-14', 700000.00),
('Toyota Yaris', 'Petrol', 'Automatic', 'Sedan', '2020-10-10', 950000.00),

('Chevrolet Captiva', 'Diesel', 'Automatic', 'SUV', '2019-05-18', 1800000.00),
('Chevrolet Aveo', 'Petrol', 'Manual', 'Sedan', '2018-03-22', 650000.00),
('Kia Stinger', 'Petrol', 'Automatic', 'Sedan', '2022-12-01', 4000000.00),
('Kia Rio', 'Petrol', 'Manual', 'Hatchback', '2021-09-05', 850000.00),
('Kia Sportage', 'Diesel', 'Automatic', 'SUV', '2022-03-11', 2800000.00),

('Hyundai Elantra', 'Petrol', 'Automatic', 'Sedan', '2020-01-08', 1800000.00),
('Mahindra eVerito', 'Electric', 'Automatic', 'Sedan', '2022-05-14', 1100000.00),
('Honda Elevate', 'Petrol', 'Manual', 'SUV', '2023-01-20', 1400000.00),
('Toyota Vellfire', 'Hybrid', 'Automatic', 'SUV', '2022-11-15', 9200000.00),
('Kia Picanto', 'Petrol', 'Manual', 'Hatchback', '2020-06-07', 650000.00);

INSERT INTO Features (car_id, feature_name, is_available) VALUES
(1, 'Sunroof', TRUE),
(1, 'ABS', TRUE),
(2, 'Cruise Control', TRUE),
(2, 'Parking Sensors', TRUE),
(3, 'Touchscreen Display', TRUE),
(3, 'Alloy Wheels', TRUE),
(4, 'Keyless Entry', TRUE),
(4, 'Rear Camera', TRUE),
(5, 'Heated Seats', TRUE),
(5, 'Wireless Charging', TRUE),

(6, 'Hill Assist', TRUE),
(6, 'ABS', TRUE),
(7, 'Touchscreen Display', TRUE),
(7, 'Navigation System', TRUE),
(8, 'Alloy Wheels', TRUE),
(8, 'Parking Sensors', TRUE),
(9, 'Rear Camera', TRUE),
(9, 'Bluetooth Connectivity', TRUE),
(10, 'Sunroof', TRUE),
(10, 'Cruise Control', FALSE),

(11, 'ABS', TRUE),
(11, 'Alloy Wheels', TRUE),
(12, 'Hill Assist', FALSE),
(12, 'Touchscreen Display', TRUE),
(13, 'Rear Camera', TRUE),
(13, 'Parking Sensors', TRUE),
(14, 'Navigation System', TRUE),
(14, 'Wireless Charging', FALSE),
(15, 'Heated Seats', TRUE),
(15, 'Keyless Entry', TRUE),

(16, 'ABS', TRUE),
(16, 'Hill Assist', TRUE),
(17, 'Cruise Control', TRUE),
(17, 'Rear Camera', TRUE),
(18, 'Alloy Wheels', TRUE),
(18, 'Bluetooth Connectivity', TRUE),
(19, 'Touchscreen Display', TRUE),
(19, 'Navigation System', TRUE),
(20, 'Keyless Entry', TRUE),
(20, 'Wireless Charging', TRUE),

(21, 'Parking Sensors', TRUE),
(21, 'Sunroof', FALSE),
(22, 'ABS', TRUE),
(22, 'Hill Assist', TRUE),
(23, 'Cruise Control', FALSE),
(23, 'Rear Camera', TRUE),
(24, 'Alloy Wheels', TRUE),
(24, 'Bluetooth Connectivity', TRUE),
(25, 'Touchscreen Display', TRUE),
(25, 'Heated Seats', TRUE);

INSERT INTO Customer (name, phone, email, city) VALUES
('Arjun Kumar', '9876543210', 'arjun.kumar@gmail.com', 'Chennai'),
('Priya Sharma', '9123456780', 'priya.sharma@yahoo.com', 'Bangalore'),
('Ravi Patel', '9988776655', 'ravi.patel@hotmail.com', 'Mumbai'),
('Sneha Reddy', '9876123456', 'sneha.reddy@gmail.com', 'Hyderabad'),
('Vikram Singh', '9812345678', 'vikram.singh@gmail.com', 'Delhi'),

('Neha Verma', '9876001122', 'neha.verma@gmail.com', 'Kolkata'),
('Rahul Nair', '9123004455', 'rahul.nair@gmail.com', 'Kochi'),
('Amit Mishra', '9998887776', 'amit.mishra@yahoo.com', 'Lucknow'),
('Pooja Iyer', '9822003344', 'pooja.iyer@gmail.com', 'Pune'),
('Sanjay Gupta', '9888001122', 'sanjay.gupta@gmail.com', 'Ahmedabad'),

('Karthik R', '9811112233', 'karthik.r@gmail.com', 'Chennai'),
('Meera Das', '9877665544', 'meera.das@yahoo.com', 'Bhubaneswar'),
('Deepak Yadav', '9823456789', 'deepak.yadav@gmail.com', 'Indore'),
('Anjali Menon', '9122223344', 'anjali.menon@gmail.com', 'Trivandrum'),
('Manoj Kumar', '9997776665', 'manoj.kumar@gmail.com', 'Patna'),

('Shweta Joshi', '9812334455', 'shweta.joshi@gmail.com', 'Jaipur'),
('Harish Reddy', '9888776655', 'harish.reddy@gmail.com', 'Hyderabad'),
('Rohit Malhotra', '9877665543', 'rohit.malhotra@gmail.com', 'Delhi'),
('Divya Nair', '9123445566', 'divya.nair@yahoo.com', 'Kochi'),
('Ajay Sharma', '9988776654', 'ajay.sharma@gmail.com', 'Chandigarh'),

('Snehal Pawar', '9823445566', 'snehal.pawar@gmail.com', 'Nagpur'),
('Kiran Babu', '9811223344', 'kiran.babu@gmail.com', 'Vijayawada'),
('Lavanya Iyer', '9877001122', 'lavanya.iyer@gmail.com', 'Coimbatore'),
('Suresh R', '9888223344', 'suresh.r@gmail.com', 'Madurai'),
('Aishwarya Singh', '9812334456', 'aishwarya.singh@gmail.com', 'Kanpur'),

('Mohit Agarwal', '9123445567', 'mohit.agarwal@yahoo.com', 'Surat'),
('Geetha Krishnan', '9822004455', 'geetha.krishnan@gmail.com', 'Thiruvananthapuram'),
('Vishal Chauhan', '9877665542', 'vishal.chauhan@gmail.com', 'Bhopal'),
('Nisha R', '9811223355', 'nisha.r@gmail.com', 'Mysore'),
('Rajeev Mehta', '9996665554', 'rajeev.mehta@gmail.com', 'Ahmedabad'),

('Anita Pillai', '9876554433', 'anita.pillai@gmail.com', 'Chennai'),
('Suraj Kumar', '9823445567', 'suraj.kumar@gmail.com', 'Delhi'),
('Pavitra Reddy', '9812334466', 'pavitra.reddy@gmail.com', 'Hyderabad'),
('Ashok Yadav', '9123445577', 'ashok.yadav@gmail.com', 'Jaipur'),
('Tanvi Sharma', '9988776677', 'tanvi.sharma@gmail.com', 'Bangalore'),

('Ramesh K', '9811002233', 'ramesh.k@gmail.com', 'Chennai'),
('Lakshmi Priya', '9877554433', 'lakshmi.priya@gmail.com', 'Trichy'),
('Nikhil Jain', '9822445566', 'nikhil.jain@gmail.com', 'Mumbai'),
('Shivani Kapoor', '9877665522', 'shivani.kapoor@gmail.com', 'Delhi'),
('Abhinav Verma', '9811223345', 'abhinav.verma@gmail.com', 'Lucknow'),

('Gayathri R', '9123007788', 'gayathri.r@gmail.com', 'Coimbatore'),
('Sunil D', '9998887770', 'sunil.d@gmail.com', 'Chennai'),
('Anand Krishna', '9822008899', 'anand.krishna@gmail.com', 'Pune'),
('Monika Singh', '9877665511', 'monika.singh@gmail.com', 'Varanasi'),
('Parthiban S', '9811223377', 'parthiban.s@gmail.com', 'Madurai'),

('Vijay Kumar', '9876002299', 'vijay.kumar@gmail.com', 'Delhi'),
('Ritika Sen', '9811334477', 'ritika.sen@gmail.com', 'Kolkata'),
('Aravind R', '9822556677', 'aravind.r@gmail.com', 'Bangalore'),
('Swathi N', '9877665533', 'swathi.n@gmail.com', 'Chennai'),
('Yashwant Rao', '9811445566', 'yashwant.rao@gmail.com', 'Pune');

INSERT INTO TestDrive (customer_id, car_id, testdrive_date, feedback) VALUES
(1, 1, '2025-01-05', 'Smooth drive, comfortable seats'),
(2, 3, '2025-01-08', 'Good pickup but engine noise is high'),
(3, 5, '2025-01-10', 'Silent electric drive, very impressive'),
(4, 2, '2025-01-12', 'Compact and easy to park'),
(5, 4, '2025-01-15', 'Luxury feel with good suspension'),

(6, 7, '2025-01-18', 'Rugged SUV feel, very powerful'),
(7, 8, '2025-01-20', 'Spacious but handling could improve'),
(8, 6, '2025-01-22', 'Excellent safety features'),
(9, 9, '2025-01-25', 'Practical choice for families'),
(10, 10, '2025-01-28', 'Electric performance is decent'),

(11, 11, '2025-02-01', 'Smooth gear shifts, great city car'),
(12, 13, '2025-02-03', 'Compact, stylish design'),
(13, 12, '2025-02-05', 'Good fuel efficiency'),
(14, 14, '2025-02-08', 'Solid build quality'),
(15, 15, '2025-02-10', 'Premium interior, hybrid feels smooth'),

(16, 16, '2025-02-12', 'Best for long drives'),
(17, 17, '2025-02-14', 'Strong engine, great road presence'),
(18, 18, '2025-02-16', 'Hybrid tech is seamless'),
(19, 19, '2025-02-18', 'Affordable and stylish'),
(20, 20, '2025-02-20', 'Impressive hybrid SUV'),

(21, 21, '2025-02-22', 'Compact and budget friendly'),
(22, 22, '2025-02-23', 'Spacious sedan with comfort'),
(23, 23, '2025-02-24', 'Basic SUV, good mileage'),
(24, 24, '2025-02-25', 'Small hatchback, easy handling'),
(25, 25, '2025-02-26', 'Powerful SUV with premium features'),

(26, 26, '2025-02-27', 'Stylish SUV, well priced'),
(27, 27, '2025-02-28', 'Compact SUV with good tech'),
(28, 28, '2025-03-01', 'Luxury family MPV'),
(29, 29, '2025-03-02', 'Superb electric car'),
(30, 30, '2025-03-03', 'Spacious SUV with features'),

(31, 31, '2025-03-04', 'Good 7-seater option'),
(32, 32, '2025-03-05', 'Small hatchback, budget friendly'),
(33, 33, '2025-03-06', 'Premium SUV feel'),
(34, 34, '2025-03-07', 'Balanced MPV with decent comfort'),
(35, 35, '2025-03-08', 'Compact hatchback with style'),

(36, 36, '2025-03-09', 'Sporty sedan, premium feel'),
(37, 37, '2025-03-10', 'Premium SUV with great comfort'),
(38, 38, '2025-03-11', 'Entry hatchback, affordable'),
(39, 39, '2025-03-12', 'Value sedan, family friendly'),
(40, 40, '2025-03-13', 'Decent sedan, practical choice'),

(41, 41, '2025-03-14', 'Premium SUV, very spacious'),
(42, 42, '2025-03-15', 'Good city sedan'),
(43, 43, '2025-03-16', 'Sporty sedan with power'),
(44, 44, '2025-03-17', 'Hatchback with style'),
(45, 45, '2025-03-18', 'Modern SUV with advanced tech'),

(46, 46, '2025-03-19', 'Premium sedan with comfort'),
(47, 47, '2025-03-20', 'Electric sedan, eco-friendly'),
(48, 48, '2025-03-21', 'Compact SUV, stylish design'),
(49, 49, '2025-03-22', 'Luxury MPV with hybrid tech'),
(50, 50, '2025-03-23', 'Small hatchback, good mileage');

INSERT INTO PreBooking (customer_id, car_id, booking_date, booking_amount) VALUES
(1, 2, '2025-01-06', 50000.00),
(2, 5, '2025-01-09', 75000.00),
(3, 7, '2025-01-11', 30000.00),
(4, 3, '2025-01-13', 45000.00),
(5, 1, '2025-01-16', 60000.00),

(6, 6, '2025-01-19', 85000.00),
(7, 8, '2025-01-21', 55000.00),
(8, 9, '2025-01-23', 40000.00),
(9, 4, '2025-01-26', 65000.00),
(10, 10, '2025-01-29', 70000.00),

(11, 12, '2025-02-02', 35000.00),
(12, 14, '2025-02-04', 80000.00),
(13, 11, '2025-02-06', 25000.00),
(14, 15, '2025-02-09', 95000.00),
(15, 13, '2025-02-11', 60000.00),

(16, 16, '2025-02-13', 70000.00),
(17, 18, '2025-02-15', 40000.00),
(18, 20, '2025-02-17', 85000.00),
(19, 17, '2025-02-19', 65000.00),
(20, 19, '2025-02-21', 55000.00),

(21, 21, '2025-02-23', 20000.00),
(22, 23, '2025-02-24', 50000.00),
(23, 25, '2025-02-25', 75000.00),
(24, 22, '2025-02-26', 60000.00),
(25, 24, '2025-02-27', 30000.00),

(26, 26, '2025-02-28', 70000.00),
(27, 28, '2025-03-01', 85000.00),
(28, 30, '2025-03-02', 40000.00),
(29, 27, '2025-03-03', 55000.00),
(30, 29, '2025-03-04', 95000.00),

(31, 31, '2025-03-05', 60000.00),
(32, 33, '2025-03-06', 35000.00),
(33, 32, '2025-03-07', 50000.00),
(34, 35, '2025-03-08', 75000.00),
(35, 34, '2025-03-09', 65000.00),

(36, 36, '2025-03-10', 70000.00),
(37, 38, '2025-03-11', 25000.00),
(38, 37, '2025-03-12', 60000.00),
(39, 39, '2025-03-13', 80000.00),
(40, 40, '2025-03-14', 55000.00),

(41, 42, '2025-03-15', 30000.00),
(42, 41, '2025-03-16', 45000.00),
(43, 44, '2025-03-17', 65000.00),
(44, 43, '2025-03-18', 75000.00),
(45, 45, '2025-03-19', 95000.00),

(46, 47, '2025-03-20', 40000.00),
(47, 49, '2025-03-21', 85000.00),
(48, 46, '2025-03-22', 60000.00),
(49, 48, '2025-03-23', 55000.00),
(50, 50, '2025-03-24', 70000.00);

INSERT INTO TrendingCars (car_id, trend_month, views, inquiries) VALUES
(1, '2025-01-01', 1200, 150),
(2, '2025-01-01', 950, 120),
(3, '2025-01-01', 800, 90),
(4, '2025-01-01', 1100, 130),
(5, '2025-01-01', 600, 75),

(6, '2025-01-01', 1400, 160),
(7, '2025-01-01', 1350, 145),
(8, '2025-01-01', 1000, 110),
(9, '2025-01-01', 700, 80),
(10, '2025-01-01', 900, 100),

(11, '2025-02-01', 1250, 140),
(12, '2025-02-01', 1050, 120),
(13, '2025-02-01', 850, 95),
(14, '2025-02-01', 980, 110),
(15, '2025-02-01', 600, 70),

(16, '2025-02-01', 1600, 180),
(17, '2025-02-01', 1500, 165),
(18, '2025-02-01', 900, 100),
(19, '2025-02-01', 750, 85),
(20, '2025-02-01', 1100, 130),

(21, '2025-02-01', 500, 60),
(22, '2025-02-01', 1050, 125),
(23, '2025-02-01', 800, 90),
(24, '2025-02-01', 450, 50),
(25, '2025-02-01', 1200, 150),

(26, '2025-03-01', 1400, 155),
(27, '2025-03-01', 1250, 135),
(28, '2025-03-01', 1600, 175),
(29, '2025-03-01', 1800, 200),
(30, '2025-03-01', 1450, 160),

(31, '2025-03-01', 1100, 120),
(32, '2025-03-01', 600, 65),
(33, '2025-03-01', 1700, 185),
(34, '2025-03-01', 950, 100),
(35, '2025-03-01', 700, 80),

(36, '2025-03-01', 1200, 140),
(37, '2025-03-01', 1600, 170),
(38, '2025-03-01', 500, 55),
(39, '2025-03-01', 1050, 115),
(40, '2025-03-01', 850, 95),

(41, '2025-03-01', 1300, 145),
(42, '2025-03-01', 650, 70),
(43, '2025-03-01', 1400, 150),
(44, '2025-03-01', 700, 80),
(45, '2025-03-01', 1750, 190),

(46, '2025-03-01', 1150, 125),
(47, '2025-03-01', 900, 100),
(48, '2025-03-01', 1250, 135),
(49, '2025-03-01', 1550, 170),
(50, '2025-03-01', 600, 65);

SELECT * FROM Car;

SELECT * FROM Features;

SELECT * FROM Customer;

SELECT * FROM TestDrive;

SELECT * FROM PreBooking;

SELECT * FROM TrendingCars;

Select * from Customer WHERE customer_id = 1;

USE CarShowroomDB;
--- By using customer_id, how many cars are prebooked in PreBooking table with logic of Multiple joins
SELECT 
    c.customer_id,
    c.name,
    c.phone,
    c.email,
    c.city,
    p.booking_id,
    p.booking_date,
    p.booking_amount,
    car.car_id,
    car.car_name,
    car.fuel_type,
    car.transmission,
    car.body_type,
    car.launch_date,
    car.price
FROM 
    PreBooking p
INNER JOIN 
    Customer c ON p.customer_id = c.customer_id
INNER JOIN 
    Car car ON p.car_id = car.car_id
WHERE 
    c.customer_id = 5;
    
USE CarShowroomDB;
--- In this we took count as how many cars booked by the customer within last 6 months
SELECT 
    COUNT(*) AS total_cars_booked_last_6_months
FROM 
    PreBooking
WHERE 
    booking_date >= DATE_SUB(CURDATE(), INTERVAL 6 MONTH);
    

--- within the last 6 months also included the customer details
SELECT 
    c.customer_id,
    c.name,
    c.phone,
    c.email,
    c.city,
    COUNT(p.booking_id) AS total_cars_booked_last_6_months
FROM 
    PreBooking p
INNER JOIN 
    Customer c ON p.customer_id = c.customer_id
WHERE 
    p.booking_date >= DATE_SUB(CURDATE(), INTERVAL 6 MONTH)
GROUP BY 
    c.customer_id, c.name, c.phone, c.email, c.city
ORDER BY 
    total_cars_booked_last_6_months DESC;




































SELECT 
	c.car_name,
    f.feature_name
    FROM Car c
INNER JOIN
Features f ON f.car_id = c.car_id


