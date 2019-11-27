-- CREATE DATABASE IF NOT EXISTS ElectricityManagement DEFAULT CHARACTER SET utf8;
-- SHOW CREATE DATABASE ElectricityManagement;
USE ElectricityManagement;
-- SET FOREIGN_KEY_CHECKS=0;--禁用外键约束，这样不会禁止删除表
-- ---------------
-- Table structure for user
-- ---------------
-- CREATE TABLE IF NOT EXISTS user(
--     user_name VARCHAR(30) NOT NULL,
--     identity_card CHAR(18) NOT NULL,
--     user_password char(6) NOT NULL,
--     telephone char(11) NOT NULL,
--     email VARCHAR(60) DEFAULT NULL,
--     user_address VARCHAR(60) NOT NULL,
--     PRIMARY KEY(user_name)
-- )ENGINE=InnoDB;

-- ---------------
--  Records of user
-- ---------------
-- INSERT INTO user VALUES('user1','100000000000000000','111111','11111111111','1111@qq.com','北京市朝阳区'),
-- ('user2','100000000000000001','222222','22222222222','2222@qq.com','北京市海淀区'),
-- ('user3','100000000000000002','333333','33333333333','3333@qq.com','北京市海淀区'),
-- ('user4','100000000000000003','444444','44444444444','4444@qq.com','北京市通州区'),
-- ('user5','100000000000000004','555555','55555555555','5555@qq.com','北京市顺义区'),
-- ('user6','100000000000000005','666666','66666666666','6666@qq.com','北京市丰台区'),
-- ('user7','100000000000000006','777777','77777777777','7777@qq.com','北京市大兴区'),
-- ('user8','100000000000000007','888888','88888888888','8888@qq.com','北京市通州区'),
-- ('user9','100000000000000008','999999','99999999999','9999@qq.com','北京市东城区'),
-- ('user10','100000000000000009','000000','00000000000','0000@qq.com','北京市海淀区');

-- SELECT * FROM user ORDER BY identity_card;


-- ---------------
-- Table structure for product
-- ---------------
-- CREATE TABLE IF NOT EXISTS product(
--     product_number char(10) NOT NULL,
--     product_name VARCHAR(30) NOT NULL,
--     product_description VARCHAR(60) DEFAULT NULL,
--     product_price  TINYINT NOT NULL,
--     PRIMARY KEY(product_name)
-- )ENGINE=InnoDB;

-- ---------------
--  Records of product
-- ---------------
-- INSERT INTO product VALUES('0000000000','曲奇','脆就一个字，我只说一次',30),
-- ('0000000001','夹心饼干','',5),
-- ('0000000002','棒棒糖','混合口味的每袋是5个口味混合',26),
-- ('0000000003','大白兔奶糖','入口即化',20),
-- ('0000000004','乐事薯片','干脆可口',10),
-- ('0000000005','可口可乐','一箱24罐，冰冻后饮用口感更佳',50),
-- ('0000000006','红牛','一箱24罐，激发你的能量',125),
-- ('0000000007','椰树牌椰汁','植物蛋白饮料',85),
-- ('0000000008','豆本豆奶','早餐奶低脂低糖原味豆奶250ml*24',56),
-- ('0000000009','真果粒','牛奶+果粒，自然有乐趣',60);

-- SELECT * FROM product ORDER BY product_number;



-- ---------------
-- Table structure for order_table
-- ---------------
-- CREATE TABLE IF NOT EXISTS order_table(
--     order_number char(10) NOT NULL,
--     order_state boolean DEFAULT 0 ,
--     PRIMARY KEY(order_number)
-- )ENGINE=InnoDB;

-- ---------------
--  Records of order_table
-- ---------------
-- INSERT INTO order_table VALUES('0000000000',0),
-- ('0000000001',0),
-- ('0000000002',0),
-- ('0000000003',0),
-- ('0000000004',0),
-- ('0000000005',0),
-- ('0000000006',0),
-- ('0000000007',0),
-- ('0000000008',0),
-- ('0000000009',0),
-- ('0000000010',0),
-- ('0000000011',0);

-- SELECT * FROM order_table;

