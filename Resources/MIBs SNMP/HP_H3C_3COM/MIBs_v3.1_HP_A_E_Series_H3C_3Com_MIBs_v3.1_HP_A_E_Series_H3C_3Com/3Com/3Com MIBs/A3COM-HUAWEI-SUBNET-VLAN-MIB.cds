M-- =================================================================
-- Copyright (C) 2004 by HUAWEI 3Com TECHNOLOGIES. All rights reserved.
--
-- Description: subnet vlan mib
-- Reference:
-- Version: V1.0
-- History:
--  V1.0 Initial version 2005-08-02
-- =================================================================
                         ["This MIB contains the objects for managing the subnet-based vlan
        configurations." �"Platform Team Huawei 3Com Technology Co., Ltd
        Hai-Dian District Beijing P.R.China
        http://www.huawei-3com.com
        Zip:100085" "200508021353Z" *"The initial revision of this MIB module."                       C"The maximum number of subnet that can be configured on all vlans."                       C"The maximum number of subnet that can be configured on each vlan."                       @"The maximum number of subnet that can be applied to all ports."                       @"The maximum number of subnet that can be applied to each port."                       ("Subnet-based vlan configuration table."                       ("Subnet-based vlan configuration entry."                       
"Vlan id."                       {"The subnet index value of a row in this table is from zero to
         the value of h3cSubnetNumPerVlan subtracting one."                       �"There are two kinds of ip address supported by vlan.
         One is ipv4, which is 32 bits.
         The other is ipv6, which is 128 bits."                       K"The ip address of the configured subnet on vlan, including ipv4 and ipv6."                       I"The net mask of the configured subnet on vlan, including ipv4 and ipv6."                       "The row status of this table."                      h"Subnet-based vlan port table.
        Add all subnet on vlan whose vlan id is h3cSubnetVlanPortInfoVlanId
        into port at a draught.
        All of the subnet information in this port is from the h3cSubnetVlanTable
        above, with the value of h3cSubnetVlanPortInfoVlanId as an index,
        which is h3cSubnetVlanVlanId in h3cSubnetVlanTable."                       &"Subnet-based vlan port create entry."                       "The port index."                       �"The subnet-based vlan id.
        h3cSubnetVlanPortCreateVlanId refers to h3cSubnetVlanVlanId
        in h3cSubnetVlanTable.
        If h3cSubnetVlanPortCreateVlanId has no corresponding entry
        in h3cSubnetVlanTable, set operation will fail."                      }"This vlaue is the same as the value of h3cSubnetVlanPortCreateVlanId index.
         All of the subnet information in this port,
         is described on vlan, whose vlan id is the value of h3cSubnetVlanPortInfoVlanId.
         The vlan id of vlan including subnet information can be gotten here.
         The subnet information can be gotten in the h3cSubnetVlanTable above."                       "The row status of this table."                               /"The compliance statement for subnet vlan MIB."                   :"A group of scalar objects describing the maximum number."                  "A group of subnet vlan subnet."                 +"A group of subnet vlan port create table."                        