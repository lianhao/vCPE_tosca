#!/bin/bash

# Create configuration files
mkdir /opt/config
#echo "__brgemu_net_ipaddr__" > /opt/config/brgemu_net_ipaddr.txt
#echo "__brgemu_cidr__" > /opt/config/brgemu_net_cidr.txt
echo "__brgemu_bng_private_net_cidr__" > /opt/config/brgemu_bng_private_net_cidr.txt
echo "__repo_url_blob__" > /opt/config/repo_url_blob.txt
echo "__repo_url_artifacts__" > /opt/config/repo_url_artifacts.txt
echo "__demo_artifacts_version__" > /opt/config/demo_artifacts_version.txt
echo "__install_script_version__" > /opt/config/install_script_version.txt
echo "__cloud_env__" > /opt/config/cloud_env.txt
echo "__vpp_source_repo_url__" > /opt/config/vpp_source_repo_url.txt
echo "__vpp_source_repo_branch__" > /opt/config/vpp_source_repo_branch.txt
echo "__hc2vpp_source_repo_url__" > /opt/config/hc2vpp_source_repo_url.txt
echo "__hc2vpp_source_repo_branch__" > /opt/config/hc2vpp_source_repo_branch.txt
echo "__vpp_patch_url__" > /opt/config/vpp_patch_url.txt
echo "__sdnc_ip__" > /opt/config/sdnc_ip.txt
echo "__compile_state__" > /opt/config/compile_state.txt

# Download and run install script
curl -k __repo_url_blob__/org.onap.demo/vnfs/vcpe/__install_script_version__/v_brgemu_install.sh -o /opt/v_brgemu_install.sh
cd /opt
chmod +x v_brgemu_install.sh
./v_brgemu_install.sh
