CREATE TABLE billing.client_log (
    id SERIAL PRIMARY KEY,
    client_id INTEGER NOT NULL,
    action VARCHAR(20) NOT NULL,   
    updated_fields TEXT,            
    log_timestamp TIMESTAMP DEFAULT NOW(),

    CONSTRAINT fk_client
        FOREIGN KEY (client_id)
        REFERENCES billing.client(id)
);


