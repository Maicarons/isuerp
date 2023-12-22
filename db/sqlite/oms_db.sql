-- Create 'orders' table
CREATE TABLE IF NOT EXISTS orders (
                                      order_id INTEGER PRIMARY KEY,
                                      user_id INTEGER,
                                      order_amount REAL,
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