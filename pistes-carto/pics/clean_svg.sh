for FILE in *.svg
do 
scour -i $FILE -o tmp.svg
mv tmp.svg $FILE
done
