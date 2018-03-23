#!/bin/bash

# Create configuration files
mkdir /opt/config
echo "__oam_ipaddr__" > /opt/config/oam_ipaddr.txt
echo "__cpe_public_ipaddr__" > /opt/config/cpe_public_ipaddr.txt
echo "__oam_cidr__" > /opt/config/oam_cidr.txt
echo "__cpe_public_net_cidr__" > /opt/config/cpe_public_net_cidr.txt
echo "__repo_url_blob__" > /opt/config/repo_url_blob.txt
echo "__repo_url_artifacts__" > /opt/config/repo_url_artifacts.txt
echo "__demo_artifacts_version__" > /opt/config/demo_artifacts_version.txt
echo "__install_script_version__" > /opt/config/install_script_version.txt
echo "__cloud_env__" > /opt/config/cloud_env.txt

# Download and run install script
curl -k __repo_url_blob__/org.onap.demo/vnfs/vcpe/__install_script_version__/v_web_install.sh -o /opt/v_web_install.sh
cd /opt
chmod +x v_web_install.sh
./v_web_install.sh
