�-- =================================================================
-- Copyright (C) 2004 by  HUAWEI 3Com TECHNOLOGIES. All rights reserved.
--
-- Description:protocol vlan mib
-- Reference:IEEE 802.1v clause 8.6.4
-- Version: V1.3
-- History:
--     V1.0 Initial version 2004-08-18
--     V1.1 Updated version 2004-08-31
--     V1.2 2004-10-12 updated by gaolong
--          Change value of H3cvProtocolVlanProtocolType from underscores to hyphens.
--          Remove h3cProtocolVlanVlanId, h3cProtocolVlanProtocolIndex from h3cProtocolVlanProtocolGroup
--          because they are not-accessible objects.
--          Remove h3cProtocolVlanPortIndex, h3cProtocolVlanPortVlanId, h3cProtocolVlanPortProtocolId
--          from h3cProtocolVlanPortGroup because they are not-accessible objects.
--     V1.3 2005-08-31 updated by jiangjun
--          Add h3cDifferentProtocolNumAllPort object to support the maximum
--          number of different protocols that can be applied on all ports.
--          Add enum value (ipv6) to H3cvProtocolVlanProtocolType.
--          Update file format by gaolong.
-- =================================================================
  �"
            combine with H3cvProtocolVlanProtocolType.

            ethernetii(2), llc(3), raw(4), snap(5) are used when the value
            of H3cvProtocolVlanProtocolType is for layer 3 protocols.
            etype(6) is used when the value of H3cvProtocolVlanProtocolType
            is for layer 2 protocols.
            Detail information refers to DESCRIPTION part of h3cProtocolVlanProtocolTypeValue.
            "               L"
            Contains protocols both for layer3 and layer2.
            "                                     b"This MIB contains the objects for managing the protocol-based
             vlan configurations." �"Platform Team Huawei 3Com Technology Co., Ltd.
            Hai-Dian District Beijing P.R. China
            http://www.huawei-3com.com
            Zip:100085
            " "200408311938Z" +"The initial revision of this MIB module ."                   w"The maximum number of protocols that can be configured on all vlans.
            This number may vary with products."                       s"The maximum number of protocols that can be configured per vlan.
            This number may vary with products."                       t"The maximum number of protocols that can be applied on all ports.
            This number may vary with products."                       t"The maximum number of protocols that can be applied to each port.
            This number may vary with products."                       *"Protocol-based VLAN configuration table."                       *"Protocol-based VLAN configuration entry."                       
"Vlan ID."                       �"The protocol index value of a row in this table in the range
            of [0..h3cProtocolNumPerVlan-1].
            This object may not be provided during creation. In this case,
            a number is assigned by system automatically."                      E"
            Specify protocol types supported by a protocol-based VLAN.
            Now protocols supported on layer 3 are ip, ipx, at, ipv6, etc.
            Now protocols supported on layer 2 are llc, snap, ethernetii, etc.

            For details, see description of h3cProtocolVlanProtocolTypeValue.
            "                       R"
            See description of h3cProtocolVlanProtocolTypeValue.
            "                      u"
            The value of the configured protocol type.
            By default, semicolon(;) is used as a seperator between different
            parts in the content of the object.

            The relationship among h3cProtocolVlanProtocolType, h3cProtocolVlanProtocolSubType
            and h3cProtocolVlanProtocolTypeValue is as follows.

            |--------------------------------------------------------------------------------------------|
            | h3cProtocolVlan- | h3cProtocolVlan- | h3cProtocolVlanProtocolTypeValue                     |
            | ProtocolType     | ProtocolSubType  |                                                      |
            |------------------|------------------|------------------------------------------------------|
            | ip               | notused          | IP address with subnet mask in dotted decimal format.|
            |                  |                  | such as 10.10.11.12;255.255.0.0. By default,subnet   |
            |                  |                  | mask is 255.255.255.0 .                              |
            |------------------|------------------|------------------------------------------------------|
            | ipv6             | notused          | Zero length string                                   |
            |------------------|------------------|------------------------------------------------------|
            | at               | notused          | Zero length string                                   |
            |------------------|------------------|------------------------------------------------------|
            | ipx              | ethernetii       | Zero length string                                   |
            |                  | llc              |                                                      |
            |                  | raw              |                                                      |
            |                  | snap             |                                                      |
            |------------------|------------------|------------------------------------------------------|
            | mode-snap        | notused          | zero length string                                   |
            |                  |------------------|------------------------------------------------------|
            |                  | etype            | hex string like '600', which means 0x0600.           |
            |                  |                  | The range is [0x600..0xffff]                         |
            |------------------|------------------|------------------------------------------------------|
            | mode-ethernetii  | notused          | zero length string                                   |
            |                  |------------------|------------------------------------------------------|
            |                  | etype            | hex string like '600', which means 0x0600.           |
            |                  |                  | The range is [0x600..0xffff]                         |
            |------------------|------------------|------------------------------------------------------|
            | mode-llc         | notused          | the sequence of different parts is as follows.       |
            |                  |                  | [dsap value][;ssap value][dsap value;ssap value]     |
            |                  |                  | Both range is [0x00..0xff]                           |
            |                  |                  |                                                      |
            |                  |                  | For example. Suppose value of dsap and ssap are 0x09 |
            |                  |                  | and 0x0a.                                            |
            |                  |                  | If neither dsap or ssap, the string length is zero.  |
            |                  |                  | If dsap provided, the string is '09;' or '09'        |
            |                  |                  | If ssap provided, the value is ';0a'                 |
            |                  |                  | If dsap and ssap provided, the value is '09;0a'      |
            |------------------|------------------|------------------------------------------------------|
            "                       "The row status of this table."                      v"
            Protocol-based VLAN port information table.

            h3cProtocolVlanPortVlanId refers to h3cProtocolVlanVlanId
            in h3cProtocolVlanTable.

            h3cProtocolVlanPortProtocolId refers to h3cProtocolVlanProtocolIndex
            in h3cProtocolVlanTable. So if the value of h3cProtocolVlanPortVlanId
            and h3cProtocolVlanPortProtocolId have no corresponding entry in
            h3cProtocolVlanTable, set operation for this table will fail.

            Only hybrid ports are supported by this table.
            Only untagged packets are supported by this table.
            "                       I"
            Protocol-based VLAN port information entry.
            "                       f"
            The maximum number is the total number of the ports supported by device.
            " +"hwLswPortIndex in A3COM-HUAWEI-DEVICE-MIB"                     "The protocol-based VLAN ID."                       "The protocol index."                       :"Refer to the description of h3cProtocolVlanProtocolType."                       ="Refer to the description of h3cProtocolVlanProtocolSubType."                       ?"Refer to the description of h3cProtocolVlanProtocolTypeValue."                       "The row status of this table."                       M"The maximum number of different protocols that can be applied to all ports."                               1"The compliance statement for protocol vlan MIB."                   :"A group of scalar objects describing the maximum number."                 $"A group of protocol vlan protocol."                  "A group of protocol vlan port."                        