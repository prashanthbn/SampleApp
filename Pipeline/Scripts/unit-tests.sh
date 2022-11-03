#!/bin/bash

PARENT_PATH=$(cd "$(dirname "${BASH_SOURCE[0]}")";pwd -P)
echo "PARENT_PATH:" ${PARENT_PATH}
source ${PARENT_PATH}/header.sh

WD=$(pwd)
echo "WD:" ${WD}

cd built

###############################################################################

header 'UNIT TESTS STARTED'

dotnet test

header 'UNIT TESTS COMPLETED'

###############################################################################

#header 'DELETING UNIT TESTS'

#cd ..

#rm --recursive --force Unit
 
#header 'UNIT TESTS DELETED'

###############################################################################