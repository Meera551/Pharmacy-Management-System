CREATE TABLE Customer (
  customer_id INT PRIMARY KEY,
  name VARCHAR(100),
  phone_number VARCHAR(15),
  age INT
);

CREATE TABLE Medicine (
  medicine_id INT PRIMARY KEY,
  name VARCHAR(100),
  price DECIMAL(10,2),
  quantity_in_stock INT
);

CREATE TABLE Purchase (
  purchase_id INT PRIMARY KEY,
  purchase_date DATE,
  total_amount DECIMAL(10,2),
  customer_id INT,
  FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);

CREATE TABLE Contains_Details (
  purchase_id INT,
  medicine_id INT,
  quantity INT,
  subtotal DECIMAL(10,2),
  PRIMARY KEY (purchase_id, medicine_id),
  FOREIGN KEY (purchase_id) REFERENCES Purchase(purchase_id),
  FOREIGN KEY (medicine_id) REFERENCES Medicine(medicine_id)
);

INSERT INTO Customer VALUES
(1,'Ahmed Ali','0551234567',25),
(2,'Sara Khalid','0559876543',30),
(3,'Mona Salem','0554567891',22),
(4,'Faisal Omar','0556543210',28),
(5,'Noura Saad','0557412589',35);

INSERT INTO Medicine VALUES
(101,'Panadol',15.50,100),
(102,'Vitamin C',25.00,50),
(103,'Aspirin',30.00,40),
(104,'Cough Syrup',18.75,60),
(105,'Antibiotic',45.00,25);

INSERT INTO Purchase VALUES
(1001,'2026-04-25',40.50,1),
(1002,'2026-04-26',55.00,2),
(1003,'2026-04-27',30.00,3),
(1004,'2026-04-28',63.75,4),
(1005,'2026-04-29',45.00,5);

INSERT INTO Contains_Details VALUES
(1001,101,1,15.50),
(1001,102,1,25.00),
(1002,103,1,30.00),
(1003,104,2,37.50),
(1004,105,1,45.00);
