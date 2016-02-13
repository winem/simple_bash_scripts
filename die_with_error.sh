#!/bin/bash 

# to be called when something goes wrong: dieWithError "error message" 
dieWithError() {
        echo "ERROR: $@" 
        exit 1
}
