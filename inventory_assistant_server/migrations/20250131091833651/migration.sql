BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "products_tbl" (
    "id" bigserial PRIMARY KEY,
    "productName" text NOT NULL,
    "price" double precision NOT NULL,
    "avlQty" bigint NOT NULL,
    "tax" bigint NOT NULL
);


--
-- MIGRATION VERSION FOR inventory_assistant
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('inventory_assistant', '20250131091833651', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20250131091833651', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240516151843329', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240516151843329', "timestamp" = now();


COMMIT;
