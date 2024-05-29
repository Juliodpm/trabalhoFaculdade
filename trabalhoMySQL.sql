DELIMITER $$

CREATE PROCEDURE InsertItems()
BEGIN
    DECLARE i INT DEFAULT 1;
    DECLARE id_item INT DEFAULT 1;

    WHILE i <= 10000 DO
        SET id_item = (i % 3) + 1; 

        INSERT INTO Produtos (nome, valor, descricao, id_item, estoque)
        VALUES (
            CONCAT('Item ', i),
            ROUND((RAND() * (10000 - 1) + 1), 2), 
            CONCAT('Descrição do item ', i, ' com recursos exclusivos e design inovador.'),
            id_item,
            FLOOR(RAND() * (150 - 1) + 1) -- Estoque aleatório entre 1 e 100
        );

        SET i = i + 1;
    END WHILE;
END $$

DELIMITER ;