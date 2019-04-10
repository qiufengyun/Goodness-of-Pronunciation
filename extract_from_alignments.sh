#! /bin/bash

in_file=$1

cat $in_file | head -1 | sed 's/\[ /\n/g' | sed 's/\ ]//g' | sed 's/ /\n/g' | sed 's/^[ \t]*//;s/[ \t]*$//' | sed '/^$/d' | sed '1d' > tmp_t_ids.txt

cat $in_file | head -2 | tail -1 | sed 's/ /\n/g' | sed 's/^[ \t]*//;s/[ \t]*$//' | sed '/^$/d' | sed '1d' > tmp_phones.txt

cat $in_file | head -1 | sed 's/\[ /\n/g' | sed 's/\ ]//g' | sed 's/^[ \t]*//;s/[ \t]*$//' | sed '1d' | awk '{print NF}' > tmp_segments.txt

