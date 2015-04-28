#!/bin/bash

echo 0.0.1 > __conda_version__.txt
echo 2 > __conda_buildnum__.txt
echo py27_$(cat __conda_buildnum__.txt) > __conda_buildstr__.txt

echo "/opt/anaconda1anaconda2anaconda3" > $PREFIX/test-has-prefix
