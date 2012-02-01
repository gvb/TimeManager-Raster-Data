CREATE INDEX "2011-12-20-mkg_the_geom_gist" ON "2011-12-20-mkg" using gist ("the_geom" gist_geometry_ops);
CREATE INDEX "2011-12-20-mkg_time" ON "2011-12-20-mkg" ("time");
