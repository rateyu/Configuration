#!/usr/bin/env bash
#==============================================================#
# Author: Vonng(fengruohang@outlook.com)                       #
# Desc  : Bash Crypto Util                                     #
# Dep   : None                                                 #
#==============================================================#

# module name
declare -g -r __MODULE_CRYPTO="crypto"

#==============================================================#
#                   Public-Private Key                         #
#==============================================================#
function genrsa() {
    openssl genrsa -out "$1_pri.pem" 1024
    openssl rsa -in "$1_pri.pem" -pubout -out "$1_pub.pem"
}
#==============================================================#


#==============================================================#
#                            Misc                              #
#==============================================================#
# uuid
alias uuid="uuidgen | tr '[:upper:]' '[:lower:]'"
#==============================================================#



#==============================================================#
#                            Hash                              #
#==============================================================#
# OS X hash
command -v md5sum > /dev/null || alias md5sum="md5"
command -v sha1sum > /dev/null || alias sha1sum="shasum"
#==============================================================#