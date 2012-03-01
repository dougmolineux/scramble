#!/bin/bash
# Regression Tester - Written by Doug Molineux 3/1/2012
# Results of test is sent to reg.out, and then compared with expected.out

cd ..; ./scramble < regression/reg.in > regression/reg.out

cmp regression/reg.out regression/expected.out &> /dev/null  

if [ $? -eq 0 ]   
then
  echo "Regression Test Passed 100%"
else  
  echo "Regression Test Failed. Compare regression/reg.out and regression/expected.out"
fi
