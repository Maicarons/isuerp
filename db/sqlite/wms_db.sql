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