-- ---------------
-- Table structure for establish
-- ---------------
-- CREATE TABLE IF NOT EXISTS establish(
--     order_number char(10) NOT NULL,
--     user_name VARCHAR(30) NOT NULL,
--     PRIMARY KEY(order_number),
--     CONSTRAINT fk_establish_user_name
--     FOREIGN KEY(user_name) REFERENCES user(user_name)
-- )ENGINE=InnoDB;

-- ---------------
--  Records of establish
-- ---------------
-- INSERT INTO establish VALUES('0000000000','user1'),
-- ('0000000001','user1'),
-- ('0000000002','user2'),
-- ('0000000003','user3'),
-- ('0000000004','user4'),
-- ('0000000005','user5'),
-- ('0000000006','user6'),
-- ('0000000007','user7'),
-- ('0000000008','user8'),
-- ('0000000009','user9'),
-- ('0000000010','user10'),
-- ('0000000011','user2');

-- SELECT * FROM establish ORDER BY order_number;

-- ---------------
-- Table structure for order_include
-- ---------------
-- CREATE TABLE IF NOT EXISTS order_include(
--     order_number char(10) NOT NULL,
--     product_number char(10) NOT NULL,
--     quantity TINYINT NULL DEFAULT 0,
--     PRIMARY KEY(order_number,product_number)
-- )ENGINE=InnoDB;

-- ---------------
--  Records of order_include
-- ---------------
-- INSERT INTO order_include VALUES('0000000000','0000000000',2),
-- ('0000000000','0000000001',2),
-- ('0000000000','0000000002',2),
-- ('0000000001','0000000001',2),
-- ('0000000001','0000000002',1),
-- ('0000000001','0000000003',3),
-- ('0000000002','0000000008',1),
-- ('0000000002','0000000001',1),
-- ('0000000003','0000000003',5),
-- ('0000000003','0000000006',1),
-- ('0000000003','0000000004',2),
-- ('0000000004','0000000007',3),
-- ('0000000004','0000000002',2),
-- ('0000000005','0000000008',1),
-- ('0000000005','0000000007',2),
-- ('0000000005','0000000006',2),
-- ('0000000006','0000000004',1),
-- ('0000000006','0000000001',2),
-- ('0000000007','0000000001',1),
-- ('0000000007','0000000002',2),
-- ('0000000008','0000000009',2),
-- ('0000000008','0000000008',1),
-- ('0000000008','0000000007',2),
-- ('0000000009','0000000005',3),
-- ('0000000009','0000000002',1),
-- ('0000000009','0000000008',4),
-- ('0000000010','0000000002',1),
-- ('0000000010','0000000006',2),
-- ('0000000011','0000000000',6),
-- ('0000000011','0000000009',1);

-- SELECT * FROM order_include;


-- ---------------
-- Table structure for shopping_cart
-- ---------------
-- CREATE TABLE IF NOT EXISTS shopping_cart(
--     shopping_cart_number char(10) NOT NULL,
--     user_name VARCHAR(30) NOT NULL,
--     PRIMARY KEY(shopping_cart_number),
--     CONSTRAINT fk_shopping_cart_user_name
--     FOREIGN KEY(user_name) REFERENCES user(user_name)

-- )ENGINE=InnoDB;

-- ---------------
--  Records of shopping_cart
-- ---------------
-- INSERT INTO shopping_cart VALUES('0000000001','user1'),
-- ('0000000002','user2'),
-- ('0000000003','user3'),
-- ('0000000004','user4'),
-- ('0000000005','user5'),
-- ('0000000006','user6'),
-- ('0000000007','user7'),
-- ('0000000008','user8'),
-- ('0000000009','user9'),
-- ('0000000010','user10');

-- SELECT * FROM shopping_cart ORDER BY shopping_cart_number;





-- ---------------
-- Table structure for shopping_cart_include
-- ---------------
-- CREATE TABLE IF NOT EXISTS shopping_cart_include(
--     shopping_cart_number char(10) NOT NULL,
--     product_number char(10) NOT NULL,
--     join_date DATETIME NOT NULL,
--     quantity_of_product TINYINT NUll DEFAULT 0,
--     PRIMARY KEY(shopping_cart_number,product_number)
-- )ENGINE=InnoDB;

