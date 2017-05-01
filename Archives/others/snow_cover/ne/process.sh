#wget http://www.naturalearthdata.com/http//www.naturalearthdata.com/download/10m/raster/NE1_HR_LC_SR.zip
unzip NE1_HR_LC_SR.zip
#wget http://www.naturalearthdata.com/http//www.naturalearthdata.com/download/10m/physical/10m-ocean.zip
#unzip 10m-ocean.zip
cp NE1_HR_LC_SR/NE1_HR_LC_SR.tif ne-ocean.tif

gdal_rasterize -l 10m_ocean -burn 129 -burn 180 -burn 216 -b 1 -b 2 -b 3 10m_ocean.shp ne-ocean.tif
mogrify ne-ocean.tif -function polynomial "1,-0.1"

listgeo NE1_HR_LC_SR/NE1_HR_LC_SR.tif > ne-ocean.geo
geotifcp -g ne-ocean.geo ne-ocean.tif ../rasters/ne-ocean.tif
gdalwarp -of GTiff -t_srs "+init=epsg:3857" -te -20037508.34 -20037508.34 20037508.34 20037508.34 ../rasters/ne-ocean.tif  ../rasters/ne-ocean-3857.tif

gdalinfo ../rasters/ne-ocean-3857.tif
