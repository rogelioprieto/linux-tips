FILES=*.md

echo -----------------------------
echo Renombrando archivos, se inclurá la fecha al inicio del nombre bajo el formato YYYY-MM-DD-oldfilename. La fecha se obtendrá de la fecha de modificación de cada archivo.
echo -----------------------------

for f in $FILES
do 
  mynewname=`stat "$f" | grep 'Modify: ' | cut -d' ' -f2`
  #echo source:$f
  #echo destination:$mynewname
  #echo "moving now..."
  mv --verbose "$f" "$mynewname-$f"
done
