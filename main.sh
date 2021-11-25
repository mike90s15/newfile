#!/usr/bin/env bash
#Mike Edwards

function _mike_()
{
    while :; do
        for((a=0;a<=3;a++)); do
            clear
            read -p "Nome do arquivo: " name
            [[ -n ${name} ]] && break
            echo "Digite um nome para o arquivo!"
            sleep 1
        done

        if [[ -f ${name} ]]; then
            echo "Arquivo já existente."
            sleep 1

        else
            > ${name}
            echo "Arquivo >> ${name} << criado."
            sleep 1
            return 0
        fi
    done
}
_mike_
