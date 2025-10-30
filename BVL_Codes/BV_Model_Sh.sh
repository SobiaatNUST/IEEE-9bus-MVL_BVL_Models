#!/bin/bash

for i in {01..06}
do
    echo "Running Model $i ..."
    storm --prism 9bus_BV_Model$i.pm --prop Props.pctl > BV_Model$i.txt
    echo "Results saved to BV_Model$i.txt"
done

echo "All models processed successfully."
