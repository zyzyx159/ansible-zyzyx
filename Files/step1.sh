#!/bin/bash

set -e

patching(){
    apt update -y
    DEBIAN_FRONTEND=NONINTERACTIVE apt upgrade -y
    DEBIAN_FRONTEND=NONINTERACTIVE apt install ansible -y
};

patching;