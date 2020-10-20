#!/bin/bash

while true
do  
  curl -s -X POST https://retros-iad-api.cfapps.io/retros/customer0/items/$1/vote &
done
