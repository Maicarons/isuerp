PRAGMA foreign_keys = ON;

-- Create 'products' table
CREATE TABLE IF NOT EXISTS products (
                                        product_id INTEGER PRIMARY KEY,
                                        product_name TEXT,
                                        product_description TEXT,
                                        product_price NUMERIC(10, 2),
                                        created_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                                        modified_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create 'product_logs' table
CREATE TABLE IF NOT EXISTS product_logs (
                                            log_id INTEGER PRIMARY KEY,
                                            product_id INTEGER,
                                            action_type TEXT,
                                            action_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                                            FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- Create 'system_settings' table
CREATE TABLE IF NOT EXISTS system_settings (
                                               setting_id INTEGER PRIMARY KEY,
                                               setting_name TEXT,
                                               setting_value TEXT,
                                               created_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                                               modified_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create 'system_logs' table
CREATE TABLE IF NOT EXISTS system_logs (
                                           log_id INTEGER PRIMARY KEY,
                                           setting_id INTEGER,
                                           action_type TEXT,
                                           action_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                                           FOREIGN KEY (setting_id) REFERENCES system_settings(setting_id)
);

-- Create 'orders' table
CREATE TABLE IF NOT EXISTS orders (
                                      order_id INTEGER PRIMARY KEY,
                                      user_id INTEGER,
                                      order_amount NUMERIC(10, 2),
                                      created_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                                      modified_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                                      FOREIGN KEY (user_id) REFERENCES users(user_id)
);

-- Create 'order_logs' table
CREATE TABLE IF NOT EXISTS order_logs (
                                          log_id INTEGER PRIMARY KEY,
                                          order_id INTEGER,
                                          action_type TEXT,
                                          action_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                                          FOREIGN KEY (order_id) REFERENCES orders(order_id)
);

-- Create 'users' table
CREATE TABLE IF NOT EXISTS users (
                                     user_id INTEGER PRIMARY KEY,
                                     username TEXT,
                                     user_address TEXT,
                                     created_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                                     modified_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create 'user_logs' table
CREATE TABLE IF NOT EXISTS user_logs (
                                         log_id INTEGER PRIMARY KEY,
                                         user_id INTEGER,
                                         action_type TEXT,
                                         action_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                                         FOREIGN KEY (user_id) REFERENCES users(user_id)
);

-- Create 'inventory' table
CREATE TABLE IF NOT EXISTS inventory (
                                         inventory_id INTEGER PRIMARY KEY,
                                         product_id INTEGER,
                                         quantity INTEGER,
                                         created_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                                         modified_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                                         FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- Create 'inventory_logs' table
CREATE TABLE IF NOT EXISTS inventory_logs (
                                              log_id INTEGER PRIMARY KEY,
                                              inventory_id INTEGER,
                                              change_type TEXT,
                                              change_quantity INTEGER,
                                              change_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                                              FOREIGN KEY (inventory_id) REFERENCES inventory(inventory_id)
);