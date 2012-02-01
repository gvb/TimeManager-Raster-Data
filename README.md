# TimeManager raster support test data

This contains images as JPEGs and associated "world files."  The SQL scripts create a SpatiaLite or PostGIS database with timestamps and locations as polygon shapes.

The file names are of the format `cam190637-002396398_ortho.jpg` where the part before the dash (`cam190637`) is constant and the digits after the dash are tenths of a second since the start of the week (GPS time).

002396398 = 2 days 18:33:59.8

## SpatiaLite

The mktable.sqlite script assumes `init_spatialite.sql` resides in the current directory (a symlink works well).  The file can be downloaded from http://www.gaia-gis.it/spatialite-2.0/index.html.

```
spatialite test.db
.read mktable.sqlite utf8
.read insert.sqlite utf8
.read mkindex.sqlite utf8
```

## PostGIS

```
psql -h 127.0.0.1 -f mktable.sql gis gisuser
psql -h 127.0.0.1 -f insert.sql gis gisuser
psql -h 127.0.0.1 -f mkindex.sql gis gisuser
```
