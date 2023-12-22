-- Create 'products' table
CREATE TABLE IF NOT EXISTS products (
                                        product_id INTEGER PRIMARY KEY,
                                        product_name TEXT,
                                        product_description TEXT,
                                        product_price REAL,
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