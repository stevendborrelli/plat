#!/bin/bash

typeset -i success=0
typeset -i fail=0

function assert_equal {
    local _desc=$1
    local _a=$2
    local _b=$3

    if [ ${_a} = ${_b} ]; then
        printf "\t${_desc}: ${_a} = ${_b} OK\n"
        ((success++))
        return 0
    else 
        printf "\t${_desc}: ${_a} = ${_b} FAIL\n"
        ((fail++))
        return 1
    fi
}

for os in centos debian fedora red_hat_enterprise_linux_server ubuntu; do
    for ver in `ls ${os}`; do
        echo "Checking ${os} ${ver}..."
        test_name=$(../plat -n -c ${os}/${ver}) 
        test_version=$(../plat -v -c ${os}/${ver}) 
        
        assert_equal "name check" ${os} ${test_name}
        assert_equal "version check" ${ver} ${test_version} 
    done
done

echo "${success} tests passed ${fail} tests failed"

if [ "${fail}" -eq 0 ] ; then
    exit 0
else
    exit -1
fi 
