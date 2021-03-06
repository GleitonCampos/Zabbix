[-- ===========================================================
-- Copyright (C) 2003 by HUAWEI-3Com TECHNOLOGIES.  All rights reserved.
--
-- Description:  HUAWEI LAN Switch huawei-3com epon MIB
-- Reference:  IF-MIB
-- Version:  V1.7
-- History:
-- V1.0 created by liuhongxu.
--   Initial version 2006-01-10
-- V1.1 Updated by chenzhaojie
--   Add enumeration values to h3cEponUniVlanType
-- V1.2 Updated by chenzhaojie 2006-08-02
--   Add h3cEponUniOutDroppedFrames
-- V1.3 Updated by chenzhaojie 2007-05-21
--   Add h3cEponUniScalarGroup
--   Add enumeration values to h3cEponUniVlanType
--   Add h3cEponUniPortIsolate, h3cEponUniVlanConfiguration
--   h3cEponUniAutoNegotiation, h3cEponUniRestartAutoNeg,
--   h3cEponUniLinkStatus, h3cEponUniInterfaceType
--   to h3cEponUniSysManTable.
--   Add h3cEponUniPortPolicyTable, h3cEponUniMulticastTable.
--   Add h3cEponUniMulticastControlTable, h3cEponUniQosConfIndexNextTable,
--   h3cEponUniQosConfTable, h3cEponUniQosRuleTable.
-- V1.4 Updated by liuhongxu,andapeng 2007-10-13
--   Add h3cEponUniMulticastFastleave to h3cEponUniMulticastTable
--   Add h3cEponUniMulticastIndex to h3cEponUniMulticastControlTable
--   Add h3cEponUniVitualCableTest to h3cEponUniSysManTable
--   Add h3cEponUniMirrorGroupTable, h3cEponUniMirrorGroupIdNextTable
--   Add h3cEponUniMulticastCtrlInfoTable
--   Add h3cEponUniPortPolicyInboundCir,h3cEponUniPortPolicyInboundBucketDepth,
--   h3cEponUniPortPolicyInboundExtraBurst,h3cEponUniPortPolicyOutboundCir
--   to h3cEponUniPortPolicyTable.
--   Add h3cEponUniMulticastIndexNextTable
--   Modify h3cEponUniInterfaceType
-- V1.5 Updated by maguoqiang,wangke,zhaodan 2008-1-14
-- Deleted default values of these leaves:
--      h3cEponUniMdi,h3cEponUniPriority, h3cEponUniVlanType, h3cEponUniFlowControl,
--      h3cEponUniDuplex, h3cEponUniVlanVPNStatus, h3cEponUniPortIsolate,
--      h3cEponUniAutoNegotiation, h3cEponUniVitualCableTest
--   Add h3cEponUniMulticastSourceIpList to h3cEponUniMulticastControlTable
--   Add h3cEponUniMulticastResetInterval to h3cEponUniMulticastControlTable
--   Modify h3cEponUniVCTCableStatus and add 9 nodes:
--   Add    h3cEponUniVCTCableLength
--          h3cEponUniVCTImpedanceMismatch
--          h3cEponUniVCTPairSkew
--          h3cEponUniVCTPairSwap
--          h3cEponUniVCTPolaritySwap
--          h3cEponUniVCTInsertionLoss
--          h3cEponUniVCTReturnLoss
--          h3cEponUniVCTNearendCrosstalk to h3cEponUniSysManTable
-- V1.6 Updated by zoudian 2008-3-17
--   Add    h3cEponUniPortPolicyOutboundPir to h3cEponUniPortPolicyTable
--   Mofify h3cEponUniPortPolicyOutboundCir
-- V1.7 Updated by zhaodan 2008-06-04
--   Add h3cEponUniLinkUpTrap and h3cEponUniLinkDownTrap.
--   Modify the MAX-ACCESS of h3cEponUniIndex to accessible-for-notify.
-- =================================================================
                                                                 �"The objects in this MIB module are used to manage and
        display current configuration of UNI (user network interface)
        which is based on the ONU(Optical Network Unit)." �"Platform Team Hangzhou H3C Technologies Co., Ltd.
         Hai-Dian District Beijing P.R. China
         Http://www.h3c.com
         Zip:100085"                   3"This table defines several UNI system parameters."                       %"The entry of h3cEponUniSysManTable."                       `"The index value which uniquely identifies the FE(fast Ethernet)
        interface of the ONU."                       �"A textual string containing information about the interface.  This
        string should include the name of the manufacturer, the product name
        and the version of the interface hardware and software."                      �"The desired state of the user network interface. When a managed
        system initializes, all user network interfaces start with down(2)
        state. The testing(3)state indicates that no operational packets
        can be passed. As a result of either explicit management action or
        per configuration information retained by the managed system,
        h3cEponUniAdminStatus is then changed to either the up(1) or
        testing(3) states (or remains in the down(2) state)."                       �"Type of the line connected to UNI interface:
        mdi-ii(straight-through cable),
        mdi-x (crossover cable),
        mdi-auto (auto-sensing)."                       h"The priority of user network interface.  If the value is larger,
        the priority will be higher."                       "UNI vlan types."                       p"The vlan ID assigned to untagged frames or Priority-Tagged
        frames received on user network interface."                       �"PVID(port vlan ID), the vlan ID assigned to untagged frames or
        Priority-Tagged frames received on user network interface."                      u"Each octet within this value specifies a set of eight vlans,
        with the first octet specifying vlans 1 through 8, the second
        octet specifying vlans 9 through 16, etc.  Within each octet,
        the most significant bit represents the highest numbered VLAN,
        and the least significant bit represents the lowest numbered VLAN.
        Thus, each allowed vlan of the trunk port is represented by a
        single bit within the value of this object.  If that bit has a value
        of '1' then that vlan is allowed in the set of vlans.  the vlan
        is not allowed if its bit has a value of '0'."                      �"Each octet within this value specifies a set of eight vlans,
        with the first octet specifying vlans 2049 through 2056, the
        second octet specifying vlans 2057 through 2064, etc. Within
        each octet, the most significant bit represents the highest
        numbered vlan, and the least significant bit represents the
        lowest numbered vlan. Thus, each allowed vlan of the trunk port
        is represented by a single bit within the value of this object.
        If that bit has a value of '1' then that vlan is allowed in the
        set of vlans; the vlan is not allowed if its bit has a value of '0'.
        "                      ?"The value of the inbound line-rate.  measured with kbps.
        The upper limit of the line-rate is the value of
        h3cEponUniLineRateMax in the entry.  It must be multiple
        of the value of h3cEponUniLineRateStep. The default value of
        h3cEponUniLineRate is the value of h3cEponUniLineRateMax."                      @"The value of the outbound line-rate.  measured with kbps.
        The upper limit of the line-rate is the value of
        h3cEponUniLineRateMax in the entry. It must be multiple
        of the value of h3cEponUniLineRateStep.  The default value of
        h3cEponUniLineRate is the value of h3cEponUniLineRateMax."                       w"Flow control status.
        true(1)  - Flow control status enable.
        false(2) - Flow control status disable."                       "User network interface speed."                       "User network interface mode."                       d"vlan VPN status.
        true(1)  - vlan VPN status enable.
        false(2) - vlan VPN disable."                       �"Reset the counter which is about packets of the interface,
        then the counter will change to zero.  There is no sense in
        reading this object."                       t"
        enable - enable UNI port isolate setting.
        disable - disable UNI port isolate setting.
        "                      0"
        The vlan configuration of the related vlan mode.
        Transparent vlan mode: h3cEponUniVlanConfiguration is a
        zero length string.
        Tag vlan mode: the first four octets were the tag
        assigned to untagged frames received on UNI, including TPID,
        VID,CFI and priority.
        Translation vlan mode: the first four octets were the old tag
        (including TPID, VID, CFI and priority), which is replaced
        by the new tag(including TPID, VID, CFI and priority),
        the second four octets.
        "                       d"
        enable - enable auto negotiation.
        disable - disable auto negotiation.
        "                       D"
        Force to restart the auto negotiation process.
        "                       -"
        The link status of UNI.
        "                       )"
        UNI interface type.
        "                       ^"
        True(1): Virtual cable test enable.
        False(2): Virtual cable test disable."                      C"
        Get the cable status.
        Normal(1),cable is normal.
        Abnormal(2),cable is abnormal.
        AbnormalOpen(3),cable is abnormal because of open circuit.
        AbnormalShort(4),cable is abnormal because of short circuit.
        Failure(5),cable is abnormal because of testing failure.
        "                      B"
        Get the cable length.
        When h3cEponUniVCTCableStatus is normal,
        the node stands for the length from the UNI port to the port opposite.
        When h3cEponUniVCTCableStatus is abnormal,
        it stands for the lengh from the UNI port to the failure place.
        Unit:meter(m).
        "                       �"
        Get the cable impedance.
        Not-support(1),the UNI port does not support this function.
        True(2),impedance match.
        False(3),impedance mismatch."                       �"
        Get the symmetry of cable.
        If the function is not supported ,
        the default value 0 will be returned.
        Unit:nanosecond(ns).
        "                       �"
        NotSupport(1),the UNI port does not support this function.
        True(2),pair swap.
        False(3),not pair swap."                       �"
        NotSupport(1),the UNI port does not support this function.
        True(2),polarity swap.
        False(3),not polarity swap."                       �"
        If the function is not supported ,
        the default value 0 will be returned.
        Unit:decibel(db).
        "                       �"
        If the function is not supported ,
        the default value 0 will be returned.
        Unit:decibel(db).
        "                       �"
        If the function is not supported ,
        the default value 0 will be returned.
        Unit:decibel(db).
        "                       3"A list of interface counter about frames entries."                       ["An entry containing management information applicable
        to a particular interface."                       n"The total number of frames (including bad frames,
        broadcast frames, and multicast frames) received."                       �"The total number of good frames received that are
        directed to the unicast address.  Note that this
        does not include multicast and broadcast frames."                       �"The total number of good frames received that are
        directed to the broadcast address.  Note that this
        does not include multicast frames."                       �"The total number of good frames received that are
        directed to a multicast address.  Note that this number
        does not include frames directed to the broadcast address."                      I"A count of MAC Control frames received on this
        interface by the pause(flow control) operation.
        This counter does not increment when the
        interface is in a half-duplex mode.
        Discontinuities in the value of this counter can
        occur at re-initialization of the management
        system."                       ="Total count of the error frames received on this interface."                      m"The total number of frames received that
        had a length (excluding framing bits, but
        including FCS octets) of between 64 and 1518
        octets, inclusive, but had either a bad
        Frame Check Sequence (FCS) with an integral
        number of octets (FCS Error) or a bad FCS with
        a non-integral number of octets (Alignment Error)."                       �"The total number of frames received that are
        less than 64 octets long (excluding framing bits,
        but including FCS octets) and are otherwise well formed."                       �"The total number of frames received that are
        longer than 1518 octets (excluding framing bits,
        but including FCS octets) and are otherwise well formed."                       >"The total number of error frames received on this interface."                       j"The total number of frames (including bad frames,
        broadcast frames, and multicast frames) sent."                       �"The total number of good frames sent that are
        directed to the unicast address.  Note that this
        does not include multicast and broadcast frames."                       �"The total number of good frames sent that are
        directed to the broadcast address.  Note that this
        does not include multicast frames."                       �"The total number of good frames sent that are
        directed to a multicast address.  Note that this number
        does not include frames directed to the broadcast address."                      /"The total number of MAC control frames sent on this
        interface by the pause operation.  This counter does
        not increment when the interface is in a half-duplex mode.
        Discontinuities in the value of this counter can
        occur at re-initialization of the management system."                       :"The total number of error frames sent on this interface."                      �"The best estimate of the total number of collisions
        on this Ethernet segment.
        The value returned will depend on the location of the
        RMON probe.  Section 8.2.1.3 (10BASE-5) and section
        10.3.1.3 (10BASE-2) of IEEE standard 802.3 states that a
        station must detect a collision, in the receive mode, if
        three or more stations are transmitting simultaneously.  A
        repeater port must detect a collision when two or more
        stations are transmitting simultaneously.  Thus a probe
        placed on a repeater port could record more collisions
        than a probe connected to a station on the same segment
        could.  Probe location plays a much smaller role when considering
        10BASE-T.  14.2.1.4 (10BASE-T) of IEEE standard 802.3
        defines a collision as the simultaneous presence of signals
        on the DO and RD circuits (transmitting and receiving
        at the same time).  A 10BASE-T station can only detect
        collisions when it is transmitting.  Thus probes placed on
        a station and a repeater, should report the same number of
        collisions.  Note also that an RMON probe inside a repeater should
        ideally report collisions between the repeater and one or
        more other hosts (transmit collisions as defined by IEEE
        802.3k) plus receiver collisions observed on any coax
        segments to which the repeater is connected."                       �"The number of frames discarded by this port due
        to excessive transit delay through the bridge.  It
        is incremented by both transparent and source route bridges."                       �"The total number of other error frames sent on this interface.
        Other error frames means the error frames out of collision frames
        and excessive delayed frames."                       S"
        The total number of frames dropped because of buffer failure.
        "                       6"This table stores igmp information of UNI interface."                       '"The entry of h3cEponUniIgmpInfoTable."                       W"The index uniquely identifies the igmp information in current
        UNI interface."                       �"A 6-octet read-only value carrying the individual MAC address
        indicates which igmp group the UNI interface belonging to."                       g"An integer range from 1 to 4094 indicates the vlan which the igmp
        Mac address has joined in."                           ["The maximum value of the line-rate(kbps) that user network
        interface can be set."                       "The step of line-rate(kbps)."                       +"The user network interface number on ONU."                           4"
        UNI port policy configuration.
        "                       ="
        The entry of h3cEponUniPortPolicyTable.
        "                       x"
        enable - enable UNI upstream port policing.
        disable - disable UNI upstream port policing.
        "                       j"
        The committed information rate,
        ranging from 1 to 102400, measured in kbps.
        "                       �"
        The depth of the token bucket to tolerant the certain burst(CBS),
        ranging from 0 to 65535, measured in bytes.
        "                       �"
        The extra token to permit the forwarding engine to finish the packet
        being sent when the bucket depth is exhausted, ranging from 0 to 65535,
        measured in bytes.
        "                       O"
        The inbound committed information rate, measured in kbps.
        "                       �"
        The inbound depth of the token bucket to tolerant the certain burst(CBS),
        ranging from 0 to 65535, measured in bytes.
        "                       �"
        The inbound extra token to permit the forwarding engine to finish the packet
        being sent when the bucket depth is exhausted, ranging from 0 to 65535,
        measured in bytes.
        "                       _"
        The outbound committed information rate, stepped by 64, measured in kbps.
        "                       Z"
        The outbound peak information rate, stepped by 64, measured in kbps.
        "                       2"
        UNI multicast configuration.
        "                       ="
        The entry of h3cEponUniPortPolicyTable.
        "                       n"
        The allowed multicast group number that can be handled
        at the same time by UNI.
        "                       �"
        The multicast vlan list.
        The first two octets of the string represent the first VLAN ID;
        the second two octets of the string represent the second VLAN ID,
        and so on. It is a zero length string by default.
        "                       �"
        true - strip the vlan tag of multicast packet.
        false - does not strip the vlan tag of multicast packet.
        "                       y"
        true(1)  - fast leave of IGMP enable on ONU.
        false(2) - fast leave of IGMP disable on ONU.
        "                       2"
        UNI multicast configuration.
        "                       >"
        The entry of h3cEponUniTechAbilityTable.
        "                      "
        The local port capabilities of the UNI.
        Each two octets stand for a capability of UNI:
        the first two octets represent one capability and
        the second two octets represent another capability,
        and so on.
        The capabilities list:
        1 - undefined,
        2 - initializing, true ability not yet known,
        14 - 10BASE-T,
        142 - full duplex 10BASE-T,
        23 - 100BASE-T4,
        25 - 100BASE-TX,
        252 - full duplex 100BASE-TX,
        312 - PAUSE operation for full duplex links,
        313 - asymmetric PAUSE operation for full duplex links,
        314 - symmetric PAUSE operation for full duplex links,
        32 - 100BASE-T2,
        322 - full duplex 100BASE-T2,
        36 - 1000BASE-X,
        362 - full duplex 1000BASE-X,
        40 - 1000BASE-T UTP PHY,
        402 - full duplex 1000BASE-T UTP PHY,
        37 - remote fault bit 1(RF1),
        372 - remote fault bit 2(RF2),
        8029 - 802.9ISLAN-16T.
        "                       �"
        The advertised port capabilities of the UNI.
        The capabilities list references the description of h3cEponUniLocalTechAbility.
        "                       7"
        UNI multicast control parameters.
        "                       M"
        The entry of the table h3cEponUniMulticastControlTable.
        "                       ,"
        The multicast vlan ID.
        "                       �"
        The multicast address, each four octets represents a multicast address,
        the address section ranging from the first four octets to the second
        four octets, and the like.
        "                       �"
        deny - deny the multicast packet.
        permit - permit the multicast packet.
        preview - permit the multicast packet with conditions.
        "                       I"
        The limitation of multicast preview channel number.
        "                       :"
        The time slice of multicast preview.
        "                       <"
        The number of multicast preview times.
        "                       X"
        The interval between two consecutive previews, measured in minute.
        "                       ~"
        The status of this table entry. The active,
        createAndGo and the destory statuses are supported.
        "                       -"
        The index of the entry.
        "                       x"
        This list contains many source ip addresses.
        Each ip address is contained in four octets.
        "                       �"
        The interval is measured in minute.
        From the last preview limitation is reached, a customer can preview again
        after this interval is expired.
        "                       +"
        The next index table.
        "                       I"
        The entry of the table h3cEponUniQosIndexNextTable.
        "                       �"
        This object contains an appropriate value to be used for
        h3cEponUniQosConfIndex when creating rows in the
        h3cEponUniQosConfTable.
        "                       ,"
        UNI Qos configuration.
        "                       D"
        The entry of the table h3cEponUniQosConfTable.
        "                       %"
        The rule index.
        "                       �"
        This object contains an appropriate value to be used for
        h3cEponUniQosRuleIndex when creating rows in the
        h3cEponUniQosRuleTable.
        "                       H"
        The queue that the ethernet frames will be mapped.
        "                       �"
        Priority of the ethernet frames to be marked, which
        compliant with the 802.1D user priority standard.
        "                       ~"
        The status of this table entry. The active,
        createAndGo and the destory statuses are supported.
        "                       ."
        Qos sub rule of the UNI.
        "                       D"
        The entry of the table h3cEponUniQosRuleTable.
        "                       )"
        The sub rule index.
        "                      q"
        The ethernet frame selector.
        dstmac - based on destination MAC address.
        srcmac - based on source MAC address.
        ethernetpriority -  based on ethernet priority.
        vlanid - based on VLAN ID.
        ethernettype - based on ethernet type.
        dstip - based on destination IP address.
        srcip - based on source IP address.
        ipprototype - based on IP type(ipv4 or ipv6).
        ipv4tosdscp - based on IP TOS/DSCP.
        ipv6 - based IP precedence.
        srcport - based on layer 4 source port.
        dstport - based on layer 4 destination port.
        "                       L"
        The rule value based on the h3cEponUniQosRuleSelector.
        "                       ""
        MAC Address.
        "                      �"
        nervermatch - value never match.
        equal - field equal to the value.
        notequal - field not equal to the value.
        lessthanequal - field less than or equal to the value.
        greaterthanequal - field greater than or equal to the value.
        fieldexist - value is ignored if field exists.
        fieldnotexist - value is ignored if field does not exist.
        alwaysmatch - value always match.
        "                       v"
        The status of this table entry. Only active,
        createAndGo and the destory are supported.
        "                       ."
        Qos sub rule of the UNI.
        "                       B"
        The entry of the h3cEponUniMirrorGroupTable.
        "                       "Epon UNI mirror group ID."                      �"
        UNI inbound port list.
        Each octet within this value specifies a set of eight ports,
        with the first octet specifying ports 1 through 8, the second
        octet specifying ports 9 through 16, etc.  Within each octet,
        the most significant bit represents the highest numbered UNI,
        and the least significant bit represents the lowest numbered UNI.
        Thus, each UNI port is represented by a single bit within the
        value of this object.  If that bit has a value of '1' then that
        port is allowed in the set of ports.  the port is not allowed if
        its bit has a value of '0'.
        "                       h"
        UNI outnbound port list, more infomation reference h3cEponUniMirrorInboundPortList
        "                       '"
        UNI monitor port.
        "                       X"
        RowStatus, Now support three status: createAndGo, active, destroy.
        "                       X"
        The next index table, which is used by h3cEponUniMirrorGroupTable.
        "                       N"
        The entry of the table h3cEponUniMirrorGroupIdNextEntry.
        "                       �"
        This object contains an appropriate value to be used for
        h3cEponUniMirrorGroupID when creating rows in the
        h3cEponUniMirrorGroupTable.
        "                       A"
        UNI multicast information which is active .
        "                       N"
        The entry of the table h3cEponUniMulticastCtrlInfoTable.
        "                       <"
        The multicast vlan ID which is active.
        "                       <"
        The multicast address which is active.
        "                       �"
        deny - deny the multicast packet.
        permit - permit the multicast packet.
        preview - permit the multicast packet with conditions.
        "                       L"
        The number of multicast preview times which is active.
        "                       S"
        The remanent time slice of multicast preview which is active.
        "                       ]"
        The next index table, which is used by h3cEponUniMulticastControlTable.
        "                       O"
        The entry of the table h3cEponUniMulticastIndexNextEntry.
        "                       �"
        This object contains an appropriate value to be used for
        h3cEponUniMulticastIndex when creating rows in the
        h3cEponUniMulticastControlTable.
        "                               �"
        A h3cEponUniLinkUpTrap notification is sent
        when the UNI up event is detected
        and the transmitting switch is turned on.
        "                 �"
        A h3cEponUniLinkDownTrap notification is sent
        when the UNI down event is detected
        and the transmitting switch is turned on.
        "                    