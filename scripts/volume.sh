volume=$(amixer -D pulse sget Master | awk -F"[][]" '/%/ { print $2  }' | head -n1)
volume=${volume:: -1}

[[ $volume == 0 ]] && echo -e "[\uf6a9 $volume%] | "
[[ $volume == 100 ]] && echo -e "[\uf028 $volume%] | " || 
echo -e "[\uf027 $volume%] | "

