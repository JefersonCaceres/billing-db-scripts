CREATE TABLE billing.client (
    id SERIAL PRIMARY KEY,
    document VARCHAR(50) NOT NULL UNIQUE,
    document_type VARCHAR(10) NOT NULL,  -- CC, NIT, CE, PAS, etc.
    name VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    phone VARCHAR(20),
    address VARCHAR(200),
    is_active BOOLEAN NOT NULL DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW()
);




CREATE TABLE billing.client_log (
    id SERIAL PRIMARY KEY,
    client_id INTEGER NOT NULL,
    action VARCHAR(20) NOT NULL,     -- CREATE o UPDATE
    updated_fields TEXT,             -- lista: 'name,email,address'
    log_timestamp TIMESTAMP DEFAULT NOW(),

    CONSTRAINT fk_client
        FOREIGN KEY (client_id)
        REFERENCES billing.client(id)
);


-- Tabla unificada para impuestos y descuentos

CREATE TABLE billing.billing_parameter (
    id SERIAL PRIMARY KEY,
    param_type VARCHAR(20) NOT NULL,  -- TAX | DISCOUNT
    name VARCHAR(50) NOT NULL,
    description VARCHAR(150),
    value_percent NUMERIC(5,2),
    value_amount NUMERIC(12,2),
    min_purchase NUMERIC(12,2),
    is_active BOOLEAN DEFAULT TRUE
);