-- ---------------
--  Records of shopping_cart_include
-- ---------------
-- INSERT INTO shopping_cart_include VALUES('0000000001','0000000001',now(),1),
-- ('0000000001','0000000002',now(),2),
-- ('0000000001','0000000003',now(),1),
-- ('0000000002','0000000001',now(),2),
-- ('0000000003','0000000004',now(),1),
-- ('0000000003','0000000005',now(),2),
-- ('0000000003','0000000006',now(),3),
-- ('0000000004','0000000007',now(),2),
-- ('0000000004','0000000005',now(),1),
-- ('0000000004','0000000003',now(),2),
-- ('0000000005','0000000000',now(),1),
-- ('0000000005','0000000008',now(),2),
-- ('0000000005','0000000007',now(),1),
-- ('0000000006','0000000009',now(),2),
-- ('0000000006','0000000008',now(),1),
-- ('0000000006','0000000007',now(),1),
-- ('0000000007','0000000000',now(),2),
-- ('0000000007','0000000002',now(),3),
-- ('0000000007','0000000003',now(),1),
-- ('0000000008','0000000001',now(),2),
-- ('0000000008','0000000006',now(),3),
-- ('0000000008','0000000003',now(),2),
-- ('0000000009','0000000009',now(),1),
-- ('0000000009','0000000003',now(),2),
-- ('0000000009','0000000004',now(),1),
-- ('0000000010','0000000006',now(),2),
-- ('0000000010','0000000007',now(),1),
-- ('0000000010','0000000002',now(),2);

-- SELECT * FROM shopping_cart_include;


-- ---------------
-- Table structure for supplier
-- ---------------
-- CREATE TABLE IF NOT EXISTS supplier(
--     supplier_number char(5) NOT NULL,
--     supplier_name varchar(30) NOT NULL,
--     supplier_linkman varchar(30) NULL,
--     supplier_telephone char(11) NOT NULL,
--     supplier_goods varchar(30) NOT NULL,
--     PRIMARY KEY(supplier_number)
-- )ENGINE=InnoDB;

-- ---------------
--  Records of supplier
-- ---------------
-- INSERT INTO supplier VALUES('00000','全部生产有限公司','全部联系','12345670000','全部'),
-- ('00001','豆奶生产有限公司','豆奶联系','12345671111','豆奶'),
-- ('00002','椰汁生产有限公司','椰汁联系','12345672222','椰汁'),
-- ('00003','红牛生产有限公司','红牛联系','12345673333','红牛'),
-- ('00004','可口可乐生产有限公司','可口可乐联系','12345674444','可口可乐'),
-- ('00005','薯片生产有限公司','薯片联系','12345675555','薯片'),
-- ('00006','大白兔奶糖生产有限公司','大白兔奶糖联系','12345676666','大白兔奶糖'),
-- ('00007','棒棒糖生产有限公司','棒棒糖联系','12345677777','棒棒糖'),
-- ('00008','夹心饼干生产有限公司','夹心饼干联系','12345678888','夹心饼干'),
-- ('00009','曲奇生产有限公司','曲奇联系','12345679999','曲奇'),
-- ('00010','真果粒生产有限公司','真果粒联系','12345680000','真果粒');

-- SELECT * FROM supplier;

-- ---------------
-- Table structure for supply
-- ---------------
-- CREATE TABLE IF NOT EXISTS supply(
--     supplier_number char(5) NOT NULL,
--     product_number char(10) NOT NULL,
--     supply_number SMALLINT NULL DEFAULT 0,
--     CHECK(supply_number>=0),
--     PRIMARY KEY(supplier_number,product_number)
-- )ENGINE=InnoDB;

