#!/bin/bash
bash unattended_installer/wazuh_install.sh
cat /var/log/wazuh-unattended-installation.log
sleep 60
cd ~
/usr/testing/bin/pytest --tb=long /test_unattended.py -v