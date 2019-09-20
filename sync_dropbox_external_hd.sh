#!/bin/bash

DROPBOX_PATH="/mnt/BBWORK/Dropbox"
EXTERNAL_MOUNT="/run/media/gilson/GILSON"

if [[ -d $EXTERNAL_MOUNT ]]; then
    echo "Diretório $EXTERNAL_MOUNT encontrado. Iniciando sincronização..."

    rclone sync $DROPBOX_PATH $EXTERNAL_MOUNT

    echo "Sincronização feita com sucesso"
else
    echo "Diretorio não montado. Faça a montagem e execute novamente de forma manual"
fi
