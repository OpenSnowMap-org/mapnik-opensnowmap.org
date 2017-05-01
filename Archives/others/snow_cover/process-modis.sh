#curl ftp://n4ftl01u.ecs.nasa.gov/SAN/MOST/MOD10C2.005/2012.02.26/MOD10C2.A2012057.005.2012067194021.hdf -o data/MOD10C2.hdf
cd /home/website/snow_cover/
# obtain a file list
recent=$(curl -l ftp://n4ftl01u.ecs.nasa.gov/SAN/MOST/MOD10C2.005/ | tail -1)
# get the last additions
curl ftp://n4ftl01u.ecs.nasa.gov/SAN/MOST/MOD10C2.005/$recent -o recent.txt
filename=$(cat recent.txt |grep -o -m 1 '[^ ]*.hdf')
lastfilename=$(cat last-modis-file.txt)
echo $(date) $lastfilename $filename

if [ $lastfilename == $filename ]
then 
	echo $(date)" nothing to do, no new data from modis"
	exit 0
else
	echo $filename > last-modis-file.txt
	# downlaod the last snow cover
	curl ftp://n4ftl01u.ecs.nasa.gov/SAN/MOST$filename -o data/MOD10C2.hdf
	curl ftp://n4ftl01u.ecs.nasa.gov/SAN/MOST$filename.xml -o data/MOD10C2.xml
	# Check last update dates
	end=$(cat data/MOD10C2.xml | grep RangeEndingDate | grep -o [0-9-]*)
	begin=$(cat data/MOD10C2.xml | grep RangeBeginningDate | grep -o [0-9-]*)
	echo "Modis 8 day snow cover "$begin"/"$end > data/update.txt
	
	# Process the modis file
	gdal_translate -of GTiff \
	HDF4_EOS:EOS_GRID:"data/MOD10C2.hdf":MOD_CMG_Snow_5km:Eight_Day_CMG_Snow_Cover snow.tif

	listgeo snow.tif > snow.geo
	
	# put nodata in black, 255:
	convert snow.tif  -fill '#000000' -opaque '#FFFFFF' snow.tif
	# put water in black, 254:
	convert snow.tif  -fill '#000000' -opaque '#FEFEFE' snow.tif
	# put cloudy water in black, 250:
	convert snow.tif  -fill '#000000' -opaque '#FAFAFA' snow.tif
	# put no mapped in black, 253:
	convert snow.tif  -fill '#000000' -opaque '#FDFDFD' snow.tif
	# put ice in black, 107 :
	convert snow.tif  -fill '#000000' -opaque '#6B6B6B' snow.tif
	# put polar night in black, 111:
	convert snow.tif  -fill '#000000' -opaque '#6F6F6F' snow.tif
	# stretch contrast: 100=>254

	convert snow.tif -level 0x39% snow.tif
	
	geotifcp -g snow.geo snow.tif tmp.tif
	
	mv tmp.tif snow.tif
	# Warp to mercator
	rm snow_3857.tif
	gdalwarp -of GTiff -t_srs "+init=epsg:3857" -te -20037508.34 -20037508.34 20037508.34 20037508.34 -ts 18773 0 -r cubic snow.tif snow_3857.tif
	#Files: snow_m.tif
	#Size is 12990, 20358
	#Size is 12990, 15817
	#ne_m_big: Size is 12990, 20358
	# Compose with natural earth background
	listgeo snow_3857.tif > snow_m.geo
	#convert snow_m.tif -background black -gravity center -extent 12990x20358 snow_m.tif
	#Files: ne-ocean-m.tif
	#Size is 18773, 15191
	convert snow_3857.tif -background black -gravity center -extent 18773x18773 snow_3857.tif
	
	listgeo rasters/ne-ocean-3857.tif > ne-ocean-3857.geo
	convert rasters/ne-ocean-3857.tif snow_3857.tif -compose Lighten -composite tmp.tif
	geotifcp -g ne-ocean-3857.geo tmp.tif rasters/ne_snow_3857.tif
	convert -resize 5% rasters/ne_snow_3857.tif ../downloadable/ne_snow_3857-005.tif
	
	rm *.tif *.geo *.aux.xml

	./generate_tiles.py
        echo "Modis 8 day snow cover "$begin"/"$end > /var/www/data/modis-update.txt
        echo $(date)" snow cover updated, data from period "$begin"/"$end
fi
exit 0
