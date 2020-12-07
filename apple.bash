#!/bin/bash
 cd stock_data
for i in *$1*; do
grep aapl $i | colrm 21 55 | colrm 1 14
done
