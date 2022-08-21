# Small script to get center coordinates to pass to expiry script
for f in *
do
cat $f | grep -o "/[0-9.]*/[0-9.]*/"
done

#./lonlat2dirty.py 17.718 59.916 13 pistes delete
