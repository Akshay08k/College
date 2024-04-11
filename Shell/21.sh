# for i in *.dat
# do
#     f=$(echo "$i" | cut -d'.' -f1)
#     mv "$i" "$f.txt"
# done

for i in *.dat
do 
mv "$i" "$i.txt"
done