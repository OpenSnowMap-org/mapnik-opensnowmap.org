SELECT AddGeometryColumn('osm_pistes_ways', 'point', 3857, 'POINT', 2);
UPDATE osm_pistes_ways SET point = ST_StartPoint(geometry);
