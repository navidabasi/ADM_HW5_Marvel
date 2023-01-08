awk -F, '{if ($2<$1) print $2 "\t\t\t-" $1; else print $1 "\t\t-" $2}' hero_clear1.csv > heroes_ordered.txt
echo "Let's display the 20 most popular pair of heroes:" sed -r 's/\s+//g' heroes_ordered.txt | sort | uniq -c | sort -rnk1 | head -n  20
echo "Number of comics per hero in ascending order: "
awk -F, '{print $1}' edges.csv | uniq -c | sort -nr | head -10
echo "The average number of heroes in comics: "
awk -F, '{heros[$2]++} END {for (i in heros){sum = sum + heros[i]}  print sum/length(heros)}' edges.csv
