CREATE TABLE "ingredients"(
    "id" INTEGER PRIMARY KEY,
    "name" TEXT NOT NULL UNIQUE,
    "ing_unit" TEXT NOT NULL,
    "price_per_unit" NUMERIC NOT NULL
);
CREATE TABLE "donuts"(
    "id" INTEGER PRIMARY KEY,
    "name" TEXT NOT NULL UNIQUE,
    "gluten_free" TEXT NOT NULL CHECK ("gluten_free" IN ('Yes','Not')),
    "price" NUMERIC NOT NULL
);
CREATE TABLE "donut_ingredients"(
    "donut_id" INTEGER,
    "ingredient_id" INTEGER,
    PRIMARY KEY ("donut_id","ingredient_id"),
    FOREIGN KEY ("donut_id") REFERENCES "donuts"("id"),
    FOREIGN KEY ("ingredient_id") REFERENCES "ingredients"("id")
);
CREATE TABLE "customers"(
    "id" INTEGER NOT NULL PRIMARY KEY,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL
);
CREATE TABLE "orders"(
    "id" INTEGER NOT NULL PRIMARY KEY,
    "customer_id" INTEGER NOT NULL,
    "order_date" TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY ("customer_id") REFERENCES "customers"("id")
);
CREATE TABLE "order_donuts"(
    "order_id" INTEGER,
    "donut_id" INTEGER,
    "quantity" INTEGER NOT NULL,
    PRIMARY KEY ("order_id", "donut_id"),
    FOREIGN KEY ("order_id") REFERENCES "orders"("id"),
    FOREIGN KEY ("donut_id") REFERENCES "donuts"("id")
);
INSERT INTO "ingredients"("id","name","ing_unit","price_per_unit") VALUES
(1,'Cocoa','Pound',5.00),
(2,'Sugar','Pound',2.00),
(3,'Flour','Pound',3.00),
(4,'Buttermilk','Pound',2),
(5,'Sprinkles','Pound',1);
INSERT INTO "donuts"("id","name","gluten_free","price") VALUES
(1,'Belgian Dark Chocolate','Not',4),
(2,'Back-To-School Sprinkles','Not',4);
INSERT INTO "donut_ingredients"("donut_id","ingredient_id") VALUES
(1,1),
(1,2),
(1,3),
(1,4),
(2,1),
(2,2),
(2,4),
(2,5);
INSERT INTO "customers"("id","first_name","last_name")
VALUES (1,'Luis','Singh');
INSERT INTO "orders"("id","customer_id","order_date")
VALUES (1,1,'2025-05-19');
INSERT INTO "order_donuts"("order_id","donut_id","quantity")
VALUES (1,1,3), (1,2,2);
