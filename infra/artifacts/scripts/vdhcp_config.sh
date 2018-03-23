#!/bin/bash

# Create configuration files
mkdir /opt/config
echo "__oam_ipaddr__" > /opt/config/oam_ipaddr.txt
echo "__cpe_signal_ipaddr__" > /opt/config/cpe_signal_ipaddr.txt
echo "__oam_cidr__" > /opt/config/oam_cidr.txt
echo "__cpe_signal_net_cidr__" > /opt/config/cpe_signal_net_cidr.txt
echo "__mr_ip_addr__" > /opt/config/mr_ip_addr.txt
echo "__repo_url_blob__" > /opt/config/repo_url_blob.txt
echo "__repo_url_artifacts__" > /opt/config/repo_url_artifacts.txt
echo "__demo_artifacts_version__" > /opt/config/demo_artifacts_version.txt
echo "__install_script_version__" > /opt/config/install_script_version.txt
echo "__cloud_env__" > /opt/config/cloud_env.txt

# Download and run install script
curl -k __repo_url_blob__/org.onap.demo/vnfs/vcpe/__install_script_version__/v_dhcp_install.sh -o /opt/v_dhcp_install.sh
cd /opt
chmod +x v_dhcp_install.sh
./v_dhcp_install.sh
