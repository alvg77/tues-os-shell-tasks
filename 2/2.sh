read DATA
if [[ $DATA =~ ^[a-zA-Z0-9]+$ ]]; then
    echo "$DATA is made only out of alphanumeric characters"
else
    echo "$DATA is not made only out of alphanumeric characters"
fi