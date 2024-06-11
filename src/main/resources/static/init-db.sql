-- tables
CREATE TABLE products
(
    id    NUMBER NOT NULL,
    name  VARCHAR2(100) NOT NULL,
    price NUMBER
);

CREATE TABLE deposits
(
    id   NUMBER NOT NULL,
    name VARCHAR2(100) NOT NULL
);

CREATE TABLE suppliers
(
    id   NUMBER NOT NULL,
    name VARCHAR2(100) NOT NULL
);

CREATE TABLE product_deposits
(
    id_product  NUMBER NOT NULL,
    id_deposit  NUMBER NOT NULL,
    restock Number
);

CREATE TABLE product_suppliers
(
    id_product  NUMBER NOT NULL,
    id_supplier NUMBER NOT NULL
);

CREATE TABLE movements
(
    id_product NUMBER  NOT NULL,
    id_deposit NUMBER  NOT NULL,
    quantity   NUMBER  NOT NULL,
    movement   CHAR(1) NOT NULL
);


ALTER TABLE products
    ADD CONSTRAINT pro_pk PRIMARY KEY (id);
ALTER TABLE deposits
    ADD CONSTRAINT dep_pk PRIMARY KEY (id);
ALTER TABLE suppliers
    ADD CONSTRAINT for_pk PRIMARY KEY (id);

ALTER TABLE product_deposits
    ADD CONSTRAINT pro_dep_pk PRIMARY KEY (id_product, id_deposit);
ALTER TABLE product_deposits
    ADD CONSTRAINT pro_dep_for_fk FOREIGN KEY
        (id_product) REFERENCES products (id);
ALTER TABLE product_deposits
    ADD CONSTRAINT dep_pro_for_fk FOREIGN KEY
        (id_deposit) REFERENCES deposits (id);

ALTER TABLE product_suppliers
    ADD CONSTRAINT pro_for_pk PRIMARY KEY (id_product, id_supplier);
ALTER TABLE product_suppliers
    ADD CONSTRAINT pro_for_for_fk FOREIGN KEY
        (id_product) REFERENCES products (id);
ALTER TABLE product_suppliers
    ADD CONSTRAINT for_pro__fk FOREIGN KEY
        (id_supplier) REFERENCES deposits (id);

ALTER TABLE movements
    ADD CONSTRAINT mov_pro_for_fk FOREIGN KEY
        (id_product) REFERENCES products (id);
ALTER TABLE movements
    ADD CONSTRAINT mov_pdep_for_fk FOREIGN KEY
        (id_deposit) REFERENCES deposits (id);

ALTER TABLE movements
    ADD CONSTRAINT cK_mov CHECK (movement IN ('1','2','3','4','5','6'));

-- sequences
CREATE SEQUENCE seq_products START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_deposits START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_suppliers START WITH 1 INCREMENT BY 1;

-- index
CREATE INDEX product_deposit_pro_fk_i ON product_deposits (id_product);
CREATE INDEX product_deposit_dep_fk_i ON product_deposits (id_deposit);

CREATE INDEX product_supplier_product_fk_i ON product_suppliers (id_product);
CREATE INDEX product_supplier_supplier_fk_i ON product_suppliers (id_supplier);

CREATE INDEX movement_product_fk_i ON movements (id_product);
CREATE INDEX movement_supplier_fk_i ON movements (id_deposit);
