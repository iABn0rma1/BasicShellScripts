!/bin/bash

echo "Enter file name: "
read file

word_count=$(wc -w < $file)
echo "Word count: $word_count"