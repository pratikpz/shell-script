echo "Hello"

greet(){
	echo "Hello pratik"
}

greet

echo "Enter your name" 
read name
echo "Hello $name"

for i in 1 2 3 4 5 6 7 8 9 10 
do
	echo "Number is $i"
done


#!/bin/bash

for i in $(seq 10 100000)
do
  echo "Number is ranging from $i"
done