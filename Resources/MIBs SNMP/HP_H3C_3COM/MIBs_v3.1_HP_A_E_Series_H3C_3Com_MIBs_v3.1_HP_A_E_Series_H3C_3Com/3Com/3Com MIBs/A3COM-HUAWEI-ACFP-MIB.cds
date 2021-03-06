�-- ==================================================================
-- Copyright (c) 2004-2010 Hangzhou H3C Tech. Co., Ltd. All rights reserved.
--
-- Description: ACFP MIB
-- Reference:
-- Version: V1.5
-- History:
--   V1.0 2006-07-04 Created by Wang Haidong
--   V1.1 2007-03-23 Modified by Hao Chunbo
--        Delete the default value of h3cAcfpPolicyAdminStatus.
--   V1.2 2007-07-03 Modified by Hao Chunbo
--        Add a new trap node for h3cAcfpPolicyLifetime.
--   V1.3 2007-11-07 Modified by Li Yugang
--        Modify the value of h3cAcfpServerCurContextType.
--        Destroy the node of h3cAcfpRuleEstablish.
--        Add a new node for H3cAcfpPolicyDestIfFailAction.
--        Add a new node for H3cAcfpPolicyPriority.
--        Add a new node for h3cAcfpRuleTCPFlag.
--   V1.4 2007-12-19 Modified by Li Yugang
--        Modify the description of h3cAcfpPolicyRowStatus.
--        Modify the description of h3cAcfpRuleRowStatus.
--        Modify the status of h3cAcfpRuleEstablish.
--        Modify the value of h3cAcfpRuleTCPFlag.
--   V1.5 2009-11-30 Modified by Zhu Dengfeng
--        Add a new node for h3cAcfpRuleSrcIPV6Address
--        Add a new node for h3cAcfpRuleSrcPrefixLen
--        Add a new node for h3cAcfpRuleDstIPV6Address
--        Add a new node for h3cAcfpRuleDstPrefixLen
--        Add a new node for h3cAcfpRuleTrafficType
--        Add a new node for h3cAcfpRuleTypeOrLen
-- ==================================================================
                                                                         n"This MIB module defines a set of basic objects for
        configuring switches and routers to enable ACFP." �"Platform Team H3C Technologies Co., Ltd.
        Hai-Dian District Beijing P.R. China
        Http://www.h3c.com
        Zip:100085" "200607041936Z" "Initial version"                           �"When retrieved, this object returns a set of bits
        indicating the capabilities (or configuration) of the
        switch or router.  The set bit is indication that a
        router or switch can support the action for
        security rule."                       �"When retrieved, this object returns the maximum
        lifetime in seconds, that this router or switch allows
        policy rules to have."                       �"When retrieved, this object returns true(1) if the
        ACFP MIB implementation can store policy rules
        persistently.  Otherwise, it returns false(2)."                      !"In some circumstances, it's necessary that packets go to
        ACFP client with context from ACFP server.  However, the context
        perhaps is different.  h3cAcfpServerCurContextType is
        used to distinguish this difference, ACFP client may
        process distinctively."                           >"This table contains the basic information about ACFP client."                       ="This list contains the basic information about ACFP client."                        "The identifier of ACFP client."                       W"Description of the application that is running on ACFP
        client, eg. IPS, VCX."                       '"The hardware revision of ACFP client."                       3"The operating system version running ACFP client."                       0"The application version running on ACFP client"                       "IP address of ACFP client."                      +"ACFP client informs Router or switch which mode it is operating.
        Router or switch checks h3cAcfpServerInfo to see whether it is
        capable of fulfilling this function.  If not, router or switch
        generates a trap informing ACFP client such OAP mode is not
        supported."                      T"RowStatus, supports three states: createAndGo, active, destroy.
        Creation Operation Restriction:
        Node h3cAcfpClientMode must be bound while creating a row. It is
        optional for other nodes.
        ACFP module must be enabled for the server while creating a row.
        The number of rows created must not exceed upper limit.

        Modification Operation Restriction:
        Nodes that do not support modification: h3cAcfpClientMode.
        Nodes that support modification: h3cAcfpClientDescription,
        h3cAcfpClientHwVersion, h3cAcfpClientOSVersion,
        h3cAcfpClientAppVersion and h3cAcfpClientIP.
        If the row to be modified does not exist, error returns directly.

        Deletion Operation Restriction:
        If the row to be deleted does not exist, success returns directly.
        "                          q"This table lists all current policies for ACFP
        client(s).  Entries in this table are created or removed
        implicitly when entries in the h3cAcfpRuleTable are
        created or removed, respectively.  A policy entry in this
        table only exists as long as there is rule of this policy
        in the h3cAcfpRuleTable.  The table serves for listing the
        existing policies and their remaining lifetimes and for
        changing lifetimes of policies and implicitly of all policy
        members and all their member policy rules can be
        deleted by setting h3cAcfpPolicyLifetime to 0."                       5"The list contains basic information of ACFP Policy."                       -"The identifier of the Policy of ACFP client"                       {"Packet is received from this interface.  The value of this object
        contains the same value of ifIndex of ifTable."                       u"Packet is sent to this interface.  The value of this object
        contains the same value of ifIndex of ifTable."                       �"Through this interface, packet go to ACFP client from
        ACFP server.  The value of this object contains the same
        value of ifIndex of ifTable."                       �"Internal id ACFP server allocated used to map to the interface.
        ACFP server may send packet with this h3cAcfpPolicyContextID to
        ACFP client, ACFP client can make use of this h3cAcfpPolicyContextID
        and find the policy. "                       O"The value of this object indicates the desired status of the
        policy."                      �"When retrieved, this object delivers the maximum lifetime (seconds)
        of all the rules of this, i.e., of all the rows in h3cAcfpRuleTable
        that have the same values of h3cAcfpRulePolicyIndex and
        h3cAcfpClientID.  Successfully writing to this object modifies the
        lifetime of all the rules of this.  Successfully writing a value
        of 0 terminates all the rules and implicitly deletes this as soon as
        all member entries are removed from the h3cAcfpRuleTable. Note that
        after a lifetime expired, all the corresponding entry in the
        h3cAcfpRuleTable will be removed and this will be deleted
        implicitly.  Writing to this object is processed by the ACFP MIB
        implementation by choosing a lifetime value that is greater than
        or equal to zero and less than or equal to the minimum of the requested
        value and the value specified by object h3cAcfpServerMaxLifetime:

            0 <= lt_granted <= MINIMUM(lt_requested, lt_maximum)

        whereas:
        lt_granted is the actually granted lifetime by the ACFP MIB
        implementation.
        lt_requested is the requested lifetime of the ACFP client.
        lt_maximum is the value of object h3cAcfpServerMaxLifetime.
        SNMP set requests to this object may be rejected or the value of
        the object after an accepted set operation may be less than the
        value that was contained in the SNMP set request."                       8"Beginning time of this policy every day.  Eg. HH:MM:SS"                       5"Ending time of this policy every day.  Eg. HH:MM:SS"                      �"RowStatus, supports three states: createAndGo, active, destroy.
        Creation Operation Restriction:
        The client corresponding to the index h3cAcfpClientID must exist
        while creating a row.
        Nodes h3cAcfpPolicyTimeStart and h3cAcfpPolicyTimeEnd are
        bound together, and h3cAcfpPolicyTimeEnd must be greater than
        h3cAcfpPolicyTimeStart.
        The number of rows created on an incoming/outgoing interface
        cannot exceed the upper limit.
        The number of rows created cannot exceed the upper limit for each client.
        A packet matches a policy in the following order:
        - It first matches the policy with the highest priority.
        - For two policies with the same priority,
          it matches the one with the smallest client index.
        - For two policies with the same client index,
          it matches the one with the smallest policy index.

        Modification Operation Restriction:
        Nodes that do not support modification: h3cAcfpPolicyInIfIndex,
        h3cAcfpPolicyOutIfIndex, h3cAcfpPolicyDestIfIndex,
        h3cAcfpPolicyDestIfFailAction, h3cAcfpPolicyPriority.
        Nodes that support modification: h3cAcfpPolicyAdminStatus,
        h3cAcfpPolicyLifetime, h3cAcfpPolicyTimeStart and h3cAcfpPolicyTimeEnd.
        While modifying a row, if the row corresponding to the index configured
        does not exist, error returns directly.
        While modifying a node, the restriction over h3cAcfpPolicyTimeStart
        and h3cAcfpPolicyTimeEnd is the same as creating a node.

        Deletion Operation Restriction:
        If the row to be deleted does not exist, success returns directly.
        "                       m"The value of this object indicates the action of the
        policy when the destination interface failed."                       �"The value of this object indicates the priority of the
        policy.
        Priority8 is maximal priority.
        Priority1 is minimal priority."                           �"This table lists all the rules.  It is indexed by
        h3cAcfpClientID, h3cAcfpRulePolicyIndex and h3cAcfpRuleIndex.
        Entries can be deleted by writing h3cAcfpPolicyLifetime to 0."                       2"The list contains basic information of the rule."                       �"The identifier of the rules which have the same h3cAcfpPolicyIndex
        and h3cAcfpClientID.h3cAcfpRuleIndex indicates rule sequence in the
        same policy."                       �"The value of this object indicates the status of a rule.
        success : Applied rule to interface successfully.
        fail : Failed to apply rule to interface.
        "                       "The action of this rule."                       _"The rule match all packet or does not.
        true : all
        false : not all
        "                       "Source MAC of this rule."                       "Destination MAC of this rule."                       ;"Starting VLAN id of this rule.
        0 : Invalid value"                       9"Ending VLAN id of this rule.
        0 : Invalid value"                      �"The protocol-type of this rule.
        <0-255>  Protocol number
        gre      GRE tunneling(47)
        icmp     Internet Control Message Protocol(1)
        igmp     Internet Management Protocol(2)
        ip       Any IP protocol(0)
        ipinip   IP in IP tunneling(4)
        ospf     OSPF routing protocol(89)
        tcp      Transmission Control Protocol (6)
        udp      User Datagram Protocol (17)
        "                       !"Source IP address of this rule."                       6"Source IP-address wild of this rule.  Eg. 0.0.0.255."                       %"Source Port operation for this rule"                       3"Starting UDP/TCP Source Port number of this rule."                       *"Ending UDP/TCP Source Port of this rule."                       &"Destination IP address of this rule."                       :"Destination IP-address wild of this rule.  Eg. 0.0.0.255"                       *"Destination Port operation for this rule"                       8"Starting UDP/TCP Destination Port number of this rule."                       /"Ending UDP/TCP Destination Port of this rule."                      O"The value of precedence field in IP header.
        <255>                  Invalid value
        <0-7>                  value of precedence
        routine(0)             Routine precedence
        priority(1)            Priority precedence
        immediate(2)           Immediate precedence
        flash(3)               Flash precedence
        flash-override(4)      Flash Override precedence
        critical(5)            Critical precedence
        internet(6)            Network Control precedence
        network(7)             Internetwork Control precedence
        "                      �"The value of TOS field in IP header.
        <255>                  Invalid value
        <0-15>                 value of ToS (Type of Service)
        Normal(0)              normal service
        min-monetary-cost(1)   minimum monetary cost
        max-reliability(2)     maximum reliability
        max-throughput(4)      maximum throughput
        min-delay(8)           minimum delay
        "                      Z"The value of DSCP.
        <255>                  Invalid value
        <0-63>                 value of DSCP
        Be(0)                  best effort
        af11(10)               assured forwarding 11 service
        af12(12)               assured forwarding 12 service
        af13(14)               assured forwarding 13 service
        af21(18)               assured forwarding 18 service
        af22(20)               assured forwarding 20 service
        af23(22)               assured forwarding 22 service
        af31(26)               assured forwarding 31 service
        af32(28)               assured forwarding 32 service
        af33(30)               assured forwarding 33 service
        af41(34)               assured forwarding 41 service
        af42(36)               assured forwarding 42 service
        af43(38)               assured forwarding 43 service
        cs1(8)                 class selector 1 service
        cs2(16)                class selector 2 service
        cs3(24)                class selector 3 service
        cs4(32)                class selector 4 service
        cs5(40)                class selector 5 service
        cs6(48)                class selector 6 service
        cs7(56)                class selector 7 service
        ef(46)                 expedited forwarding service
        "                       �"Establish Flag.  Matches the TCP packets with the ACK
        and/or RST flag, including the TCP packets of these
        types: SYN+ACK, ACK, FIN+ACK, RST, RST+ACK."                       )"The flag of matching fragmented packet."                       ""Packet rate (Kbps) of this rule."                      ~"RowStatus, supports three states: createAndGo, active, destroy.
        Creation Operation Restriction:
        Node h3cAcfpRuleAction must be bound while creating a line.
        Nodes h3cAcfpRuleAll and h3cAcfpRuleProtocol, h3cAcfpRuleSrcIP,
        h3cAcfpRuleSrcIPMask, h3cAcfpRuleDstIP, h3cAcfpRuleSrcOp,
        h3cAcfpRuleSrcStartPort, h3cAcfpRuleSrcEndPort, h3cAcfpRuleDstIP,
        h3cAcfpRuleDstIPMask, h3cAcfpRuleDstOp, h3cAcfpRuleDstStartPort,
        h3cAcfpRuleDstEndPort, h3cAcfpRulePrecedence, h3cAcfpRuleTos,
        h3cAcfpRuleDscp, h3cAcfpRuleTCPFlag, h3cAcfpRuleFragment are
        mutually exclusive.
        Nodes h3cAcfpRuleSrcIP and h3cAcfpRuleSrcIPMask are bound together,
        otherwise, the source IP address is neglected.
        The restriction over h3cAcfpRuleDstIP and h3cAcfpRuleDstIPMask is the
        same as h3cAcfpRuleSrcIP and h3cAcfpRuleSrcIPMask.
        Nodes h3cAcfpRuleDscp and h3cAcfpRulePrecedence, h3cAcfpRuleTos are
        mutually exclusive.
        If the node h3cAcfpRuleSrcOp is bound to range(5),
        h3cAcfpRuleSrcStartPort and h3cAcfpRuleSrcEndPort must be bound together,
        and h3cAcfpRuleSrcEndPort must be greater than h3cAcfpRuleSrcStartPort.
        If the node h3cAcfpRuleSrcOp is bound to equal(1), notEqual(2),
        lessThan(3) or greaterThan(4), h3cAcfpRuleSrcStartPort must be bound
        together, and h3cAcfpRuleSrcEndPort is neglected.
        The restriction over h3cAcfpRuleDstOp, h3cAcfpRuleDstStartPort and
        h3cAcfpRuleDstEndPort is the same as h3cAcfpRuleSrcOp,
        h3cAcfpRuleSrcStartPort and h3cAcfpRuleSrcEndPort.
        If the node h3cAcfpRuleAction is bound to redirect(3) or mirror(4),
        the destination interfaces of the policy the rule belonging to must exist;
        The number of rows created cannot exceed the upper limit for each policy,
        each inbound interface and each outbound interface.

        Modification Operation Restriction:
        The row does not support modification.

        Deletion Operation Restriction
        If the row to be deleted does not exist, success returns directly.
        "                      T"TCP Flag.
        <0>       don't care for TCP flag to match packets
        <1-65535> care for TCP flag to match packets,
                  the value is combination of next list.
                  URG_VALID (1 << 13)
                  URG_SET   (1 << 5)
                  ACK_VALID (1 << 12)
                  ACK_SET   (1 << 4)
                  PSH_VALID (1 << 11)
                  PSH_SET   (1 << 3)
                  RST_VALID (1 << 10)
                  RST_SET   (1 << 2)
                  SYN_VALID (1 << 9)
                  SYN_SET   (1 << 1)
                  FIN_VALID (1 << 8)
                  FIN_SET   1

        Matches the TCP packets with the URG and/or
        ACK and/or PSH and/or RST and/or SYN and/or FIN flag,
        including the TCP packets of these
        types: SYN+ACK, ACK, FIN+ACK, RST, RST+ACK."                       #"Source IPv6 address of this rule."                       9"Source IPv6 address prefix length of this rule. Eg. 64."                       ("Destination IPv6 address of this rule."                       >"Destination IPv6 address prefix length of this rule. Eg. 64."                       t"Traffic type of this rule. When retrieved, this object
        returns a set of bits indicating the traffic type."                       �"The type or length of ethernet packet.
        For Ethernet II encapsulation, it stands for packet type.
        For 802.3 encapsulation, it stands for packet length."                           _"This notification is sent when router or switch changed
        h3cAcfpServerCurContextType."                 ?"This notification is sent when the ACFP client is registered."                 A"This notification is sent when the ACFP client is unregistered."                 C"This notification is sent when the ACFP client is not responding."                 x"This notification is sent when router or switch cannot support OAP
        mode that ACFP client wants to operate on."                ]"This notification can be generated for indicating that
        The lifetime of all member rules of the was
        changed by successfully writing to object
        h3cAcfpPolicyLifetime.  Note that this notification
        is only sent if the lifetime of a policy was changed by
        successfully writing to object h3cAcfpPolicyLifetime."                 7"This notification is sent when a new rule is created."                 3"This notification is sent when a rule is deleted."                 8"This notification is sent when rule cannot be applied."                 _"This notification is sent
         when the time of the policy existed exceeds its lifetime."                        