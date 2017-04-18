#!/bin/bash
openstack overcloud deploy --templates \
    --timeout 90 \
    -r /home/stack/templates/roles_data_dpdk.yaml \
    -e /usr/share/openstack-tripleo-heat-templates/environments/neutron-ovs-dpdk.yaml \
    -e /usr/share/openstack-tripleo-heat-templates/environments/network-isolation.yaml \
    -e /home/stack/templates/network-environment.yaml \
    -e /home/stack/templates/computeovsdpdk-env.yaml \
    -e /home/stack/templates/rhel-registration/environment-rhel-registration.yaml \
    -e /home/stack/templates/rhel-registration/rhel-registration-resource-registry.yaml \
    --control-flavor control --control-scale 3 \
    --ntp-server 172.28.71.66
