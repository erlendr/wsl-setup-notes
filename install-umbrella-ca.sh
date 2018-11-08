#!/bin/bash

if [ "$EUID" -ne 0 ]; then
  echo "Please run as root"
  exit
fi

INSTALL_DIR='/usr/share/ca-certificates/ciscoumbrella'

if [ ! -d "$INSTALL_DIR" ]; then
  echo "Install dir '$INSTALL_DIR' not found, creating..."
  mkdir $INSTALL_DIR
  echo "Installdir '$INSTALL_DIR' created"
fi

wget https://d36u8deuxga9bo.cloudfront.net/certificates/Cisco_Umbrella_Root_CA.cer -O "${INSTALL_DIR}/cisco_umbrella_root_c.crt"
sudo dpkg-reconfigure ca-certificates
update-ca-certificates
