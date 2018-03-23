#!/bin/bash

# Create configuration files
mkdir /opt/config
echo "__mux_to_bng_net_ipaddr__" > /opt/config/mux_to_bng_net_ipaddr.txt
echo "__oam_ipaddr__" > /opt/config/oam_ipaddr.txt
echo "__mux_gw_net_ipaddr__" > /opt/config/mux_gw_net_ipaddr.txt
echo "__bng_to_mux_ipaddr__ " > /opt/config/bng_to_mux_net_ipaddr.txt
echo "__bng_mux_net_cidr__" > /opt/config/bng_mux_net_cidr.txt
echo "__oam_cidr__" > /opt/config/oam_cidr.txt
echo "__mux_gw_net_cidr__" > /opt/config/mux_gw_net_cidr.txt
echo "__brg_bng_net_cidr__" > /opt/config/brg_bng_net_cidr.txt
echo "__repo_url_blob__" > /opt/config/repo_url_blob.txt
echo "__repo_url_artifacts__" > /opt/config/repo_url_artifacts.txt
echo "__demo_artifacts_version__" > /opt/config/demo_artifacts_version.txt
echo "__install_script_version__" > /opt/config/install_script_version.txt
echo "__cloud_env__" > /opt/config/cloud_env.txt
echo "__vpp_source_repo_url__" > /opt/config/vpp_source_repo_url.txt
echo "__vpp_source_repo_branch__" > /opt/config/vpp_source_repo_branch.txt
echo "__vpp_patch_url__" > /opt/config/vpp_patch_url.txt
echo "__hc2vpp_source_repo_url__" > /opt/config/hc2vpp_source_repo_url.txt
echo "__hc2vpp_source_repo_branch__" > /opt/config/hc2vpp_source_repo_branch.txt
echo "__hc2vpp_patch_url__" > /opt/config/hc2vpp_patch_url.txt
echo "__libevel_patch_url__" > /opt/config/libevel_patch_url.txt

# Download and run install script
curl -k __repo_url_blob__/org.onap.demo/vnfs/vcpe/__install_script_version__/v_gmux_install.sh -o /opt/v_gmux_install.sh
cd /opt
chmod +x v_gmux_install.sh
./v_gmux_install.sh
