-- Create Global_DB database
CREATE DATABASE Global_DB;

-- Use Global_DB database
USE Global_DB;

-- Create 'products' table
CREATE TABLE products (
                          product_id INT PRIMARY KEY,
                          product_name VARCHAR(255),
                          product_description TEXT,
                          product_price DECIMAL(10, 2),
                          created_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                          modified_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Create 'product_logs' table
CREATE TABLE product_logs (
                              log_id INT PRIMARY KEY,
                              product_id INT,
                              action_type VARCHAR(255),
                              action_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                              FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- Create 'system_settings' table
CREATE TABLE system_settings (
                                 setting_id INT PRIMARY KEY,
                                 setting_name VARCHAR(255),
                                 setting_value VARCHAR(255),
                                 created_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                                 modified_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Create 'system_logs' table
CREATE TABLE system_logs (
                             log_id INT PRIMARY KEY,
                             setting_id INT,
                             action_type VARCHAR(255),
                             action_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                             FOREIGN KEY (setting_id) REFERENCES system_settings(setting_id)
);

-- Create OMS_DB database
CREATE DATABASE OMS_DB;

-- Use OMS_DB database
USE OMS_DB;

-- Create 'orders' table
CREATE TABLE orders (
                        order_id INT PRIMARY KEY,
                        user_id INT,
                        order_amount DECIMAL(10, 2),
                        created_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                        modified_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
                        FOREIGN KEY (user_id) REFERENCES users(user_id)
);

-- Create 'order_logs' table
CREATE TABLE order_logs (
                            log_id INT PRIMARY KEY,
                            order_id INT,
                            action_type VARCHAR(255),
                            action_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                            FOREIGN KEY (order_id) REFERENCES orders(order_id)
);

-- Create 'users' table
CREATE TABLE users (
                       user_id INT PRIMARY KEY,
                       username VARCHAR(255),
                       user_address VARCHAR(255),
                       created_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                       modified_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Create 'user_logs' table
CREATE TABLE user_logs (
                           log_id INT PRIMARY KEY,
                           user_id INT,
                           action_type VARCHAR(255),
                           action_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                           FOREIGN KEY (user_id) REFERENCES users(user_id)
);

-- Create WMS_DB database
CREATE DATABASE WMS_DB;

-- Use WMS_DB database
USE WMS_DB;

-- Create 'inventory' table
CREATE TABLE inventory (
                           inventory_id INT PRIMARY KEY,
                           product_id INT,
                           quantity INT,
                           created_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                           modified_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
                           FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- Create 'inventory_logs' table
CREATE TABLE inventory_logs (
                                log_id INT PRIMARY KEY,
                                inventory_id INT,
                                change_type VARCHAR(255),
                                change_quantity INT,
                                change_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                                FOREIGN KEY (inventory_id) REFERENCES inventory(inventory_id)
);