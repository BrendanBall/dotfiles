#!/bin/bash
INSTANCE=$1

STATUS=$(systemctl --user is-active cloudsql-$INSTANCE)
if [ "$STATUS" == "active" ]
then
    systemctl --user stop cloudsql-$INSTANCE
elif [ "$STATUS" == "inactive" ]
then
    systemctl --user start cloudsql-$INSTANCE
fi
