#!/bin/bash

if [$#]
then
    ls $1 | cat $1
else
    ls $HOME
fi