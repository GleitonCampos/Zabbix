     +"The state of the Churn Detection machine."               !"The Actor or Partner Key value."              s"Each octet within this value specifies a set of eight
        ports, with the first octet specifying ports 1 through
        8, the second octet specifying ports 9 through 16, etc.
        Within each octet, the most significant bit represents
        the lowest numbered port, and the least significant bit
        represents the highest numbered port.  Thus, each port
        of the bridge is represented by a single bit within the
        value of this object.  If that bit has a value of '1'
        then that port is included in the set of ports; the port
        is not included if its bit has a value of '0'."               5"The Actor and Partner State values from the LACPDU."                                                                                     E"The Link Aggregation module for managing IEEE Std
        802.3ad." )" stds-802-3-trunking@majordomo.ieee.org"                       h"A table that contains information about every
        Aggregator that is associated with this System." "IEEE 802.3 Subclause 30.7.1"                     a"A list of the Aggregator parameters. This is indexed
        by the ifIndex of the Aggregator."                       �"The unique identifier allocated to this Aggregator by
        the local System.  This attribute identifies an
        Aggregator instance among the subordinate managed
        objects of the containing object.
        This value is read-only." !"IEEE 802.3 Subclause 30.7.1.1.1"                     c"A 6-octet read-only value carrying the individual
       MAC address assigned to the Aggregator." !"IEEE 802.3 Subclause 30.7.1.1.9"                     j"A 2-octet read-write value indicating the priority
        value associated with the Actor's System ID." !"IEEE 802.3 Subclause 30.7.1.1.5"                    2"A 6-octet read-write MAC address value used as a unique
        identifier for the System that contains this Aggregator.
        NOTE-From the perspective of the Link Aggregation
        mechanisms described in Clause 43, only a single
        combination of Actor's System ID and System Priority are
        considered, and no distinction is made between the
        values of these parameters for an Aggregator and the
        port(s) that are associated with it; i.e., the protocol
        is described in terms of the operation of aggregation
        within a single System. However, the managed objects
        provided for the Aggregator and the port both allow
        management of these parameters. The result of this is to
        permit a single piece of equipment to be configured by
        management to contain more than one System from the
        point of view of the operation of Link Aggregation. This
        may be of particular use in the configuration of
        equipment that has limited aggregation capability (see
        43.6)." !"IEEE 802.3 Subclause 30.7.1.1.4"                     �"A read-only Boolean value indicating whether the
        Aggregator represents an Aggregate (`TRUE') or
        an Individual link (`FALSE')." !"IEEE 802.3 Subclause 30.7.1.1.6"                    4"The current administrative value of the Key for the
        Aggregator. The administrative Key value may differ from
        the operational Key value for the reasons discussed in
        43.6.2. This is a 16-bit, read-write value. The meaning
        of particular Key values is of local significance." !"IEEE 802.3 Subclause 30.7.1.1.7"                    0"The current operational value of the Key for the
        Aggregator. The administrative Key value may differ from
        the operational Key value for the reasons discussed in
        43.6.2.  This is a 16-bit read-only value. The meaning
        of particular Key values is of local significance." !"IEEE 802.3 Subclause 30.7.1.1.8"                    U"A 6-octet read-only MAC address value consisting of the
        unique identifier for the current protocol Partner of
        this Aggregator. A value of zero indicates that there is
        no known Partner. If the aggregation is manually
        configured, this System ID value will be a value
        assigned by the local System." ""IEEE 802.3 Subclause 30.7.1.1.10"                     �"A 2-octet read-only value that indicates the priority
        value associated with the Partner's System ID. If the
        aggregation is manually configured, this System Priority
        value will be a value assigned by the local System." ""IEEE 802.3 Subclause 30.7.1.1.11"                    "The current operational value of the Key for the
        Aggregator's current protocol Partner. This is a 16-bit
        read-only value. If the aggregation is manually
        configured, this Key value will be a value assigned by
        the local System." ""IEEE 802.3 Subclause 30.7.1.1.12"                    L"The value of this 16-bit read-write attribute defines
        the maximum delay, in tens of microseconds, that may be
        imposed by the Frame Collector between receiving a frame
        from an Aggregator Parser, and either delivering the
        frame to its MAC Client or discarding the frame (see
        43.2.3.1.1)." ""IEEE 802.3 Subclause 30.7.1.1.32"                     Y"A table that contains a list of all the ports
        associated with each Aggregator." ""IEEE 802.3 Subclause 30.7.1.1.30"                     t"A list of the ports associated with a given Aggregator.
        This is indexed by the ifIndex of the Aggregator."                       �"The complete set of ports currently associated with
        this Aggregator.  Each bit set in this list represents
        an Actor Port member of this Link Aggregation." ""IEEE 802.3 Subclause 30.7.1.1.30"                         �"A table that contains Link Aggregation Control
        configuration information about every
        Aggregation Port associated with this device.
        A row appears in this table for each physical port." "IEEE 802.3 Subclause 30.7.2"                     p"A list of Link Aggregation Control configuration
        parameters for each Aggregation Port on this device."                       "The ifIndex of the port" !"IEEE 802.3 Subclause 30.7.2.1.1"                     n"A 2-octet read-write value used to define the priority
        value associated with the Actor's System ID." !"IEEE 802.3 Subclause 30.7.2.1.2"                     �"A 6-octet read-only MAC address value that defines the
        value of the System ID for the System that contains this
        Aggregation Port." !"IEEE 802.3 Subclause 30.7.2.1.3"                     �"The current administrative value of the Key for the
        Aggregation Port. This is a 16-bit read-write value.
        The meaning of particular Key values is of local
        significance." !"IEEE 802.3 Subclause 30.7.2.1.4"                     �"The current operational value of the Key for the
        Aggregation Port. This is a 16-bit read-only value.
        The meaning of particular Key values is of local
        significance." !"IEEE 802.3 Subclause 30.7.2.1.5"                    �"A 2-octet read-write value used to define the
        administrative value of priority associated with the
        Partner's System ID. The assigned value is used, along
        with the value of aAggPortPartnerAdminSystemID,
        aAggPortPartnerAdminKey, aAggPortPartnerAdminPort, and
        aAggPortPartnerAdminPortPriority, in order to achieve
        manually configured aggregation." !"IEEE 802.3 Subclause 30.7.2.1.6"                    3"A 2-octet read-only value indicating the operational
        value of priority associated with the Partner's System
        ID. The value of this attribute may contain the manually
        configured value carried in
        aAggPortPartnerAdminSystemPriority if there is no
        protocol Partner." !"IEEE 802.3 Subclause 30.7.2.1.7"                    �"A 6-octet read-write MACAddress value representing the
        administrative value of the Aggregation Port's protocol
        Partner's System ID. The assigned value is used, along
        with the value of aAggPortPartnerAdminSystemPriority,
        aAggPortPartnerAdminKey, aAggPortPartnerAdminPort, and
        aAggPortPartnerAdminPortPriority, in order to achieve
        manually configured aggregation." !"IEEE 802.3 Subclause 30.7.2.1.8"                    �"A 6-octet read-only MACAddress value representing the
        current value of the Aggregation Port's protocol
        Partner's System ID. A value of zero indicates that
        there is no known protocol Partner. The value of this
        attribute may contain the manually configured value
        carried in aAggPortPartnerAdminSystemID if there is no
        protocol Partner." !"IEEE 802.3 Subclause 30.7.2.1.9"                    �"The current administrative value of the Key for the
        protocol Partner. This is a 16-bit read-write value.
        The assigned value is used, along with the value of
        aAggPortPartnerAdminSystemPriority,
        aAggPortPartnerAdminSystemID, aAggPortPartnerAdminPort,
        and aAggPortPartnerAdminPortPriority, in order to
        achieve manually configured aggregation." ""IEEE 802.3 Subclause 30.7.2.1.10"                    "The current operational value of the Key for the
        protocol Partner. The value of this attribute may
        contain the manually configured value carried in
        aAggPortPartnerAdminKey if there is no protocol Partner.
        This is a 16-bit read-only value." ""IEEE 802.3 Subclause 30.7.2.1.11"                    ~"The identifier value of the Aggregator that this
        Aggregation Port has currently selected. Zero indicates
        that the Aggregation Port has not selected an
        Aggregator, either because it is in the process of
        detaching from an Aggregator or because there is no
        suitable Aggregator available for it to select.
        This value is read-only." ""IEEE 802.3 Subclause 30.7.2.1.12"                     �"The identifier value of the Aggregator that this
        Aggregation Port is currently attached to. Zero
        indicates that the Aggregation Port is not currently
        attached to an Aggregator.  This value is read-only." ""IEEE 802.3 Subclause 30.7.2.1.13"                     �"The port number locally assigned to the Aggregation
        Port. The port number is communicated in LACPDUs as the
        Actor_Port. This value is read-only." ""IEEE 802.3 Subclause 30.7.2.1.14"                     a"The priority value assigned to this Aggregation Port.
        This 16-bit value is read-write." ""IEEE 802.3 Subclause 30.7.2.1.15"                    �"The current administrative value of the port number for
        the protocol Partner. This is a 16-bit read-write value.
        The assigned value is used, along with the value of
        aAggPortPartnerAdminSystemPriority,
        aAggPortPartnerAdminSystemID, aAggPortPartnerAdminKey,
        and aAggPortPartnerAdminPortPriority, in order to
        achieve manually configured aggregation." ""IEEE 802.3 Subclause 30.7.2.1.16"                    C"The operational port number assigned to this
        Aggregation Port by the Aggregation Port's protocol
        Partner. The value of this attribute may contain the
        manually configured value carried in
        aAggPortPartnerAdminPort if there is no protocol
        Partner. This 16-bit value is read-only." ""IEEE 802.3 Subclause 30.7.2.1.17"                    �"The current administrative value of the port priority
        for the protocol Partner. This is a 16-bit read-write
        value. The assigned value is used, along with the value
        of aAggPortPartnerAdminSystemPriority,
        aAggPortPartnerAdminSystemID, aAggPortPartnerAdminKey,
        and aAggPortPartnerAdminPort, in order to achieve
        manually configured aggregation." ""IEEE 802.3 Subclause 30.7.2.1.18"                    "The priority value assigned to this Aggregation Port by
        the Partner. The value of this attribute may contain the
        manually configured value carried in
        aAggPortPartnerAdminPortPriority if there is no protocol
        Partner. This 16-bit value is read-only." ""IEEE 802.3 Subclause 30.7.2.1.19"                    ,"A string of 8 bits, corresponding to the administrative
        values of Actor_State (43.4.2) as transmitted by the
        Actor in LACPDUs. The first bit corresponds to bit 0 of
        Actor_State (LACP_Activity),
        the second bit corresponds to bit 1 (LACP_Timeout),
        the third bit corresponds to bit 2 (Aggregation),
        the fourth bit corresponds to bit 3 (Synchronization),
        the fifth bit corresponds to bit 4 (Collecting),
        the sixth bit corresponds to bit 5 (Distributing),
        the seventh bit corresponds to bit 6 (Defaulted),
        and the eighth bit corresponds to bit 7 (Expired).
        These values allow administrative control over the
        values of LACP_Activity, LACP_Timeout and Aggregation.
        This attribute value is read-write." ""IEEE 802.3 Subclause 30.7.2.1.20"                     �"A string of 8 bits, corresponding to the current
        operational values of Actor_State as transmitted by the
        Actor in LACPDUs. The bit allocations are as defined in
        30.7.2.1.20. This attribute value is read-only." ""IEEE 802.3 Subclause 30.7.2.1.21"                    D"A string of 8 bits, corresponding to the current
        administrative value of Actor_State for the protocol
        Partner. The bit allocations are as defined in
        30.7.2.1.20. This attribute value is read-write. The
        assigned value is used in order to achieve manually
        configured aggregation." ""IEEE 802.3 Subclause 30.7.2.1.22"                    �"A string of 8 bits, corresponding to the current values
        of Actor_State in the most recently received LACPDU
        transmitted by the protocol Partner. The bit allocations
        are as defined in 30.7.2.1.20. In the absence of an
        active protocol Partner, this value may reflect the
        manually configured value aAggPortPartnerAdminState.
        This attribute value is read-only." ""IEEE 802.3 Subclause 30.7.2.1.23"                     �"A read-only Boolean value indicating whether the
        Aggregation Port is able to Aggregate (`TRUE') or is
        only able to operate as an Individual link (`FALSE')." ""IEEE 802.3 Subclause 30.7.2.1.24"                     �"A table that contains Link Aggregation information
        about every port that is associated with this device.
        A row appears in this table for each physical port." "IEEE 802.3 Subclause 30.7.3"                     _"A list of Link Aggregation Control Protocol statistics
        for each port on this device."                       b"The number of valid LACPDUs received on this
        Aggregation Port. This value is read-only." !"IEEE 802.3 Subclause 30.7.3.1.2"                     f"The number of valid Marker PDUs received on this
        Aggregation Port. This value is read-only." !"IEEE 802.3 Subclause 30.7.3.1.3"                     o"The number of valid Marker Response PDUs received on
        this Aggregation Port. This value is read-only." !"IEEE 802.3 Subclause 30.7.3.1.4"                    N"The number of frames received that either:
        - carry the Slow Protocols Ethernet Type value (43B.4),
          but contain an unknown PDU,  or:
        - are addressed to the Slow Protocols group MAC
          Address (43B.3), but do not carry the Slow Protocols
          Ethernet Type.
        This value is read-only." !"IEEE 802.3 Subclause 30.7.3.1.5"                     �"The number of frames received that carry the Slow
        Protocols Ethernet Type value (43B.4), but contain a
        badly formed PDU or an illegal value of Protocol Subtype
        (43B.4). This value is read-only." !"IEEE 802.3 Subclause 30.7.3.1.6"                     _"The number of LACPDUs transmitted on this
        Aggregation Port. This value is read-only." !"IEEE 802.3 Subclause 30.7.3.1.7"                     c"The number of Marker PDUs transmitted on this
        Aggregation Port. This value is read-only." !"IEEE 802.3 Subclause 30.7.3.1.8"                     l"The number of Marker Response PDUs transmitted
        on this Aggregation Port. This value is read-only." !"IEEE 802.3 Subclause 30.7.3.1.9"                     �"A table that contains Link Aggregation debug
        information about every port that is associated with
        this device.  A row appears in this table for each
        physical port." "IEEE 802.3 Subclause 30.7.4"                     ,"A list of the debug parameters for a port."                      H"This attribute holds the value `currentRx' if the
        Receive state machine for the Aggregation Port is in the
        CURRENT state, `expired' if the Receive state machine is
        in the EXPIRED state, `defaulted' if the Receive state
        machine is in the DEFAULTED state, `initialize' if the
        Receive state machine is in the INITIALIZE state,
        `lacpDisabled' if the Receive state machine is in the
        LACP_DISABLED state, or `portDisabled' if the Receive
        state machine is in the PORT_DISABLED state.
        This value is read-only." !"IEEE 802.3 Subclause 30.7.4.1.2"                     �"The value of aTimeSinceSystemReset (F.2.1) when
        the last LACPDU was received by this Aggregation Port.
        This value is read-only." !"IEEE 802.3 Subclause 30.7.4.1.3"                    �"This attribute holds the value `detached' if the Mux
        state machine (43.4.14) for the Aggregation Port is in
        the DETACHED state, `waiting' if the Mux state machine
        is in the WAITING state, `attached' if the Mux state
        machine for the Aggregation Port is in the ATTACHED
        state, `collecting' if the Mux state machine for the
        Aggregation Port is in the COLLECTING state,
        `distributing' if the Mux state machine for the
        Aggregation Port is in the DISTRIBUTING state, and
        `collectingDistributing' if the Mux state machine for
        the Aggregation Port is in the COLLECTING_DISTRIBUTING
        state. This value is read-only." !"IEEE 802.3 Subclause 30.7.4.1.4"                     �"A human-readable text string indicating the reason
        for the most recent change of Mux machine state.
        This value is read-only." !"IEEE 802.3 Subclause 30.7.4.1.5"                    \"The state of the Actor Churn Detection machine
        (43.4.17) for the Aggregation Port. A value of `noChurn'
        indicates that the state machine is in either the
        NO_ACTOR_CHURN or the ACTOR_CHURN_MONITOR state, and
        `churn' indicates that the state machine is in the
        ACTOR_CHURN state. This value is read-only." !"IEEE 802.3 Subclause 30.7.4.1.6"                    d"The state of the Partner Churn Detection machine
        (43.4.17) for the Aggregation Port. A value of `noChurn'
        indicates that the state machine is in either the
        NO_PARTNER_CHURN or the PARTNER_CHURN_MONITOR state, and
        `churn' indicates that the state machine is in the
        PARTNER_CHURN state. This value is read-only." !"IEEE 802.3 Subclause 30.7.4.1.7"                     �"Count of the number of times the Actor Churn state
        machine has entered the ACTOR_CHURN state.
        This value is read-only." !"IEEE 802.3 Subclause 30.7.4.1.8"                     �"Count of the number of times the Partner Churn
        state machine has entered the PARTNER_CHURN state.
        This value is read-only." !"IEEE 802.3 Subclause 30.7.4.1.9"                     �"Count of the number of times the Actor's Mux state
        machine (43.4.15) has entered the IN_SYNC state.
        This value is read-only." ""IEEE 802.3 Subclause 30.7.4.1.10"                     �"Count of the number of times the Partner's Mux
        state machine (43.4.15) has entered the IN_SYNC state.
        This value is read-only." ""IEEE 802.3 Subclause 30.7.4.1.11"                     �"Count of the number of times the Actor's perception of
        the LAG ID for this Aggregation Port has changed.
        This value is read-only." ""IEEE 802.3 Subclause 30.7.4.1.12"                     �"Count of the number of times the Partner's perception
        of the LAG ID (see 43.3.6.1) for this Aggregation Port
        has changed. This value is read-only." ""IEEE 802.3 Subclause 30.7.4.1.13"                     �"This object indicates the time of the most recent
        change to the dot3adAggTable, dot3adAggPortListTable, or
        dot3adAggPortTable."                               N"A collection of objects providing information about an
        aggregation."                 �"A collection of objects providing information about the
        time of changes to the configuration of aggregations and
        their ports."                 \"A collection of objects providing information about
        every port in an aggregation."                 \"A collection of objects providing information about
        every port in an aggregation."                 \"A collection of objects providing information about
        every port in an aggregation."                 ["A collection of objects providing debug information
        about every aggregated port."                     K"The compliance statement for device support of
        Link Aggregation."   "This group is optional." "This group is optional." "This group is optional."                