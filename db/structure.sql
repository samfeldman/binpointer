CREATE TABLE "bins" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "borough" varchar(255), "site_type" varchar(255), "site_name" varchar(255), "address" varchar(255), "lat" varchar(255), "lng" varchar(255), "created_at" datetime, "updated_at" datetime);
CREATE TABLE "friends" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "friend_id" integer, "created_at" datetime, "updated_at" datetime, "original_user_id" integer);
CREATE TABLE "points" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "user_id" integer, "bin_id" integer, "created_at" datetime, "updated_at" datetime, "user_points" integer);
CREATE TABLE "schema_migrations" ("version" varchar(255) NOT NULL);
CREATE TABLE "users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "username" varchar(255), "email" varchar(255), "password" varchar(255), "avatar" varchar(255), "created_at" datetime, "updated_at" datetime);
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
INSERT INTO schema_migrations (version) VALUES ('20150624224839');

INSERT INTO schema_migrations (version) VALUES ('20150624230859');

INSERT INTO schema_migrations (version) VALUES ('20150624231421');

INSERT INTO schema_migrations (version) VALUES ('20150624231809');

INSERT INTO schema_migrations (version) VALUES ('20150625181457');

INSERT INTO schema_migrations (version) VALUES ('20150625181607');

INSERT INTO schema_migrations (version) VALUES ('20150625192027');

INSERT INTO schema_migrations (version) VALUES ('20150625192055');

