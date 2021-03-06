�-- ============================================================================
-- Copyright (C) 2003 by HUAWEI 3COM TECHNOLOGIES.  All rights reserved.
--
-- Description: This MIB is a framework MIB for unicast technology
-- Reference:
-- Version: V1.0
-- History:
-- V1.0 2005-04-20 created by fuzhenyu
-- ============================================================================
                         <" This MIB is a framework MIB for unicast related features." 9"Platform Team Hangzhou Institute Huawei-3Com Tech, Inc." "200503241454Z" '" Revisions made by Hangzhou MIB team."       "-- January 31, 2005 at 14:54 GMT
       �" Unicast Reverse Path Forwarding (URPF) is used to prevent the network
            attacks caused by source address spoofing. This table is used to configure
            URPF on specific interfaces."                       >" The entry of h3cURPFTable, indexed by vlan interface index."                       !" The ifIndex of vlan interface."                       L" This object is used to enable or disable URPF on certain vlan interfaces."                       j" This object specifies to which slot packets are redirected in order to
            perform URPF check."                       6" This object provides total received packets number."                       =" This object provides total dropped invalid packets number."                      /" This object is used to clear the URPF statistics on certain
            vlan interfaces. This object is actually a write-only object.
            When read, it always returns 0. When set to 1, the objects
            h3cURPFTotalReceivedPacket and h3cURPFDroppedPacket are reset
            to 0."                              