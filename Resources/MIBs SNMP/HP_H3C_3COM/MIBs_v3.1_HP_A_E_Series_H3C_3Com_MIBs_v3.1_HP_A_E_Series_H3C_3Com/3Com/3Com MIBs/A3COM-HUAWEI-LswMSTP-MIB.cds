�-- ==================================================================
-- Copyright (C) 2002 by  HUAWEI TECHNOLOGIES. All rights reserved.
--
-- Description: HUAWEI Lan Switch MSTP MIB
-- Reference:
-- Version: V1.14
-- History:
--      v1.0 (1) Created by Zhang Shilin, 2001.6.29
--           (2) Revised by Qi Zhenglin, 2002.01.08
--      v1.01 2004-7-13 remove default value
--         of hwdot1sMstDefaultVlanAllo & hwdot1sMstDefaultRegionName
--      v1.02 2004-08-19 Revised by Song Jianyong,
--            add hwdot1sStpPathCostStandard in mstp global table
--      v1.1 2004-10-12 updated by gaolong
--           Import OBJECT-IDENTITY, NOTIFICATION-TYPE, TEXTUAL-CONVENTION.
--           Import dot1dStpPort.
--           Relocate hwdot1sMstp MODULE-IDENTITY clause.
--           Fix default value errors for hwdot1sMstBpduGuard, hwdot1sMstiStpPortEdgeport,
--           hwdot1sMstiStpStatus, hwdot1sMstiPortRootGuard, hwdot1sMstiPortLoopGuard.
--      v1.11 2004-10-23 Revised by Song Jianyong,
--            modify the range of hwdot1sMstiPathCost value in hwdot1sPortTable
--      v1.12 2005-01-22 Revised by Song Jianyong,
--            Add an enumeration for hwdot1sStpForceVersion in mstp global table
--            Add an enumeration for hwdot1sStpPathCostStandard in hwdot1sPortTable
--            Adjust format of objects' description
--     V1.13 2005-6-30 Updated by zhanghaihong
--            add hwdot1sMstiStpPortSendingBPDUType, hwdot1sMstiStpOperPortPointToPoint
--            in hwdot1sPortTable
--     V1.14 2005-11-07 Updated by zhanghaihong
--            Modify the description of hwdot1sMstiStpOperPortPointToPoint in
--            hwdot1sPortTable.
--            Add hwdot1sMstiStpPortAdminBPDUFmt, hwdot1sMstiStpPortOperBPDUFmt
--            in hwdot1sPortTable.
-- ==================================================================
-- ==================================================================
--
-- Varibles and types be imported
--
-- ==================================================================
-- ------------------------------------------------------------------
-- ------------------------------------------------------------------
   '"A simple status value for the object."               �"Legacy means that the BPDU format is legacy.  Dot1s means that the
        BPDU format is IEEE 802.1s.  Auto means that the format of BPDU sending
        on the port is determined by the BPDU format of its connective port."                                 "" "" "200106290000Z" ""               %"Whether the Bridge MSTP is enabled."                       2" The mode of this Bridge spanning-tree protocol."                       "The diameter of Bridge."                       ("The maximum value of the  Bridge hops."                       5"The Bridge Identifier of the current Master Bridge."                       G"The CIST path cost from the transmitting Bridge to the Master Bridge."                       �"Whether the Bridge BPDU Guard function is enabled. If the function
      is enabled, the port will shutdown when received BPDU and the port
      is configured as portfast."                       �"The administrative Configuration Identifier Format Selector in use
      by the Bridge. This has a value of 0 indicate the format specified
      in the Standard of IEEE 802.1s."                       '"This MSTP administrative region name."                       *"This MSTP administrative revision level."                       �"The operative Configuration Identifier Format Selector in use by the
      Bridge. This has a value of 0 indicate the format specified in the
      Standard of IEEE 802.1s."                       ""This MSTP operative region name."                       %"This MSTP operative revision level."                       8"This MSTP Region's Configuration Digest Signature Key."                       ""Active the region configuration."                       Z"Set default configuration about VLAN allocation and all VLANs
      are mapped to CIST."                       "Set default region name."                       ""                       ""                       "VLAN Identifier"                       <"Administrative Multiple spanning-tree instance Identifier."                       7"Operative Multiple spanning-tree instance Identifier."                       ""                       ""                       ,"Multiple spanning-tree instance Identifier"                       S"The Bridge Identifier for the spanning tree instance
        identified by MSTID"                       _"The Bridge Priority for the spanning tree instance
        identified by MSTID. Step of 4096"                       f"The Bridge Identifier of the Root Bridge for the spanning
        tree instance identified by MSTID"                       |"The path cost from the transmitting Bridge to the Root Bridge
        for the spanning tree instance  identified by MSTID"                       F"The Root Port for the spanning tree instance identified by the MSTID"                       �"Config this Bridge as a primary root or seconary root and or cancel
        the root for this spanning tree instance  identified by MSTID"                       G"The remaining hops of the spanning tree instance  identified by MSTID"                       o" The lower part of administrative Vlan list mapped to the spanning
        tree instance identified by MSTID"                       q" The higher part of administrative Vlan  list mapped to the spanning
        tree instance identified by MSTID"                       j" The lower part of operative Vlan list mapped to the spanning
        tree instance identified by MSTID"                       k" The higher part of operative Vlan list mapped to the spanning
        tree instance identified by MSTID"                       ""                       ""                       "The index of the Bridge Port"                       \"The current state of the Port (i.e., Disabled, Discarding ,
        Learning, Forwarding)"                       �"The value of the priority field which is contained in the
        first (in network byte order)  four bits of the (2 octet long) Port ID.
        The other octet of the Port ID is given by the value of mstiPortIndex.
        And step of 16"                      "The contribution of this port to the path cost of paths towards the
        spanning tree root which include this port. The range of path cost
        is 1..65535 for 802.1d standard, is 1..200000000 for 802.1t standard,
        and is 1..200000 for the legacy standard. "                       w"The Bridge Identifier of the Root Bridge for the port of the Spanning
         Tree instance identified by the MSTID"                       �"The path cost of the Designated Port of the segment connected to
        this port.  This value is compared to the Root Path Cost field
        in received bridge PDUs."                       }"The Bridge Identifier of the bridge which this port considers to
        be the Designated Bridge for this port's segment."                       \"The Port Identifier of the port on the Designated Bridge
        for this port's segment."                       Q"The Bridge Idnetifier of the current Master Bridge.
        Effective in CIST."                       c"The CIST path cost from the transmitting Bridge to
        the Master Bridge. Effective in CIST."                       7" Whether the port fast is enabled. Effective in CIST."                       G" Whether the port conects the point to point link. Effective in CIST."                       �" Forcing the state machine to send MST BPDUs in this manner
        can be used to test whether all legacy Bridges on a given LAN
        have been removed. Effective in CIST."                       w"The value used by the Port Transmit state machine to limit
        the maximum transmission rate. Effective in CIST."                       8"The number of received Config BPDU. Effective in CIST."                       <"The number of transimitted Config BPDU. Effective in CIST."                       5"The number of received TCN BPDU. Effective in CIST."                       9"The number of transimitted TCN BPDU. Effective in CIST."                       5"The number of received RST BPDU. Effective in CIST."                       9"The number of transimitted RST BPDU. Effective in CIST."                       5"The number of received MST BPDU. Effective in CIST."                       9"The number of transimitted MST BPDU. Effective in CIST."                       7"Clear the spanning tree statistic. Effective in CIST."                       "Set default Port path cost. "                       Y"Whether the spanning tree protocol is enabled on this port.
        Effective in CIST."                       7"Whether the root guard is enabled. Effective in CIST."                       <"Whether the loop protection is enabled. Effective in CIST."                       )"Type of BPDU which the port is sending."                      i"This object indicates whether the port has connected to a
        point-to-point link or not.  The value of the node is an operative value.
        The administrative value can be read from the node
        hwdot1sMstiStpPortPointToPoint.  If the value of
        hwdot1sMstiStpPortPointToPoint is auto, the value of this node
        should be calculated by the network topology of this port.  If the
        value of hwdot1sMstiStpPortPointToPoint is forceFalse, the value of this
        node is false.  If the value of hwdot1sMstiStpPortPointToPoint is
        forceTrue, the value of this node is true."                      k"The value of the node is an administrative value.  Value legacy means that
       the MST BPDU format is forced to legacy.  Value dot1s means that the MST BPDU format
       is forced to IEEE 802.1s.  Value auto means that the format of MST BPDU sending
       on the port is determined by the MST BPDU that the port has received.  Effective in
       CIST."                       �"The format of MST BPDU which the port is sending.  Value legacy means that the
      format of MST BPDU sending on the port is legacy.  Value dot1s means that the
      format of MST BPDU sending on the port is IEEE 802.1s.  Effective in CIST."                       �"Path cost standard of the bridge.  Value dot1d-1998 is
      IEEE 802.1d standard in 1998, value dot1t is IEEE 802.1t standard,
      and value legacy is a private legacy standard."                       *"Definition point for Mstp notifications."               e"The SNMP trap that is generated when a port turns into
         forwarding state form other state."                 j"The SNMP trap that is generated when a port turns into
         discarding state form forwarding state."                 �"The SNMP trap that is generated when the bridge is no longer
         the root bridge of the instance. Another switch with higher
         priority has already been the root bridge of the instance."                 x"The SNMP trap that is generated when a root-guard port
         receives a superior message on the relevant instance."                 n"The SNMP trap that is generated when an edged port of
         the BPDU-guard switch recevies BPDU packets."                 \"The SNMP trap that is generated when an Alternate-Port
         or Root-Port is aged out."                            