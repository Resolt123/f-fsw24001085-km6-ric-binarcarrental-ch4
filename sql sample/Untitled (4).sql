CREATE TABLE "car" (
  "id" VARCHAR PRIMARY KEY,
  "plate" varchar,
  "manufacture" varchar,
  "model" varchar,
  "image" varchar,
  "rentPerDay" integer,
  "capacity" integer,
  "description" varchar,
  "alevailabAt" timestamp,
  "transmission" varchar,
  "available" bool,
  "type" varchar,
  "year" integer,
  "createdAt" timestamp,
  "updatedAt" timestamp
);

CREATE TABLE "option" (
  "id" INTEGER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "type_option" varchar,
  "createdAt" timestamp,
  "updatedAt" timestamp
);

CREATE TABLE "car_options" (
  "id_option" integer,
  "id_car" VARCHAR,
  "createdAt" timestamp,
  "updatedAt" timestamp
);

CREATE TABLE "spec" (
  "id" INTEGER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "type_spec" varchar,
  "createdAt" timestamp,
  "updatedAt" timestamp
);

CREATE TABLE "car_specs" (
  "id_specs" integer,
  "id_car" VARCHAR,
  "createdAt" timestamp,
  "updatedAt" timestamp
);

ALTER TABLE "car_specs" ADD FOREIGN KEY ("id_specs") REFERENCES "spec" ("id");

ALTER TABLE "car_specs" ADD FOREIGN KEY ("id_car") REFERENCES "car" ("id");

ALTER TABLE "car_options" ADD FOREIGN KEY ("id_option") REFERENCES "option" ("id");

ALTER TABLE "car_options" ADD FOREIGN KEY ("id_car") REFERENCES "car" ("id");