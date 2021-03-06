}-- ==================================================================
-- Copyright (C) 2002 by  HUAWEI TECHNOLOGIES. All rights reserved.
--
-- Description: HUAWEI Lan Switch Interface Management MIB
-- Reference:
-- Version: V3.1
-- History:
--      V1.0 (1) Created by Zhangshilin, 2001.06.29
--           (2) Revised by Qizhenglin, 2002.01.08
--      V1.1 2004/7/20 Add PortList and VlanIndex define
--      V1.2 2004/8/05 Add hwifEthernetIsolate and hwIsolateGroupMax
--                     by Chenshixing
--      V1.3 2004/9/08 add fabric value to hwifVLANType object and
--                     change the DESCRIPTION by chenshixing
--           2004/9/08 1.change the DESCRIPTION and the range of
--                       SYNTAX  INTEGER  from (5..100) to (1..100)
--                       in hwifMcastControl object by wangyingxia
--                     2.add the hwifPpsMcastControl object
--                       by wangyingxia
--                     3.change the status  in hwLswVlanMngObject
--                       to current by gaolong
--      V1.4 2004-10-12 updated by gaolong
--           Import TEXTUAL-CONVENTION, OBJECT-IDENTITY, Unsigned32.
--           Relocate hwLswL2InfMib MODULE-IDENTITY clause.
--           Change SYNTAX clause type of VlanIndex from INTEGER to Unsigned32.
--           Change MAX-ACCESS clause vlaue of hwifClearStat and hwifEthernetTest
--           from write-only to read-write.
--           Change value of hwifAggregateModel, hwdot1qVlanType, hwVlanInterfaceFrameType
--           and hwifEthernetMdi from underscores to hyphens.
--           Change value of hwifMacAddrLearnMode, beginning with lowercase.
--      V1.5 2004-11-15
--           Add the object hwdot1qVlanBcastSuppressionPPS by lihaijun
--           Adjust the format of the description of hwdot1qVlanBroadcastSuppression
--      V1.6 2004-12-2
--           Add the object hwGlobalBroadcastMaxPps by zhanggang
--           Add the object hwGlobalBroadcastMaxRatio by zhanggang
--           Add hwifVlanVPNStatus and hwBpduTunnelStatus by caiqiang
--           Add hwVlanInterfaceIpMethod by wangchao
--      V1.7 2005-01-22
--           Remove the content of hwLswVlan from this mib to A3COM-HUAWEI-LswVLAN-MIB
--           Remove SnmpAdminString
--      V1.8 2005-2-2
--           Add the object hwifPpsBcastDisValControl by zhangjianwei
--      V1.9 2005-03-08
--           Add hwifUniSuppressionStep, hwifPpsUniSuppressionMax, hwifMulSuppressionStep,
--           hwifPpsMulSuppressionMax, hwifUniSuppression, hwifPpsUniSuppression,
--           hwifMulSuppression, hwifPpsMulSuppression by wanghaisheng
--      V2.0 2005-06-14
--           Add the object hwifComboActivePort by majun and adjust format
--      V2.1 2005-06-30
--           Add the object hwifVlanVPNUplinkStatus, hwifVlanVPNTPID,
--           hwVlanVPNTPIDMode and hwVlanVPNTPID by hejunwei
--           Add hwifUnknownPacketDropMul, hwifUnknownPacketDropUni by wangyupeng
--           Add hwifBMbpsMulSuppressionMax, hwifBMbpsMulSuppression,
--           hwifBKbpsMulSuppressionMax, hwifBKbpsMulSuppressionStep
--           and hwifBKbpsMulSuppression by lichunyan
--           Update decription of MIB objects by gaolong
--      V2.2 2005-09-05
--           Add the object hwifIsolateGroupID, hwifisUplinkPort,
--           hwPortIsolateGroupTable, hwPortIsolateGroupEntry,
--           hwPortIsolateGroupIndex, hwPortIsolateUplinkIfIndex,
--           hwPortIsolateGroupRowStatus by huzinan
--      V2.3 2005-10-13
--           Add the object hwPortIsolateGroupDescription by hejunwei
--      V2.4 2005-11-15
--           Add the value 24000M to hwifEthernetSpeed by wanglirong
--      V2.5 2006-01-16
--           Add hwMaxMacLearnRange by zhangyinfei
--           Change the DESCRIPTION and the range of hwMaxMacLearn by zhangyinfei
--      V2.6 2006-01-03
--           Remove the value range from the definition of hwifXXBasePortIndex
--           by wangzhaoyan
--      V2.7 2006-02-11
--           Modify description of hwifXXBasePortIndex and hwifXXDevPortIndex
--           Modify description of hwifHybridTaggedVlanListLow, hwifHybridTaggedVlanListHigh,
--           hwifHybridUnTaggedVlanListLow and hwifHybridUnTaggedVlanListHigh
--           Modify some wrong format of the description
--      V2.8 2006-03-14
--           Add hwifEthernetAutoSpeedMask, hwifEthernetAutoSpeed in
--           hwethernetTable and SpeedModeFlag definition by Jin Yongfeng.
--      V2.9 2006-04-24
--           Remove value range of hwifEthernetMTU by Chenxi.
--      V3.0 2006-04-30
--           Add hwifBMbpsUniSuppressionMax, hwifBMbpsUniSuppression,
--           hwifBKbpsUniSuppressionMax, hwifBKbpsUniSuppressionStep
--           and hwifBKbpsUniSuppression by lichunyan.
--      V3.1 2006-09-27
--           hwifComboActivePort is obsoleted in hwifXXTable.
--           hwifComboPortTable is added for combo interface.
--           hwifComboActivePort is replaced with hwifComboPortCurActive.
--      V3.2 2009-04-11
--           Add hwifOutPayloadOctets, hwifInPayloadOctets, hwifInErrorPktsRate,
--           hwifInPkts, hwifInNormalPkts, hwifOutPkts by lisong.
-- ==================================================================
-- ==================================================================
--
-- Varibles and types be imported
--
-- ==================================================================
  �"A unique value, greater than zero, for each interface or
               interface sub-layer in the managed system.  It is
               recommended that values are assigned contiguously starting
               from 1.  The value for each interface sub-layer must remain
               constant at least from one re-initialization of the entity's
               network management system to the next re-initialization."              �"Each octet within this value specifies a set of eight
            ports, with the first octet specifying ports 1 through
            8, the second octet specifying ports 9 through 16, etc.
            Within each octet, the most significant bit represents
            the lowest numbered port, and the least significant bit
            represents the highest numbered port.  Thus, each port
            of the bridge is represented by a single bit within the
            value of this object.  If that bit has a value of '1'
            then that port is included in the set of ports; the port
            is not included if its bit has a value of '0'."                "Type of Negotiable Speed mode."               @"Representing the direction of dropping packets, if applicable."              �"A value used to index per-VLAN tables: values of 0 and
            4095 are not permitted; if the value is between 1 and
            4094 inclusive, it represents an IEEE 802.1Q VLAN-ID with
            global scope within a given bridged domain (see VlanId
            textual convention).  If the value is greater than 4095
            then it represents a VLAN with scope local to the
            particular agent, i.e. one without a global VLAN-ID
            assigned to it. Such VLANs are outside the scope of
            IEEE 802.1Q but it is convenient to be able to manage them
            in the same way using this MIB."                                                                 "" "" "200106290000Z" ""                   "Max ports of the slots."                       &"Max ports that this switch includes."                       ("Gvrp attributes on the VlanTrunk port."                       ("Gvrp attributes on the VlanTrunk port."                       *"Index number of the VLANTrunk interface."                      )"GVRP registration information
            normal:     This is the default configuration. Allow create, register
                        and unregister vlans dynamiclly at this port.
            fixed:      Aallow create and register vlan manually at this port.
                        Prevent from unregistering vlans or registering known
                        vlans of this port at another trunk port.
            forbidden:  Unregister all vlans but vlan 1, forbid to create or
                        register any other vlans at this port."                      "Each octet within this value specifies a set of eight
                    VLANs, with the first octet specifying VLANs 1 through
                    8, the second octet specifying VLANs 9 through 16, etc.
                    Within each octet, the most significant bit represents
                    the highest numbered VLAN, and the least significant bit
                    represents the lowest numbered VLAN. Thus, each actually
                    passed VLAN of the trunk port is represented by a single
                    bit within the value of this object. If that bit has a
                    value of '1' then that VLAN is actually passed in the set
                    of VLANs; the VLAN is not actually passed if its bit has
                    a value of '0'."                      "Each octet within this value specifies a set of eight
                    VLANs, with the first octet specifying VLANs 2049 through
                    2056, the second octet specifying VLANs 2057 through 2064,
                    etc. Within each octet, the most significant bit represents
                    the highest numbered VLAN, and the least significant bit
                    represents the lowest numbered VLAN. Thus, each actually
                    passed VLAN of the trunk port is represented by a single
                    bit within the value of this object. If that bit has a
                    value of '1' then that VLAN is actually passed in the set
                    of VLANs; the VLAN is not actually passed if its bit has
                    a value of '0'."                      �"Each octet within this value specifies a set of eight
                    VLANs, with the first octet specifying VLANs 1 through
                    8, the second octet specifying VLANs 9 through 16, etc.
                    Within each octet, the most significant bit represents
                    the highest numbered VLAN, and the least significant bit
                    represents the lowest numbered VLAN. Thus, each allowed
                    VLAN of the trunk port is represented by a single bit
                    within the value of this object. If that bit has a value
                    of '1' then that VLAN is allowed in the set of VLANs;
                    the VLAN is not allowed if its bit has a value of '0'."                      �"Each octet within this value specifies a set of eight
                    VLANs, with the first octet specifying VLANs 2049 through
                    2056, the second octet specifying VLANs 2057 through 2064,
                    etc. Within each octet, the most significant bit represents
                    the highest numbered VLAN, and the least significant bit
                    represents the lowest numbered VLAN. Thus, each allowed
                    VLAN of the trunk port is represented by a single bit within
                    the value of this object. If that bit has a value of '1'
                    then that VLAN is allowed in the set of VLANs; the VLAN is
                    not allowed if its bit has a value of '0'."                        "Ethernet port attribute table."                       *"Entries of Ethernet port attribute table"                       "Ethernet interface mode."                        "MTU on the Ethernet interface."                       "Ethernet interface speed."                       �"Type of the line connected to the port.
            MDI-II (straight-through cable): 1
            MDI-X (crossover cable): 2
            MDI-AUTO (auto-sensing): 3"                       �"The maximum number of MAC addresses that the port can learn.
            The value -1 means that the number of Mac addresses that the port
            can learn is unlimited."                       �"This object indicates if the interface is allowed to learn mac address.
            eanbled(1) means the interface can learn mac address, otherwise disabled(2)
            can be set."                       �"Test this interface.
            The actual testing will be different according to products.
            Read operation not supported."                       �"Status indicates mac address learn mode of the interface.
            IVL(1) means independent VLAN learning.
            SVL means shared VLAN learning."                       o"Set flow interval of the ethernet.
            The NMS should set value to integer which is a multiple of 5."                      "Isolate group means that all ports in the same isolate group can not
            send and receive packets each other.
            Each octet within this value specifies a set of eight isolate groups,
            with the first octet specifying isolate groups 1 through 8,  the second
            octet specifying isolate groups 9 through 16, etc. Within each octet,
            the leftmost bit is the first bit.
            the first bit represents the lowest numbered isolate group, and the
            last bit represents the highest numbered isolate group. one port can
            belong to more than one isolate group.
            Thus, each isolate group is represented by a single bit within the
            value of this object.
            If that bit has a value of '1', then that isolate group includes this port;
            the port is not included if its bit has a value of '0'.
            for example, the first octet is '10000100' means that the port is
            included in the isolate group 1 and isolate group 6."                       "Vlan VPN enable status."                       "Vlan VPN uplink status."                       �"Port based Vlan VPN TPID(Tag Protocol Indentifier), default value
            is 0x8100.
            Please refer to hwVlanVPNTPIDMode to get more information."                       n"Isolate group identifier. Value zero means this interface does not
            belong to any isolate group."                       -"Ethernet uplink status, default value is 2."                      4"This object specifies which kinds of speed mode can be negotiated.
            Each bit corresponds to a kind of speed mode.

            If the value of a bit is '1', it means the corresponding speed mode
            is negotiable on the port. Otherwise the negotiation for that
            kind of speed mode is not supported on this port. If there are
            several negotiable speed modes, all bits for them  are '1'.
            For example, if the speed mode 's10M' and 's1000M' can be negotiable,
            the value of this object is 0xA0."                      0"This object indicates which kinds of speed mode are negotiable
            on this port.

            Only when a bit of hwifEthernetAutoSpeedMask is '1', the corresponding
            bit of this object can be set to '1', indicating the corresponding
            speed mode is negotiable.

            For example, if the value of hwifEthernetAutoSpeedMask is 0xA0,
            which indicates speed mode 's10M' and 's1000M' are negotiable,
            the possible value of this object should be one of the four values
            (0x00, 0x20, 0x80 and 0xA0).

            If the value of hwifEthernetSpeed is not 'auto', the value of this
            object is insignificant and should be ignored. The value length of
            this object should be as long as that of hwifEthernetAutoSpeedMask."                       �"Max isolate group that this device support, the value is zero
            means that the device does not support isolate group."                       �"The global max packets per second. When it is set, the value of
            BroadcastMaxPps in all ports will be changed to that setting."                       �"The global max-ratio of broadcast from 0 to 100 percent.
            When it is set, the value of BroadcastMaxRatio in all ports
            will be changed to that setting."                       "Bpdu tunnel enable status."                      �"Vlan VPN TPID mode.

            The value 'port-based' means VLAN VPN TPID value would be set based
            on port via hwifVlanVPNTPID. In this situation, hwVlanVPNTPID is
            meaningless and always return 0x8100.

            The value 'global' means VLAN VPN TPID value should be set globally
            via hwVlanVPNTPID. In this situation, hwifVlanVPNTPID in hwethernetTable
            has the same value with hwVlanVPNTPID."                       W"Global Vlan VPN TPID(Tag Protocol Indentifier), default value
            is 0x8100."                        "Isolate Group attribute table."                       '"The entry of hwPortIsolateGroupTable."                       �"Port isolate group identifier.
            The index of the hwPortIsolateGroupTable.
            The value ranges from 1 to the limit of isolate group quantity."                       '"Index number of the uplink interface."                       &"Current operation status of the row."                       F"Port isolate group description, default value is zero-length string."                       ;"The maximum number of MAC address that the port supports."                           6"Extended Huawei private interface information table."                       A"Entries of extended Huawei private interface information table."                       �"Whether it is the unbound port. (true indicates that the port is
            the main port of the aggregation or the port does not participate
            in the aggregation.)"                       %"Whether it is a physical interface."                       |"Whether it is the aggregated port. (if the port participates
                    in the aggregation, this value is true.)"                       "Whether it is a mirror port."                       �"port vlan types.
            hybrid (3) port can carry multiple VLANs.
            If fabric function is supported, fabric(4) means the port is
            a fabric port."                       �"Broadcast storm suppression with the step length of 1,
            ranging from 1 to 100 percent.
            In some products the step is 5, ranging from 5 to 100."                       "Flow control status."                       *"Whether to filter by source MAC address."                       :"Clear all port statistics. Read operation not supported."                       \"Index number of the port and the first port index of the
                    device is 1."                       "Device index of the port."                       �"The broadcast suppression with pps(packet per second) type.
            The max value is determined by the port type and product."                       �"Control the port's pps(packet per second) broadcast suppression.
            When the port is enabled, its pps broadcast suppression value is the
            global disperse value, and when disabled, it doesn't suppress broadcast."                       0"The step of unicast suppression in ratio mode."                       _"The max pps(packet per second) value of unicast suppression
                    in pps mode."                       2"The step of multicast suppression in ratio mode."                       a"The max pps(packet per second) value of multicast suppression
                    in pps mode."                       �"The unicast suppression with the ranging from 1 to 100 percent
            in ratio mode.
            The step is determined by hwifUniSuppressionStep."                       "The unicast suppression in pps(packet per second) mode.
            The max value is determined by hwifPpsUniSuppressionMax."                       �"The multicast suppression with ranging from 1 to 100 percent
            in ratio mode.
            The step is determined by hwifMulSuppressionStep."                       �"The multicast suppression in pps(packet per second) mode.
            The max pps value is determined by hwifPpsMulSuppressionMax."                       !"Active port on combo interface."                       {"The maximum value of the multicast suppression with bandwidth-based(Mbps)
                that a port can be configured."                      ~"With bandwidth-based multicast suppression, the bandwidth is measured
                in Mbps.
                The upper limit of the multicast suppession with bandwidth-based(Mbps)
                is the value of hwifBMbpsMulSuppressionMax in the entry.
                The default value of hwifBMbpsMulSuppression is the value of
                hwifBMbpsMulSuppressionMax."                       {"The maximum value of the multicast suppression with bandwidth-based(Kbps)
                that a port can be configured."                       ?"The step of multicast suppression with bandwidth-based(Kbps)."                      "With bandwidth-based multicast suppression, the bandwidth
                is measured in Kbps.
                The upper limit of the multicast suppession with bandwidth-based(Kbps)
                is the value of hwifBKbpsMulSuppressionMax in the entry.
                The value of hwifBKbpsMulSuppression must be multiple of the
                value of hwifBKbpsMulSuppressionStep.
                The default value of hwifBKbpsMulSuppression is the value of
                hwifBKbpsMulSuppressionMax."                      ;"Control the port's unknown-multicast packets drop. When
                     inbound direction is enabled on this port, the port will
                     drop unknown-multicast packets in inbound direction. When
                     outbound direction is enabled on this port, the port will
                     drop unknown-multicast packets in outbound direction. When
                     both directions are enabled on this port, the port will
                     drop unknown-multicast packets in both inbound and outbound
                     directions."                      3"Control the port's unknown-unicast packets drop. When
                     inbound direction is enabled on this port, the port will
                     drop unknown-unicast packets in inbound direction. When
                     outbound direction is enabled on this port, the port will
                     drop unknown-unicast packets in outbound direction. When
                     both directions are enabled on this port, the port will
                     drop unknown-unicast packets in both inbound and outbound
                     directions."                       �"
            The maximum value of the unicast suppression with bandwidth-based
            (Mbps) that a port can be configured."                      t"
            With bandwidth-based Unicast suppression, the bandwidth is measured
            in Mbps.
            The upper limit of the unicast suppession with bandwidth-based(Mbps)
            is the value of hwifBMbpsUniSuppressionMax in the entry.
            The default value of hwifBMbpsUniSuppression is the value of
            hwifBMbpsUniSuppressionMax."                       �"
            The maximum value of the unicast suppression with bandwidth-based
            (Kbps) that a port can be configured."                       K"
            The step of unicast suppression with bandwidth-based(Kbps)."                      �"
            With bandwidth-based unicast suppression, the bandwidth
            is measured in Kbps.
            The upper limit of the unicast suppession with bandwidth-based(Kbps)
            is the value of hwifBKbpsUniSuppressionMax in the entry.
            The value of hwifBKbpsUniSuppression must be multiple of the
            value of hwifBKbpsUniSuppressionStep.
            The default value of hwifBKbpsUniSuppression is the value of
            hwifBKbpsUniSuppressionMax."                       :"
            The actual output octets of the interface."                       9"
            The actual input octets of the interface."                       C"
            The rate of inbound error packets on the interface."                       @"
            The number of packets received on the interface."                       G"
            The number of normal packets received on the interface."                       <"
            The number of packets sent on the interface."                       %"Port aggregation information table."                       %"Port aggregation information table."                       +"Index number of the main aggregated port."                       "Aggregation group name."                       "Portlist of a aggregating."                       -"Load sharing mode for the port aggregation."                       &"Current operation status of the row."                       ""Hybrid-port configuration table."                       ""Hybrid-port configuration table."                       "Index number of Hybrid-port."                      �"Each octet within this value specifies a set of eight
                    VLANs, with the first octet specifying VLANs 1 through
                    8, the second octet specifying VLANs 9 through 16, etc.
                    Within each octet, the most significant bit represents
                    the highest numbered VLAN, and the least significant bit
                    represents the lowest numbered VLAN. Thus, each tagged VLAN
                    of the hybrid port is represented by a single bit within
                    the value of this object. If that bit has a value of '1'
                    then that VLAN is tagged in the set of VLANs; the VLAN
                    is not tagged if its bit has a value of '0'."                      �"Each octet within this value specifies a set of eight
                    VLANs, with the first octet specifying VLANs 2049 through
                    2056, the second octet specifying VLANs 2057 through 2064,
                    etc. Within each octet, the most significant bit represents
                    the highest numbered VLAN, and the least significant bit
                    represents the lowest numbered VLAN. Thus, each tagged VLAN
                    of the hybrid port is represented by a single bit within
                    the value of this object. If that bit has a value of '1'
                    then that VLAN is tagged in the set of VLANs; the VLAN
                    is not tagged if its bit has a value of '0'."                      �"Each octet within this value specifies a set of eight
                    VLANs, with the first octet specifying VLANs 1 through
                    8, the second octet specifying VLANs 9 through 16, etc.
                    Within each octet, the most significant bit represents
                    the highest numbered VLAN, and the least significant bit
                    represents the lowest numbered VLAN. Thus, each untagged
                    VLAN of the hybrid port is represented by a single bit
                    within the value of this object. If that bit has a value
                    of '1' then that VLAN is untagged in the set of VLANs; the
                    VLAN is not untagged if its bit has a value of '0'."                      �"Each octet within this value specifies a set of eight
                    VLANs, with the first octet specifying VLANs 2049 through
                    2056, the second octet specifying VLANs 2057 through 2064,
                    etc. Within each octet, the most significant bit represents
                    the highest numbered VLAN, and the least significant bit
                    represents the lowest numbered VLAN. Thus, each untagged
                    VLAN of the hybrid port is represented by a single bit
                    within the value of this object. If that bit has a value of
                    '1' then that VLAN is untagged in the set of VLANs; the VLAN
                    is not untagged if its bit has a value of '0'."                       "Combo-port table."                       ""The entry of hwifComboPortTable."                       �"The combo-port interface index. Its value is the same as the value
            of ifIndex in ifTable, but only includes indexes of the combo-port
            interfaces."                      F"Current active interface of combo interfaces. The value 'fiber'
            means the interface with fiber connector of the pair of combo-port
            interfaces is active. The value 'copper' means the interface with
            copper connector of the pair is active. The value 'na' means not
            supported."                                      