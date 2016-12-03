#!/bin/bash

NAME="Test Torch"
TEST_IMG="$1"
DESCRIPTION="Test if torch is present in the path"

docker run -it ${TEST_IMG} which th
RESULT=$?

if [ $? -gt 0 ]; then
    echo "[FAILED] ${NAME}: ${DESCRIPTION}"
else
    echo "[OK] ${NAME}"
fi

exit ${RESULT}
