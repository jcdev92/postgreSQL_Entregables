CREATE TABLE "users" (
  "id" uuid PRIMARY KEY,
  "name" varchar(30) NOT NULL,
  "email" varchar(100) UNIQUE NOT NULL,
  "password" varchar(50) NOT NULL,
  "role_id" int,
  "age" int
);

CREATE TABLE "courses" (
  "id" uuid PRIMARY KEY,
  "title" varchar(100) NOT NULL,
  "description" varchar(400) NOT NULL,
  "level" int DEFAULT 1,
  "category_id" int NOT NULL,
  "video_id" int,
  "teacher_id" uuid NOT NULL
);

CREATE TABLE "course_video" (
  "id" int PRIMARY KEY,
  "title" varchar(300) NOT NULL,
  "url" varchar(300) NOT NULL
);

CREATE TABLE "categories" (
  "id" int PRIMARY KEY,
  "name" varchar(50) NOT NULL
);

CREATE TABLE "roles" (
  "id" int PRIMARY KEY,
  "name" varchar(50) NOT NULL
);

ALTER TABLE "users" ADD FOREIGN KEY ("role_id") REFERENCES "roles" ("id");

ALTER TABLE "courses" ADD FOREIGN KEY ("category_id") REFERENCES "categories" ("id");

ALTER TABLE "courses" ADD FOREIGN KEY ("video_id") REFERENCES "course_video" ("id");

ALTER TABLE "courses" ADD FOREIGN KEY ("teacher_id") REFERENCES "users" ("id");