-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/N2fz4d
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "movies_data" (
    "id" INT   NOT NULL,
    "imdb_id" INT   NOT NULL,
    "original_language" VARCHAR(50)   NOT NULL,
    "overview" TEXT   NOT NULL,
    "budget" INT   NOT NULL,
    "original_title" VARCHAR(50)   NOT NULL,
    "production_company" VARCHAR   NOT NULL,
    "release_date" DATE   NOT NULL,
    "revenue" INT   NOT NULL,
    "genres" TEXT   NOT NULL,
    "vote_count" INT   NOT NULL,
    "vote_average" FLOAT   NOT NULL,
    "runtime" INT   NOT NULL,
    CONSTRAINT "pk_movies_data" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "ratings" (
    "userId" INT   NOT NULL,
    "movieId" INT   NOT NULL,
    "rating" FLOAT   NOT NULL,
    "timestamp" INT   NOT NULL,
    CONSTRAINT "pk_ratings" PRIMARY KEY (
        "userId"
     )
);

CREATE TABLE "credits" (
    "cast" VARCHAR(50)   NOT NULL,
    "crew" VARCHAR(50)   NOT NULL,
    "id" INT   NOT NULL,
    CONSTRAINT "pk_credits" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "keywords" (
    "id" INT   NOT NULL,
    "keywords" VARCHAR(50)   NOT NULL,
    CONSTRAINT "pk_keywords" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "links" (
    "movieId" INT   NOT NULL,
    "imdbId" INT   NOT NULL,
    "tmdbId" INT   NOT NULL,
    CONSTRAINT "pk_links" PRIMARY KEY (
        "movieId","imdbId","tmdbId"
     )
);

ALTER TABLE "ratings" ADD CONSTRAINT "fk_ratings_movieId" FOREIGN KEY("movieId")
REFERENCES "movies_data" ("id");

ALTER TABLE "credits" ADD CONSTRAINT "fk_credits_id" FOREIGN KEY("id")
REFERENCES "movies_data" ("id");

ALTER TABLE "keywords" ADD CONSTRAINT "fk_keywords_id" FOREIGN KEY("id")
REFERENCES "movies_data" ("id");

ALTER TABLE "links" ADD CONSTRAINT "fk_links_imdbId_tmdbId" FOREIGN KEY("imdbId", "tmdbId")
REFERENCES "movies_data" ("imdb_id", "id");

