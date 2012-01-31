SET CLIENT_ENCODING TO UTF8;
SET STANDARD_CONFORMING_STRINGS TO ON;
DROP TABLE "2011-12-20-6x16c-mkg";
CREATE TABLE "2011-12-20-6x16c-mkg" (gid serial PRIMARY KEY,
    "time" timestamp, "img" varchar(255));
SELECT AddGeometryColumn('','2011-12-20-6x16c-mkg','the_geom','-1','POLYGON',2);
