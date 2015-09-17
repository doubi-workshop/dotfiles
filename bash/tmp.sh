#!/usr/bin/bash
str="hello"
echo $str

a=('aa' 'b b' c d)
num=${#a[@]}

for ((i=0;i<$num;i++)); do
    echo ${a[${i}]}
done

if [ -d "/tmp" ]; then
    echo "/tmp exist"
else
    echo "/tmp not exist"
fi

a=3
b=5
if [ $a -le $b ]; then
    echo "$a < $b"
else
    echo "$a > $b"
fi

for f in $(ls -al /tmp); do
    echo $f
done

cnt=6
while [ $cnt -gt 0 ]; do
    echo "cnt = $cnt"
    let cnt=cnt-1
done

function my_func {
    echo $1
}

my_func aa

select word in "aa" "bb" "cc" "dd"
do
    echo "word = $word"
    break
done

