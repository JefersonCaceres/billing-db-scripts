
CREATE TABLE IF NOT EXISTS billing_parameter (
    id SERIAL PRIMARY KEY,
    param_type VARCHAR(20) NOT NULL,       -- TAX | DISCOUNT
    name VARCHAR(50) NOT NULL,
    description VARCHAR(150),
    value_percent NUMERIC(5,2),
    value_amount NUMERIC(12,2),
    min_purchase NUMERIC(12,2),
    is_active BOOLEAN DEFAULT TRUE
);