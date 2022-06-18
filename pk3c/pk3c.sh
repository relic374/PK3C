#!/bin/bash

# pk3c code

MODE=$1
RETURNNAME=$2
DIRTOCON=$3

VERSION=0.0.3

if [[ -z $MODE ]]; then
	echo "'pk3c.sh -h' for help"

elif [[ -n $MODE ]]; then
	if [[ $MODE = '-h' ]]; then
		cat /opt/pk3c/.pk3chelp/help.txt
	elif [[ $MODE = "-p" ]]; then
		echo
		echo "Process Started"
		cd $DIRTOCON
		zip -r -q $RETURNNAME.zip .
		mv $RETURNNAME.zip $RETURNNAME.pk3
		echo "Done"
		echo "$RETURNNAME.pk3 found in folder '$DIRTOCON'"
		echo
	elif [[ $MODE = "-pz" ]]; then
		echo
		echo "Process Started"
		cd $DIRTOCON
		zip -r -q $RETURNNAME.zip .
		mv $RETURNNAME.zip $RETURNNAME.pk3
		cp $RETURNNAME.pk3 $RETURNNAME.zip
		echo "Done"
		echo "$RETURNNAME.pk3 && $RETURNNAME.zip found in $DIRTOCON"
		echo

	elif [[ $MODE = "-ver" ]]; then
		echo "PK3C Version: $VERSION"

	else
		echo
		echo "PK3C: Unknown Mode '$1'. Use 'pk3c.sh -h' for help"
		echo
	fi

fi
