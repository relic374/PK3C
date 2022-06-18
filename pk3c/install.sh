#!/bin/bash

# installing pk3c

echo "Installing into /opt"
echo
sudo mkdir /opt/pk3c
echo "Creating pk3c directory"
echo "Copying pk3c to /opt/pk3c"
echo
sudo cp pk3c.sh /opt/pk3c
echo "Copying help files and .txts into /opt/pk3c"
echo
sudo cp -r .pk3chelp /opt/pk3c
echo "Done"
echo -e "\033[1;34m"
cat .pk3chelp/add.txt
echo
