-- IVA general
INSERT INTO billing_parameter
(param_type, name, description, value_percent, is_active)
VALUES ('TAX', 'IVA_GENERAL', 'IVA general del 19%', 19.00, TRUE);

-- Descuento porcentaje
INSERT INTO billing_parameter
(param_type, name, description, value_percent, is_active)
VALUES ('DISCOUNT', 'DESCUENTO_10', '10% de descuento', 10.00, TRUE);

-- Descuento monto fijo
INSERT INTO billing_parameter
(param_type, name, description, value_amount, is_active)
VALUES ('DISCOUNT', 'DESCUENTO_50K', 'Descuento fijo de 50.000', 50000, TRUE);

-- Descuento rango 5%
INSERT INTO billing_parameter
(param_type, name, description, value_percent, min_purchase, is_active)
VALUES ('DISCOUNT', 'RANGO_5', '5% para compras >= 300.000', 5.00, 300000, TRUE);

-- Descuento rango 10%
INSERT INTO billing_parameter
(param_type, name, description, value_percent, min_purchase, is_active)
VALUES ('DISCOUNT', 'RANGO_10', '10% para compras >= 1.000.000', 10.00, 1000000, TRUE);