CREATE SEQUENCE SEQ_INVOICE
START WITH 1
INCREMENT BY 1
NOCACHE;


CREATE OR REPLACE PROCEDURE PR_CREATE_INVOICE (
    p_client_id    IN NUMBER,
    p_subtotal     IN NUMBER,
    p_tax_amount   IN NUMBER,
    p_discount     IN NUMBER,
    p_total        IN NUMBER,
    p_invoice_id   OUT NUMBER
) AS
    v_count NUMBER;
BEGIN

    SELECT COUNT(*)
    INTO v_count
    FROM CLIENT
    WHERE ID = p_client_id
      AND IS_ACTIVE = 'Y';

    IF v_count = 0 THEN
        RAISE_APPLICATION_ERROR(-20000, 'Cliente no existe o está inactivo');
    END IF;

    p_invoice_id := SEQ_INVOICE.NEXTVAL;

    INSERT INTO INVOICE (
        ID, CLIENT_ID, INVOICE_DATE,
        SUBTOTAL, TAX_AMOUNT, DISCOUNT, TOTAL
    ) VALUES (
        p_invoice_id, p_client_id, SYSDATE,
        p_subtotal, p_tax_amount, p_discount, p_total
    );

END PR_CREATE_INVOICE;