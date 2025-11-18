INSERT INTO billing.client 
(document, document_type, name, email, phone, address, is_active)
VALUES
('900123456', 'NIT', 'Company Alpha', 'alpha@company.com', '3001112222', 'Calle 1 #10-20', TRUE),

('10203040', 'CC', 'Juan Perez', 'jperez@correo.com', '3002223344', 'Carrera 50 #25-15', TRUE),

('56789123', 'CC', 'Laura Gómez', 'laura.gomez@mail.com', '3205566778', 'Calle 80 #45-22', FALSE),

('800987654', 'NIT', 'Servicios Gamma SAS', 'contacto@gamma.com', '3109988776', 'Av. Caracas #30-40', TRUE),

('44332211', 'CE', 'Carlos Ramirez', 'carlos.ramirez@mail.com', '3017788990', 'Calle 19 #7-40', TRUE);


INSERT INTO billing.client_log (client_id, action, updated_fields)
VALUES
(1, 'CREATE', 'document,document_type,name,email,phone,address,is_active'),
(2, 'CREATE', 'document,document_type,name,email,phone,address,is_active'),
(3, 'CREATE', 'document,document_type,name,email,phone,address,is_active'),
(4, 'CREATE', 'document,document_type,name,email,phone,address,is_active'),
(5, 'CREATE', 'document,document_type,name,email,phone,address,is_active');


-- Parametros iniciales: impuestos y descuentos

-- IVA general 19%
INSERT INTO billing_parameter
(param_type, name, description, value_percent, is_active)
VALUES ('TAX', 'IVA_GENERAL', 'IVA general del 19%', 19.00, TRUE);

-- Descuento porcentual del 10%
INSERT INTO billing_parameter
(param_type, name, description, value_percent, is_active)
VALUES ('DISCOUNT', 'DESCUENTO_10', 'Descuento del 10%', 10.00, TRUE);

-- Descuento fijo de 50.000
INSERT INTO billing_parameter
(param_type, name, description, value_amount, is_active)
VALUES ('DISCOUNT', 'DESCUENTO_50K', 'Descuento fijo de 50.000', 50000, TRUE);

-- Descuento por rango 5% si la compra >= 300.000
INSERT INTO billing_parameter
(param_type, name, description, value_percent, min_purchase, is_active)
VALUES ('DISCOUNT', 'RANGO_5', '5% para compras >= 300.000', 5.00, 300000, TRUE);

-- Descuento por rango 10% si la compra >= 1.000.000
INSERT INTO billing_parameter
(param_type, name, description, value_percent, min_purchase, is_active)
VALUES ('DISCOUNT', 'RANGO_10', '10% para compras >= 1.000.000', 10.00, 1000000, TRUE);


-- Auto-generated SQL script #202511181536
UPDATE billing.billing_parameter
	SET description='15% de descuento',"name"='DESCUENTO_15',min_purchase=1500000
	WHERE id=2;


-- Auto-generated SQL script #202511181536
UPDATE billing.billing_parameter
	SET min_purchase=400000
	WHERE id=3;

