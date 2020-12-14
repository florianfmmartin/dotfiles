#!/usr/bin/env bash

cd ~/git/Orca/desktop/ 
npm start & disown

cd ~/git/Pilot/desktop/
npm start & disown