-- ---------------
--  Records of supply
-- ---------------
-- INSERT INTO supply VALUES('00000','0000000000',1000),
-- ('00000','0000000001',1000),
-- ('00000','0000000002',1000),
-- ('00000','0000000003',1000),
-- ('00000','0000000004',1000),
-- ('00000','0000000005',1000),
-- ('00000','0000000006',1000),
-- ('00000','0000000007',1000),
-- ('00000','0000000008',1000),
-- ('00000','0000000009',1000),
-- ('00001','0000000008',1000),
-- ('00002','0000000007',1000),
-- ('00003','0000000006',1000),
-- ('00004','0000000005',1000),
-- ('00005','0000000004',1000),
-- ('00006','0000000003',1000),
-- ('00007','0000000002',1000),
-- ('00008','0000000001',1000),
-- ('00009','0000000000',1000),
-- ('00010','0000000009',1000);

-- SELECT * FROM supply;

-- SELECT * FROM user;
-- SELECT * FROM product;
-- SELECT * FROM order_table;
-- SELECT * FROM establish;
-- SELECT * FROM order_include;
-- SELECT * FROM shopping_cart;
-- SELECT * FROM shopping_cart_include;
-- SELECT * FROM supplier;
-- SELECT * FROM supply;

-- 创建视图user1，查询该用户的所有订单详情
-- DROP VIEW user1;
-- CREATE VIEW user1 AS
-- SELECT user.user_name,telephone,email,establish.order_number,order_state,product.product_name,product_description,product.product_price*order_include.quantity AS total_price
-- FROM user
-- INNER JOIN establish ON user.user_name=establish.user_name
-- INNER JOIN order_table ON establish.order_number=order_table.order_number
-- INNER JOIN order_include ON order_table.order_number=order_include.order_number
-- INNER JOIN product ON order_include.product_number=product.product_number
-- WHERE user.user_name='user1'
-- ORDER BY establish.order_number,total_price;

-- SELECT * FROM user1;

-- 创建视图user2，查询该用户的所有订单详情
-- CREATE VIEW user2 AS
-- SELECT user.user_name,telephone,email,establish.order_number,order_state,product.product_name,product_description,product.product_price*order_include.quantity AS total_price
-- FROM user
-- INNER JOIN establish ON user.user_name=establish.user_name
-- INNER JOIN order_table ON establish.order_number=order_table.order_number
-- INNER JOIN order_include ON order_table.order_number=order_include.order_number
-- INNER JOIN product ON order_include.product_number=product.product_number
-- WHERE user.user_name='user2'
-- ORDER BY establish.order_number,total_price;

-- SELECT * FROM user2;


-- 创建视图user3，查询该用户的所有订单详情
-- CREATE VIEW user3 AS
-- SELECT user.user_name,telephone,email,establish.order_number,order_state,product.product_name,product_description,product.product_price*order_include.quantity AS total_price
-- FROM user
-- INNER JOIN establish ON user.user_name=establish.user_name
-- INNER JOIN order_table ON establish.order_number=order_table.order_number
-- INNER JOIN order_include ON order_table.order_number=order_include.order_number
-- INNER JOIN product ON order_include.product_number=product.product_number
-- WHERE user.user_name='user3'
-- ORDER BY establish.order_number,total_price;

-- SELECT * FROM user3;


-- 创建视图user4，查询该用户的所有订单详情
-- CREATE VIEW user4 AS
-- SELECT user.user_name,telephone,email,establish.order_number,order_state,product.product_name,product_description,product.product_price*order_include.quantity AS total_price
-- FROM user
-- INNER JOIN establish ON user.user_name=establish.user_name
-- INNER JOIN order_table ON establish.order_number=order_table.order_number
-- INNER JOIN order_include ON order_table.order_number=order_include.order_number
-- INNER JOIN product ON order_include.product_number=product.product_number
-- WHERE user.user_name='user4'
-- ORDER BY establish.order_number,total_price;

-- SELECT * FROM user4;

-- CREATE VIEW all_user AS
-- SELECT user.user_name,telephone,email,COUNT(establish.order_number)AS order_count,SUM(product.product_price*order_include.quantity) AS all_total_price
-- FROM user
-- INNER JOIN establish ON user.user_name=establish.user_name
-- INNER JOIN order_table ON establish.order_number=order_table.order_number
-- INNER JOIN order_include ON order_table.order_number=order_include.order_number
-- INNER JOIN product ON order_include.product_number=product.product_number
-- GROUP BY user.user_name
-- ORDER BY establish.order_number,all_total_price;

-- SELECT * FROM all_user;

