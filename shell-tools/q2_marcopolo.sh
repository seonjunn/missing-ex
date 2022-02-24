#!/bin/bash

mp=$HOME/dev/missing/shell-tools/q2_mphistory

function marco {
    pwd > $mp
}

function polo {
    cd $(cat $mp)
}
