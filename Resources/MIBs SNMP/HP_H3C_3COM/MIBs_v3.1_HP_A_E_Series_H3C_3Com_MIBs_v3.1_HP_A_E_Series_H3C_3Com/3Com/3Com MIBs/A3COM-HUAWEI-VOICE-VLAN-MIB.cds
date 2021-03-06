-- ==================================================================
-- Copyright (C) 2009 by H3C Technologies. All rights reserved.
--
-- Description: H3C Enterprise MIB
-- Reference:
-- Version: V1.3
-- History:
-- V1.0 Created by luoqiang01280, 2004.06.08
-- V1.1 2004-10-12 updated by gaolong
--      Import TEXTUAL-CONVENTION.
-- V1.2 2004-12-7 add h3cvoiceVlanPortTable by liaoyuxia.
-- V1.3 2009-5-15 add h3cVoiceVlanPortLegacy and h3cVoiceVlanPortQosTrust
--                by zhangqingjun.
-- ==================================================================
-- ==================================================================
--
-- Varibles and types be imported
--
-- ==================================================================
  s"Each octet within this value specifies a set of eight
        ports, with the first octet specifying ports 1 through
        8, the second octet specifying ports 9 through 16, etc.
        Within each octet, the most significant bit represents
        the lowest numbered port, and the least significant bit
        represents the highest numbered port.  Thus, each port
        of the bridge is represented by a single bit within the
        value of this object.  If that bit has a value of '1'
        then that port is included in the set of ports; the port
        is not included if its bit has a value of '0'."                                                                     s"This MIB contains objects to manage the voice vlan operations, which is used on
            lanswitch products. " 0"Platform Team Beijing Institute H3C Tech, Inc." "200905150000Z" "200207010000Z" "To fix bugs in the MIB file." *"The initial revision of this MIB module."       -- May 15, 2009 at 00:00 GMT
       L" A table containing the mac address which can be identified by voice vlan "                       L" A table containing the mac address which can be identified by voice vlan "                       /" Mac address can be identified by voice vlan "                       " The mask of mac address "                       " The description of oui "                       (" Current operation status of the row  "                       F" Voice vlan enable status: enabled (2..4095), disabled (0xffffffff) "                       (" Portlist of voice vlan enabled ports "                       5" Voice vlan aging time, the unit of which is minute"                       (" Voice vlan configuration mode status "                       #" Voice vlan security mode status "                       %" A list of voice vlan mode entries."                       w" An entry containing voice vlan mode information,
            which is applicable to a voice vlan enabled interface."                       O" The index of interface on which voice vlan function
            is enabled." "ifIndex in RFC1213"                     l" Voice vlan configuration mode status, which is
            applicable to a voice vlan enabled interface."                       n" Voice vlan configuration legacy status, which is
            applicable to a voice vlan enabled interface."                       q" Voice vlan configuration qos trust status, which is
            applicable to a voice vlan enabled interface."                              