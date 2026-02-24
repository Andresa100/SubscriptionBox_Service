CREATE TABLE Customer (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    address VARCHAR(200)
);

CREATE TABLE Subscription (
    subscription_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    plan_type VARCHAR(50),
    start_date DATE,
    status VARCHAR(50),
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);

CREATE TABLE Box (
    box_id INT AUTO_INCREMENT PRIMARY KEY,
    subscription_id INT,
    shipment_date DATE,
    FOREIGN KEY (subscription_id) REFERENCES Subscription(subscription_id)
);

CREATE TABLE Product (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50)
);

CREATE TABLE Payment (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    payment_date DATE,
    amount DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);