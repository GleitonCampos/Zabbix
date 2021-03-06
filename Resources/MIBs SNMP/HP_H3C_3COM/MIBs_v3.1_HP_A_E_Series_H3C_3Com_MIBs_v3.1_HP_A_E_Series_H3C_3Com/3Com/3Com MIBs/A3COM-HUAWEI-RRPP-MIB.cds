�-- ==================================================================
-- Copyright (C) 2002 by HUAWEI-3COM TECHNOLOGIES. All rights reserved.
--
-- Description:  HUAWEI-3COM LAN Switch RRPP MIB
-- Reference:
-- Version: V1.4
-- History:
-- V1.0 2004-12-02 Created by XueCong
-- V1.1 2006-12-21 Modified by XuPengfei
--     Add objects: h3cRrppPortRXEdgeHello, h3cRrppPortRXMajorFault,
--     h3cRrppPortTXEdgeHello, h3cRrppPortTXMajorFault, h3cRrppMajorFault.
-- V1.2 2007-03-01 Modified by ZhouXiaodong
--     Modify the description of h3cRrppMajorFault.
--     Adjust file format.
-- V1.3 2007-04-26 Modified by GuCe
--     Add objects: h3cRrppDomainInstanceListLow, h3cRrppDomainInstanceListHigh.
-- V1.4 2007-06-18 Modified by SongJianyong
--     Modify the description of h3cRrppDomainInstanceListLow and
--     h3cRrppDomainInstanceListHigh.
--     Add objects: h3cRrppDomainProtectVlanListLow,
--     h3cRrppDomainProtectVlanListHigh, h3cRrppProtectVlanConfigMode.
-- ==================================================================
-- ==================================================================
--
-- Variables and types be imported
--
-- ==================================================================
   '"A simple status value for the object."                                     "The RRPP (Rapid Ring Protection protocol) provides
        fast protection switching to layer 2 switches
        interconnected in an Ethernet ring topology.  When
        a link in the ring breaks, the RRPP can recover the
        data path quickly.  Its protection switching is
        similar to what can be achieved with the Spanning
        Tree Protocol (STP), but the converging time is less
        than a second after link failure.
        This MIB defines management information used on
        products which support RRPP." �"Platform Team Huawei 3Com Technologies Co., Ltd.
         Hai-Dian District Beijing P.R. China
         Http://www.huawei-3com.com
         Zip:100085"                   8"Indicating whether the RRPP is enabled on this switch."                      ,"Password configured for RRPP nodes to identify the validity
        of a link-down message.  This value must be set together with
        h3cRrppPasswordType which indicates whether this value can
        be got.  This value can not be set alone without configuring
        h3cRrppPasswordType."                       �"Indicating whether the h3cRrppPassword can be got.
        simple(1):h3cRrppPassword can be got.
        cipher(2):h3cRrppPassword can not be got.
        This value can not be set alone without configuring
        h3cRrppPassword."                      #"Indicating the mode in which the protected VLANs of an RRPP
        domain are configured. The value 'vlan' indicates that
        h3cRrppDomainProtectVlanListLow and h3cRrppDomainProtectVlanListHigh
        can be used for setting protected VLANs, while
        h3cRrppDomainInstanceListLow and h3cRrppDomainInstanceListHigh
        cannot. By contraries, the value 'instance' indicates
        that 3cRrppDomainInstanceListLow and h3cRrppDomainInstanceListHigh
        can be used for setting protected VLANs while the other two cannot."                           ["A table containing information about configurations
        and status of a RRPP domain."                       2"Detailed information of a specified RRPP domain."                       �"An index uniquely identifies a RRPP domain,
        which ranges from 1~16.
        This value can't be modified after created."                      "Index of the control VLAN specified to a domain.
        The value 65535 indicates the control VLAN has
        not been configured.
        The VLAN assigned to a RRPP Domain must not have
        been created.
        This value can't be modified after created."                       �"The value indicates the interval between two hello
        packets sent by master-node, and its unit is second.
        The value ranges from 1s~10s."                      6"The expiration value of the fail-period timer and its unit
        is second.  If not receiving hello packets before this
        expires, the master-node considers the ring is broken.
        The value of this node ranging from 3s~30s must not be
        less than triple h3cRrppDomainHelloTime's value."                       �"This object is responsible for managing the creation,
        deletion and modification of rows, which support active
        status and CreatAndGo, destroy operation."                      �"Each octet contained in this value specifies an eight-instance
        group, with the first octet specifying instances 0 through 7,
        the second octet specifying instances 8 through 15, and so on.
        Within each octet, the most significant bit represents the
        highest numbered instance, and the least significant bit represents
        the lowest numbered instance. Thus, each instance to which the
        protected VLANs of an RRPP domain are mapped corresponds to a
        bit within the value of this object. A bit with a value of '1'
        indicates that the VLANs mapped to the instance are protected
        VLANs of the RRPP domain. By contraries, the VLANs mapped to the
        instance are not protected VLANs if the corresponding bit has a
        value of '0'. The value of this object must be set with
        h3cRrppDomainInstanceListHigh at the same time when a SET
        operation is performed.
        This object is valid only when the value of h3cRrppProtectVlanConfigMode
        is 'instance'. If this object is invalid, it does not respond to SET
        operation, and it returns all '0' bits in response to GET operation."                      �"Each octet contained in this value specifies an eight-instance
        group, with the first octet specifying instances 2048 through
        2055, the second octet specifying instances 2056 through 2063,
        and so on. Within each octet, the most significant bit represents
        the highest numbered instance, and the least significant bit
        represents the lowest numbered instance. The most significant bit
        of the last octet is invalid. Thus, each instance to which the
        protected VLANs of an RRPP domain are mapped corresponds to a bit
        within the value of this object. A bit with a value of '1' indicates
        that the VLANs mapped to the instance are protected VLANs of the
        RRPP domain. By contraries, the VLANs mapped to the instance are
        not protected VLANs if the corresponding bit has a value of '0'.
        The value of this object must be set with h3cRrppDomainInstanceListLow
        at the same time when a SET operation is performed.
        This object is valid only when the value of h3cRrppProtectVlanConfigMode
        is 'instance'. If this object is invalid, it does not respond to SET
        operation, and it returns all '0' bits in response to GET operation."                      {"Each octet contained in this value specifies an eight-VLAN group,
        with the first octet specifying VLANs 1 through 7, the second
        octet specifying VLANs 8 through 15, and so on. Within each octet,
        the most significant bit represents the highest numbered VLAN, and
        the least significant bit represents the lowest numbered VLAN.
        The least significant bit of the first octet is invalid. Thus,
        each protected VLAN of an RRPP domain corresponds to a bit within
        the value of this object. A bit with a value of '1' indicates that
        the corresponding VLAN is a protected VLAN of the RRPP domain.
        By contraries, the VLAN is not a protected VLAN if the
        corresponding bit has a value of '0'. The value of this object
        must be set with h3cRrppDomainProtectVlanListHigh at the same time
        when a SET operation is performed.
        This object is valid only when the value of h3cRrppProtectVlanConfigMode
        is 'vlan'. If this object is invalid, it does not respond to SET
        operation, and it returns all '0' bits in response to GET operation."                      �"Each octet contained in this value specifies an eight-VLAN group,
        with the first octet specifying VLANs 2048 through 2055, the
        second octet specifying VLANs 2056 through 2063, and so on. Within
        each octet, the most significant bit represents the highest
        numbered VLAN, and the least significant bit represents the lowest
        numbered VLAN. The most significant bit of the last octet is
        invalid. Thus, each protected VLAN of an RRPP domain corresponds
        to a bit within the value of this object. A bit with a value of '1'
        indicates that the corresponding VLAN is a protected VLAN of the
        RRPP domain. By contraries, the VLAN is not a protected VLAN if
        the corresponding bit has a value of '0'. The value of this object
        must be set with h3cRrppDomainProtectVlanListLow at the same time
        when a SET operation is performed.
        This object is valid only when the value of h3cRrppProtectVlanConfigMode
        is 'vlan'. If this object is invalid, it does not respond to SET
        operation, and it returns all '0' bits in response to GET operation."                       Y"A table containing information about configurations
        and status of a RRPP Ring."                       0"Detailed information of a specified RRPP Ring."                       �"An index uniquely identifies a RRPP Ring,
        which ranges from 1~64.
        This value can't be modified after created."                      "Indicating whether the RRPP is enabled on this Ring.
        NOTE: If major-ring and sub-ring(s) of a domain
        coexist on a switch, major-ring must be enabled
        before sub-ring is enabled.  And sub-ring must be
        disabled before major-ring is disabled."                       �"As both h3cRrppEnableStatus and h3cRrppRingEnableStatus
        are enabled, the ring is activated.  Whereas either of
        the two items is disabled, the ring is inactive."                       {"The status (i.e. unknown, health or fault) of the Ethernet
        ring.
        This is valid only on the master-node."                      "There are four RRPP node modes for the switch on a RRPP
        ring, such as master, transit, edge and assistant-edge.
        Each RRPP ring has a single designated master-node.  All
        other nodes except edge-node and assistant-edge-node on
        that ring are referred to as transit-nodes.
        The node mode of edge and assistant-edge should be
        configured only on sub-ring.  When there is a common link
        between a sub-ring and its major-ring, the node mode of
        the sub-ring must be edge or assistant-edge, and they must
        be configured in pairs.
        If node mode is designated as edge or assistant-edge,
        several points should be noticed:
        Major-ring must be created before a sub-ring is created;
        Major-ring can't be deleted unless all its sub-rings are
        deleted;
        The node mode of the switch on major-ring must be
        transit;
        Major-ring and sub-ring must have only a common port.
        This value can't be modified after created."                      "If the switch is a master-node or transit-node, this value
        is the primary port ifIndex; otherwise, if the switch is a
        edge-node or assistant-edge-node, this value is the common
        port ifIndex.
        This value can't be modified after created."                      "If the switch is a master-node or transit-node, this value
        is the secondary port ifIndex; otherwise, if the switch is
        an edge-node or assistant-edge-node, this value is the edge
        port ifIndex.
        This value can't be modified after created."                       �"Level of a ring.  This field should be set 1 on major-ring
        and 2 on the sub-ring.
        This value can't be modified after created."                      I"This object is responsible for managing the creation,
        deletion and modification of rows, which support active
        status and CreatAndGo, destroy operation.
        To create a new row, h3cRrppRingNodeMode,
        h3cRrppRingPrimaryPort, h3cRrppRingSecondaryPort and
        h3cRrppRingLevel must be specified."                       Y"A table containing information about configurations and
        status of a RRPP port."                       0"Detailed information of a specified RRPP port."                       "ifIndex of the port."                       U"The RRPP role of the port.
        (i.e. primary, secondary, common or edge port)."                       N"State of RRPP port, including unknown, unblocked, blocked
        and down."                       J"The statistics of illegal RRPP packets received from
        this port."                       U"The statistics of hello packets received from
        this port on specified ring."                       W"The statistics of link-up packets received
        from this port on specified ring."                       Y"The statistics of link-down packets received
        from this port on specified ring."                      "The statistics of common-flush packets received from
        this port on specified ring.
        Instruction
        When master-node receives valid link-down packets
        or link-up packets, it will send common-flush packets,
        instructing the other nodes on the ring to flush their
        forwarding database.
        When the nodes except master-node receive common-flush,
        they will flush forwarding database.  If there is any
        port blocked on that node, it won't be unblocked."                      "The statistics of complete-flush packets received
        from this port on specified ring.
        Instruction
        When the ring recovers, master-node will receive its own
        hello packets.  It will send complete-flush packets,
        instructing the other nodes on the ring to flush their
        forwarding database.
        When the nodes except master-node receive complete-flush,
        they will flush forwarding database.  If there is any port
        blocked on that node, it will be unblocked."                       Q"The statistics of hello packets sent from
        this port on specified ring."                       S"The statistics of link-up packets sent
        from this port on specified ring."                       U"The statistics of link-down packets sent
        from this port on specified ring."                       X"The statistics of common-flush packets sent from
        this port on specified ring."                       Z"The statistics of complete-flush packets sent
        from this port on specified ring."                      "The statistics of edge-hello packets received
        from this port on specified ring.
        When edge-node sends edge-hello packets,
        assistantEdge-node will receive its own edge-hello
        packets from the common link and the master ring."                      �"The statistics of major-fault packets received
        from this port on specified ring.
        When assistantEdge can't receive edge-hello packets
        in the specified fault-time,
        assistantEdge-node will send its own major-fault
        packets from the edge port around the sub ring.
        Edge-node will receive the major-fault packets from
        its edge port. Then Edge-node will block its edge port."                       V"The statistics of edge-hello packets sent
        from this port on specified ring."                       W"The statistics of major-fault packets sent
        from this port on specified ring."                           b"Trap message is generated by master-node on
        the ring when the ring recovers from fault."                 T"Trap message is generated by master-node on
        the ring when the ring fails."                 }"Trap message is generated by master-node when
        it detects there are more than one master-node
        on the ring."                 e"Trap message is generated by edge-node or assistant-edge-node
        when it detects major fault."                        