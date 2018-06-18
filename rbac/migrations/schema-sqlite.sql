/**
 * @Author: Die Coding <www.diecoding.com>
 * @Date:   19 February 2018
 * @Email:  diecoding@gmail.com
 * @Last modified by:   Die Coding <www.diecoding.com>
 * @Last modified time: 14 March 2018
 * @License: MIT
 * @Copyright: 2018
 */


drop table if exists "menu";
drop table if exists "user" cascade;

create table "menu" (
  "id" integer PRIMARY KEY AUTOINCREMENT NOT NULL,
  "name" varchar(128),
  "parent" integer,
  "route" varchar(256),
  "icon" varchar(32),
  "assign" varchar(64) NOT NULL default '*',
  "visible" integer NOT NULL default 1,
  "order" integer,
  "data" longblob,
  foreign key ("parent") references "menu"("id")  ON DELETE SET NULL ON UPDATE CASCADE
);

create table "user" (
  "id" integer PRIMARY KEY AUTOINCREMENT NOT NULL,
  "username" varchar(32) NOT NULL unique,
  "display_name" varchar(32) NOT NULL,
  "auth_key" varchar(32) NOT NULL,
  "password_hash" varchar(256) NOT NULL,
  "password_reset_token" varchar(256) unique,
  "email" varchar(256) NOT NULL unique,
  "status" integer NOT NULL default 10,
  "created_at" integer NOT NULL,
  "updated_at" integer NOT NULL
  "last_login" text,
  "photo" varchar(256)
);
