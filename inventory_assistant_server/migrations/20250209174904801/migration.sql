BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "parties_tbl" (
    "id" bigserial PRIMARY KEY,
    "partyName" text NOT NULL,
    "gstin" text NOT NULL,
    "telephoneNumber" text,
    "mobileNumber" text
);


--
-- MIGRATION VERSION FOR inventory_assistant
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('inventory_assistant', '20250209174904801', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20250209174904801', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240516151843329', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240516151843329', "timestamp" = now();


COMMIT;
