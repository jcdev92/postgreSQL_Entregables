CREATE TABLE "todo_crud" (
  "id" integer PRIMARY KEY,
  "task" varchar NOT NULL,
  "description" varchar,
  "is_complete" boolean DEFAULT false
);
