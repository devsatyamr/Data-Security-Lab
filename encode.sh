#! /bin/bash
printf "Enter the path of the photo: "
read Ppath
printf "Enter the path of data you want to encode: "
read Dpath
steghide embed -ef $Dpath -cf $Ppath
sleep 2
echo "Your data is successfully encoded in the photo!"
