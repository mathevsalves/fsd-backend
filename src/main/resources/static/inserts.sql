INSERT INTO products (id, name, price) VALUES (seq_products.CURRVAL, 'Produto A', 10.00);
INSERT INTO products (id, name, price) VALUES (seq_products.NEXTVAL, 'Produto B', 20.00);
INSERT INTO products (id, name, price) VALUES (seq_products.NEXTVAL, 'Produto C', 30.00);
INSERT INTO products (id, name, price) VALUES (seq_products.NEXTVAL, 'Produto D', 40.00);


INSERT INTO deposits (id, name) VALUES (seq_deposits.CURRVAL, 'Deposito A');
INSERT INTO deposits (id, name) VALUES (seq_deposits.NEXTVAL, 'Deposito B');
INSERT INTO deposits (id, name) VALUES (seq_deposits.NEXTVAL, 'Deposito C');
INSERT INTO deposits (id, name) VALUES (seq_deposits.NEXTVAL, 'Deposito D');


INSERT INTO supplier (id, name) VALUES (seq_supplier.CURRVAL, 'Fornecedor A');
INSERT INTO supplier (id, name) VALUES (seq_supplier.NEXTVAL, 'Fornecedor B');
INSERT INTO supplier (id, name) VALUES (seq_supplier.NEXTVAL, 'Fornecedor C');
INSERT INTO supplier (id, name) VALUES (seq_supplier.NEXTVAL, 'Fornecedor D');

INSERT INTO product_deposits (id_produto, id_deposit, restock) VALUES (1, 1, 100);
INSERT INTO product_deposits (id_produto, id_deposit, restock) VALUES (2, 2, 200);
INSERT INTO product_deposits (id_produto, id_deposit, restock) VALUES (3, 3, 300);
INSERT INTO product_deposits (id_produto, id_deposit, restock) VALUES (4, 4, 400);

INSERT INTO product_suppliers (id_produto, id_supplier) VALUES (1, 1);
INSERT INTO product_suppliers (id_produto, id_supplier) VALUES (2, 2);
INSERT INTO product_suppliers (id_produto, id_supplier) VALUES (3, 3);
INSERT INTO product_suppliers (id_produto, id_supplier) VALUES (4, 4);

INSERT INTO movements (id_produto, id_deposit, quantity, movement) VALUES (1, 1, 50, '1');
INSERT INTO movements (id_produto, id_deposit, quantity, movement) VALUES (2, 2, 60, '2');
INSERT INTO movements (id_produto, id_deposit, quantity, movement) VALUES (3, 3, 70, '3');
INSERT INTO movements (id_produto, id_deposit, quantity, movement) VALUES (4, 4, 80, '4');
INSERT INTO movements (id_produto, id_deposit, quantity, movement) VALUES (1, 1, 90, '5');
INSERT INTO movements (id_produto, id_deposit, quantity, movement) VALUES (2, 2, 100, '6');
INSERT INTO movements (id_produto, id_deposit, quantity, movement) VALUES (3, 3, 110, '1');
INSERT INTO movements (id_produto, id_deposit, quantity, movement) VALUES (4, 4, 120, '2');
