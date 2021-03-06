-- ==================================================================
-- Copyright (C) 2002 by HUAWEI-3COM TECHNOLOGIES. All rights reserved.
--
-- Description: LAN Switch Multicast Port Management MIB
-- Reference:
-- Version: V1.2
-- History:
-- V1.0 2005-03-22 Created by Wang Xiaodong
-- V1.1 2005-08-11 updated by Wang Xiaodong
--      Add h3cMPortGroupLimitReplace
-- V1.2 2006-02-06 updated by Lv Jianning
--      Add h3cHostStaticJoinTable
-- ==================================================================
-- ==================================================================
-- ==================================================================
--
-- Variables and types be imported
--
-- ==================================================================
   '"A simple status value for the object."                                     *"The MPM (Multicast Port Management) MIB." �"Platform Team Huawei 3Com Technologies Co., Ltd.
            Hai-Dian District Beijing P.R. China
            http://www.huawei-3com.com
            Zip:100085" "200503220000Z" '"The initial version of this MIB file."                   ("The lower limit of group-limit number."                       ("The upper limit of group-limit number."                           j"A table which is used for configuring a port in a specified VLAN to join
            a multicast group."                       k"An entry which is used for configuring a port in a specified VLAN to join
            a multicast group."                       i"An index uniquely identifying a port in a specified
            VLAN which joined the multicast group."                       #"Type of the multicast IP address."                       n"IP address of the group which the port belongs to,
            and it must be a valid multicast IP address."                      N"This object is responsible for managing the creation and
             deletion of rows, which supports 'active', 'notReady',
             'createAndGo', 'destroy'.

             Until instances of all corresponding columns are
             appropriately configured, the value of the
             corresponding instance of the h3cMPortGroupJoinStatus
             column is 'notReady'.

             In particular, a newly created row cannot be actived
             until the port belongs to the corresponding VLAN and
             IGMP or IGMP snooping is enabled on that VLAN."                       u"A table containing information about the status of a port
             which joined a multicast group in the VLAN."                       v"An entry containing information about the status of a port
             which joined a multicast group in the VLAN."                       T"An index uniquely identifies that a port belongs to a specified
            VLAN."                       "Type of multicast IP address."                       k"IP address of the group which the port joined, and it must be a
             valid multicast IP address."                       �"A table configuring the fast leave status, group limit number and
             group policy parameter on a port in the specified VLAN."                       �"An entry containing information about the fast leave status, group
             limit number and group policy parameter of a port in the specified
             VLAN."                       "The VLAN index."                       %"The group limit number of the port."                       $"The fast leave status of the port."                       W"The ACL number which is used as the group policy parameter
             of the port."                       �"The object is responsible for managing the creation and
             deletion of rows, which supports 'active', 'notReady',
             'createAndGo' and 'destroy'."                      �"This object is related to the object h3cMPortGroupLimitNumber.
             If the current IGMP group number is less than the value of
             h3cMPortGroupLimitNumber, any new IGMP group is permitted.
             If the current IGMP group number equals to the value of
             h3cMPortGroupLimitNumber and the value of this object is enabled,
             the group with the minimum multicast address will be replaced by
             the new group.
             If the current IGMP group number equals to the value of
             h3cMPortGroupLimitNumber and the value of this object is disabled,
             none of new group will be permitted."                       s"A table used to configure a host on a port in a specified VLAN
            statically to join a multicast group."                       t"An entry used to configure a host on a port in a specified VLAN
            statically to join a multicast group."                       }"An index uniquely identify the specified VLAN in which a host
            on a port statically joined the multicast group."                       #"Type of the multicast IP address."                       n"IP address of the group which the host belongs to, and it must be
            a valid multicast IP address."                       r"This object is responsible for managing rows, which supports
            'active', 'createAndGo' and 'destroy'."                                                      