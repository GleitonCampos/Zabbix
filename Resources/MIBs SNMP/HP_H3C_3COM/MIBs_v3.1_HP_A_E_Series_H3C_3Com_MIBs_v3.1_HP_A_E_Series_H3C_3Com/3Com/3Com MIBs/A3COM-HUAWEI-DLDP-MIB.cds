y-- =====================================================================
-- Copyright (C) 2003 by HUAWEI 3COM TECHNOLOGIES. All rights reserved.
--
-- Description: HUAWEI 3COM device link detection protocol (DLDP) MIB.
-- Device Link Detection Protocol is Huawei 3Com private Layer2 protocol,
-- which is used for automatically detecting unidirectional link to
-- prevent a loop communication.
-- Reference:
-- Version: V1.1
-- History:
-- V1.0 2004-12-13 created by tangshun
-- V1.1 2006-11-24 modify SYNTAX and DEFVAL of h3cDLDPInterval by yubo
-- =====================================================================
  b"Operating state of DLDP on the port.
        This object has six defined values:
        - 'initial', which indicates that the Ethernet port does not enable DLDP.
        This status does not appear in the 'h3cDLDPPortDLDPState' object (below)
        because the port which is not enabled DLDP does not appear in
        'h3cDLDPPortDLDPTable', it appears in 'h3cDLDPPortStateTable'.
        - 'inactive', which indicates that the Ethernet port enables DLDP and
        the link status of the port is down.
        - 'active', which indicates that the Ethernet port enables DLDP and
        the link status of the port is up.
        - 'advertisement', which indicates that all neighbors of the port are
        bidirectional communication.
        - 'probe', which indicates that the port sends PDU to detect
        the communication mode between it and it's neighbors.
        - 'disable', which indicates that an unidirectional communication
        between the port and it's neighbor.

        When the user get or walk the 'h3cDLDPPortDLDPState' objects (below)
        these status will output."               �"The current state of the Ethernet port.
        This object has two defined values:
        - 'enabled', which indicates that the Ethernet port enables DLDP.
        - 'disabled', which indicates that the Ethernet port does not enable DLDP.
        "              >"The current state of the neighbor of a port.
        This object has three defined values:
        - 'unidirection', which indicates an unidirectional communication
        between the port and it's neighbor.
        - 'bidirection', which indicates a bidirectional communication
        between the port and it's neighbor.
        - 'unknown', which indicates that the port does not know
        the communication mode between it and it's neighbor.

        When the user get or walk the 'h3cDLDPNeighborState' objects (below)
        these status will output. "                                                     7"HUAWEI-3COM DLDP (Device Link Detection Protocol) MIB" �"Platform Team Huawei 3Com Technologies Co., Ltd.
         Hai-Dian District Beijing P.R. China
         Http://www.huawei-3com.com
         Zip:100085" "200412130000Z" )"The initial version of this MIB module."                       �"The work mode of DLDP.
        Normal mode means DLDP does not detect neighbor on its own initiative
        when all neighbors aged.
        Enhance mode means DLDP detects neighbor on its own initiative
        when all neighbors aged.
        "                      �"DLDP enable or disable systematically.
        This node only supports set operation.
        If setting it to true, all the fiber ports will enable DLDP and
        the agent automatically creates new rows for each port in
        h3cDLDPPortDLDPTable.
        If setting it to false, all the fiber ports will disable DLDP
        and the agent automatically destroy the corresponding rows in
        h3cDLDPPortDLDPTable"                      _"DLDP reset systematically.
        This node only supports set operation.
        If the value of h3cDLDPSystemReset is true,
        and the current state is disable,
        it will change to inactive while the port is down
        or active while the port is up.
        If h3cDLDPPortDLDPState is not disable, it does not change.
        "                       P"The interval of sending an advertisement PDU.
        unit : second
        "                       "Type of authentication mode."                      "This is the password for authentication.
        If the value of h3cDLDPAuthenticationMode is none,
        the user can not set this node.
        If the value of h3cDLDPAuthenticationMode is simple or MD5,
        the user must set this node with a string.

        When the user get or walk this node,
        it displays cipher password if h3cDLDPAuthenticationMode is MD5
        or clear password if h3cDLDPAuthenticationMode is simple
        or zero length string if h3cDLDPAuthenticationMode is none.
        "                      w"The mode of unidirectional shutdown.
        It indicates the shutdown mode when a unidirectional link happened.
        Auto mode means the port will be shut down automatically
        when DLDP detects unidirectional link.
        Manual mode means the port needs to be shut down by
        the administrator manually when DLDP detects unidirectional link.
        "                       2"The table of the Ethernet ports of a LAN switch."                       2"Information about a h3cDLDPPortDLDPTable entity."                      ("State of a port.
        If setting it to enabled, the port will enable DLDP and a new row
        will be added in h3cDLDPPortDLDPTable for this port.
        If setting it to disabled, the port will disable DLDP and the
        corresponding row will be destroyed in h3cDLDPPortDLDPTable."                       3"Table of a LAN switch's ports, which enable DLDP."                       /"The information of a port, which enable DLDP."                       l"Operating state of DLDP on the port.
        It is relational with h3cDLDPPortState and h3cDLDPLinkState."                       "The link state of the port."                      "DLDP reset systematically.
        This node only supports set operation.
        If the value of h3cDLDPPortDLDPReset is true,
        and the current state is disable,
        it will change to inactive while the port is down
        or active while the port is up.
        "                       "Table of a port's neighbors."                        "The information of a neighbor."                       '"The bridge MAC address of a neighbor."                       "The port index of a neighbor."                       "The state of a neighbor."                       ,"The aging time of a neighbor. unit: second"                               a"It will send a SNMP trap when the state of a port
        has changed to unidirectional-link ."                            