5-- ==================================================================
-- Copyright (C) 2004 by  HUAWEI 3COM TECHNOLOGIES. All rights reserved.
--
-- Description: HUAWEI-3COM Lan Switch DHCP Snooping MIB
-- Reference:
-- Version: V1.2
-- History:
-- V1.0 The initial version, created by FuJiajia, 2004.12.29
-- V1.1 2006-03-08 updated by HeHangjun
--      Added h3cDhcpSnoopVlanTable
-- V1.2 2007-06-18 updated by qizhenglin
--      Added h3cDhcpSnoopSpoofServerDetected
--            h3cDhcpSnoopSpoofServerMac
--            h3cDhcpSnoopSpoofServerIP
-- ==================================================================
-- ==================================================================
--
-- Varibles and types be imported
--
-- ==================================================================
                                         :"The private mib file includes the DHCP Snooping profile." �"Platform Team Beijing Institute Huawei-3com Tech, Inc.
                Http:\\www.huawei-3com.com
                E-mail:support@huawei-3com.com"                   +"DHCP Snooping status (enable or disable)."                       �"The table containing information of DHCP clients listened by
                    DHCP snooping and it's enabled or disabled by setting
                    h3cDhcpSnoopEnable node."                       2"An entry containing information of DHCP clients."                       1"DHCP clients' IP addresses type (IPv4 or IPv6)."                       8"DHCP clients' IP addresses collected by DHCP snooping."                       9"DHCP clients' MAC addresses collected by DHCP snooping."                       <"Method of getting IP addresses collected by DHCP snooping."                       �"IRF (Intelligent Resilient Fabric) unit number via whom the clients
                    get their IP addresses. The value 0 means this device does not support IRF."                       ?"A table is used to configure and monitor port trusted status."                       @"An entry containing information about trusted status of ports."                       `"Trusted status of current port which supports both get and
                    set operation."                       c"A table is used to configure and monitor DHCP Snooping
                         status of VLANs."                       4"The entry information about h3cDhcpSnoopVlanTable."                       "Current VLAN index."                       '"DHCP Snooping status of current VLAN."                              �"To detect unauthorized DHCP servers on a network, the DHCP snooping
           device sends DHCP-DISCOVER messages through its downstream port
           (which is connected to the DHCP clients).
           If any response (DHCP-OFFER message) is received from the downstream port,
           an unauthorized DHCP server is considered present, and then the device
           sends a trap.
           With unauthorized DHCP server detection enabled, the interface sends a
           DHCP-DISCOVER message to detect unauthorized DHCP servers on the network.
           If this interface receives a DHCP-OFFER  message,  the DHCP server which
           sent it is considered unauthorized. "                     �"MAC address of the spoofing server and it is derived from
          link-layer header of offer packet. If the offer packet is relayed
          by dhcp relay entity, it may be the MAC address of relay entity.
          "                       �"IP address of the spoofing server and it is derived from
          IP header of offer packet. A tricksy host may send offer packet use
          other host's address, so this address can not always be  trust.
          "                                  