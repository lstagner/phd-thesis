#!/env/bash

for i in {1..193}
do
    n=$(pdffonts thesis.pdf -f $i -l $i | grep none | wc -l)
    if [ $n -gt 0 ]
    then
        echo $i $n
    fi
done
