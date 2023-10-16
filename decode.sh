#! /bin/bash
printf " Enter the path of the photo: "
read Ppath
steghide extract -sf $Ppath
sleep 2
echo "Your data is successfully decoded from the photo!"
