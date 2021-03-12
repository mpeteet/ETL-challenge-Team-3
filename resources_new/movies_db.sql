-- CREATE TABLE "movies" (
--     "movieId" INT   NOT NULL,
--     "title" varchar   NOT NULL,
--     "genres" varchar   NOT NULL,
--     CONSTRAINT "pk_movies" PRIMARY KEY (
--         "movieId"
--      )
-- );

-- CREATE TABLE "ratings" (
--     "userId" INT   NOT NULL,
--     "movieId" INT   NOT NULL,
--     "rating" FLOAT  NOT NULL,
--     "timestamp" INT   NOT NULL);
--     CONSTRAINT "pk_ratings" PRIMARY KEY (
--         "userId"
--      )
-- );

-- CREATE TABLE "tags" (
--     "userId" INT   NOT NULL,
--     "movieId" INT   NOT NULL,
--     "tag" VARCHAR   NOT NULL,
--     "timestamp" INT   NOT NULL);
--     CONSTRAINT "pk_tags" PRIMARY KEY (
--         "userId"
--      )
-- );

-- CREATE TABLE "links" (
--     "movieId" INT   NOT NULL,
--     "imdbId" INT   NOT NULL,
--     "tmdbId" INT   NOT NULL
-- );

-- ALTER TABLE "ratings" ADD CONSTRAINT "fk_ratings_movieId" FOREIGN KEY("movieId")
-- REFERENCES "movies" ("movieId");

-- ALTER TABLE "tags" ADD CONSTRAINT "fk_tags_userId" FOREIGN KEY("userId")
-- REFERENCES "ratings" ("userId");

-- ALTER TABLE "tags" ADD CONSTRAINT "fk_tags_movieId" FOREIGN KEY("movieId")
-- REFERENCES "movies" ("movieId");

-- select * from movies;
-- select * from tags;
-- select * from ratings;
-- select * from links;