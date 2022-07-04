#!/bin/bash
read  fileinput

if [ ! -e "$fileinput" ]; then
echo "Usage: No File is given, enter a filename that exists and has data"

elif [ ! -s "$fileinput" ]; then
echo "Usage: Enter a filename that isn't empty"

else
echo "MENU"
echo "--------"
echo "1) Shell sort"
echo "2) Perl sort"
echo "3) Perl search"
echo "4) Exit"
read optioninput
fi

if ((optioninput==1)); then
source shellsort.sh
elif ((optioninput==2)); then
perl perlsort.pl $fileinput
elif ((optioninput==3)); then
perl perlsearch.pl $fileinput
elif ((optioninput==4)); then
exit 1;
else 
exit 1;
fi

