#!/bin/bash

for i in {01..06}
do
    echo "Running Model $i ..."
    storm --prism 9bus_MV_Model$i.pm --prop MV_BV_Props.pctl > MV_Model$i.txt
    echo "Results saved to MV_Model$i.txt"
done

echo "All models processed successfully."
