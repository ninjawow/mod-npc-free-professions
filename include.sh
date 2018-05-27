#!/usr/bin/env bash

ProfessionNPC_ROOT="$( cd "$( dirname "${BASH_SOURCE[0]}" )/" && pwd )"

source $ProfessionNPC_ROOT"/conf/conf.sh.dist"

if [ -f $ProfessionNPC_ROOT"/conf/conf.sh" ]; then
    source $ProfessionNPC_ROOT"/conf/conf.sh"
fi
