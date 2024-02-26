for i in *.txt
do
    f=$(echo "$i" | cut -d'.' -f1)
    mv "$i" "$f.dat"
done
