#!/bin/bash

set -e

patching(){
    sudo apt update -y
    sudo DEBIAN_FRONTEND=NONINTERACTIVE apt upgrade -y
};

patching;