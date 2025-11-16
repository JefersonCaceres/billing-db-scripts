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
