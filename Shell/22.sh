#!/bin/bash

    if [ $# = 1 ];
    then
        ls $1 
    else
        ls $HOME
    fi 