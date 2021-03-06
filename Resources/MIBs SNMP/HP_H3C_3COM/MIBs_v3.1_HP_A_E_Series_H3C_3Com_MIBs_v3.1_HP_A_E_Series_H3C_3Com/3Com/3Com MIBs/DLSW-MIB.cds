     I"Representing the type of DLC of an end station, if
        applicable."               X"Representing the location of an end station related
        to the managed DLSw node."               �"Denotes a transport service address.
        For dlswTCPDomain, a TAddress is 4 octets long,
        containing the IP-address in network-byte order."              "Represents a single qualified NetBIOS name, which can include
        'don't care' and 'wildcard' characters to represent a number
        of real NetBIOS names.  If an individual character position in
        the qualified name contains a '?', the corresponding character
        position in a real NetBIOS name is a 'don't care'.  If the
        qualified name ends in '*', the remainder of a real NetBIOS
        name is a 'don't care'. '*' is only considered a wildcard if it
        appears at the end of a name."               ["Represents the IP address of a DLSw which uses
             TCP as a transport protocol."               �"Represents an 802 MAC address represented in
        non-canonical format.  That is, the most significant
        bit will be transmitted first.  If this information
        is not available, the value is a zero length string."               �"The largest size of the INFO field (including DLC header,
        not including any MAC-level or framing octets).
        64 valid values as defined by the IEEE 802.1D
        Addendum are acceptable."                                                                                                                 J"This MIB module contains objects to manage Data Link
         Switches." �"David D. Chen
                   IBM Corporation
                   800 Park, Highway 54
                   Research Triangle Park, NC 27709-9990
                   Tel:    1 919 254 6182
                   E-mail: dchen@vnet.ibm.com"                      }"This value identifies the particular version of the DLSw
        standard supported by this DLSw.  The first octet is a
        hexadecimal value representing the DLSw standard Version
        number of this DLSw, and the second is a hexadecimal value
        representing the DLSw standard Release number. This
        information is reported in DLSw Capabilities Exchange." *"DLSW: Switch-to-Switch Protocol RFC 1795"                     �"The value identifies the manufacturer's IEEE-assigned
        organizationally Unique Identifier (OUI) of this DLSw.
        This information is reported in DLSw Capabilities
        Exchange." *"DLSW: Switch-to-Switch Protocol RFC 1795"                     �"This string gives product-specific information about
        this DLSw (e.g., product name, code release and fix level).
        This flows in Capabilities Exchange messages." *"DLSW: Switch-to-Switch Protocol RFC 1795"                    �"Circuit pacing, as defined in the DLSw Standard, allows each
        of the two DLSw nodes on a circuit to control the amount
        of data the other is permitted to send to them.  This object
        reflects the level of support the DLSw node has for this
        protocol.  (1) means the node has no support for the standard
        circuit pacing flows;  it may use RFC 1434+ methods only, or
        a proprietary flow control scheme.  (2) means the node supports
        the standard scheme and can vary the window sizes it grants as
        a data receiver.  (3) means the node supports the standard
        scheme but never varies its receive window size."                      "The status of the DLSw part of the system.  Changing the
        value from active to inactive causes DLSw to take
        the following actions - (1) it disconnects all circuits
        through all DLSw partners, (2) it disconnects all
        transport connections to all DLSw partners, (3) it
        disconnects all local DLC connections, and (4) it stops
        processing all DLC connection set-up traffic.
        Since these are destructive actions, the user should
        query the circuit and transport connection tables in
        advance to understand the effect this action will have.
        Changing the value from inactive to active causes DLSw
        to come up in its initial state, i.e., transport
        connections established and ready to bring up circuits."                      5"The amount of time (in hundredths of a second) since
        the DLSw portion of the system was last re-initialized.
        That is, if dlswState is in the active state,
        the time the dlswState entered the active state.
        It will remain zero if dlswState is in the
        inactive state."                      5"The largest frame size (including DLC header and info field
        but not any MAC-level or framing octets) this DLSw can forward
        on any path through itself.  This object can represent any box-
        level frame size forwarding restriction (e.g., from the use
        of fixed-size buffers).  Some DLSw implementations will have
        no such restriction.

        This value will affect the LF size of circuits during circuit
        creation.  The LF size of an existing circuit can be found in
        the RIF (Routing Information Field)."                      �"The value of true indicates that the NetBIOS Names
        configured in dlswDirNBTable are the only ones accessible
        via this DLSw.

        If a node supports sending run-time capabilities exchange
        messages, changes to this object should cause that action.
        It is up to the implementation exactly when to start the
        run-time capabilities exchange."                      �"The value of true indicates that the MAC addresses
        configured in the dlswDirMacTable are the only ones
        accessible via this DLSw.

        If a node supports sending run-time capabilities exchange
        messages, changes to this object should cause that action.
        It is up to the implementation exactly when to start the
        run-time capabilities exchange."                          �"Indicates whether the DLSw is permitted to emit partner
        reject related traps.  With the value of 'enabled'
        the DLSw will emit all partner reject related traps.
        With the value of 'disabled' the DLSw will not emit
        any partner reject related traps.  With the value
        of 'partial' the DLSw will only emits partner reject
        traps for CapEx reject.  The changes take effect
        immediately."                       �"Indicates whether the DLSw is permitted to generate
        protocol-violation traps on the events such as
        window size violation.  The changes take effect
        immediately."                      5"Indicates whether the DLSw is permitted to emit transport
        connection up and down traps.  With the value of 'enabled'
        the DLSw will emit traps when connections enter 'connected'
        and 'disconnected' states.  With the value of 'disabled'
        the DLSw will not emit traps when connections enter of
        'connected' and 'disconnected' states.  With the value
        of 'partial' the DLSw will only emits transport connection
        down traps when the connection is closed with busy.
        The changes take effect immediately."                      F"Indicates whether the DLSw is permitted to generate
        circuit up and down traps.  With the value of 'enabled'
        the DLSw will emit traps when circuits enter 'connected'
        and 'disconnected' states.  With the value of 'disabled'
        the DLSw will not emit traps when circuits enter of
        'connected' and 'disconnected' states.  With the value
        of 'partial' the DLSw will emit traps only for those
        circuits that are initiated by this DLSw, e.g.,
        originating the CUR_CS message.  The changes take effect
        immediately."                               T"The number of transport connections that are not in
        'disconnected' state."                       �"The number of times transport connections in this node
        exited the connected state with zero active circuits on
        the transport connection."                       �"The number of times transport connections in this node
        exited the connected state with some non-zero number
        of active circuits on the transport connection.  Normally
        this means the transport connection failed unexpectedly."                      �"This table defines the transport connections
        that will be initiated or accepted by this
        DLSw.  Structure of masks allows wildcard
        definition for a collection of transport
        connections by a conceptual row.  For a
        specific transport connection, there may
        be multiple of conceptual rows match the
        transport address.  The 'best' match will
        the one to determine the characteristics
        of the transport connection."                       M"Each conceptual row defines a collection of
        transport connections."                      �"The index to the conceptual row of the table.
        Negative numbers are not allowed.  There
        are objects defined that point to conceptual
        rows of this table with this index value.
        Zero is used to denote that no corresponding
        row exists.

        Index values are assigned by the agent, and
        should not be reused but should continue to
        increase in value."                       ]"The object identifier which indicates the transport
        domain of this conceptual row."                       f"The local transport address for this conceptual row
        of the transport connection definition."                      ]"The remote transport address.  Together with
        dlswTConnConfigEntryType and dlswTConnConfigGroupDefinition,
        the object instance of this conceptual row identifies a
        collection of the transport connections that will be
        either initiated by this DLSw or initiated by a partner
        DLSw and accepted by this DLSw."                      v"The time (in hundredths of a second) since the value of
        any object in this conceptual row except for
        dlswTConnConfigOpens was last changed.  This value
        may be compared to dlswTConnOperConnectTime to
        determine whether values in this row are completely
        valid for a transport connection created using
        this row definition."                      �"The object instance signifies the type of entry in the
        associated conceptual row.  The value of 'individual'
        means that the entry applies to a specific partner DLSw
        node as identified by dlswTConnConfigRemoteTAddr and
        dlswTConnConfigTDomain.  The value of 'global'
        means that the entry applies to all partner DLSw nodes
        of the TDomain.  The value of 'group' means that the entry
        applies to a specific set of DLSw nodes in the TDomain.
        Any group definitions are enterprise-specific and are pointed
        to by dlswTConnConfigGroupDefinition.  In the cases of
        'global' and 'group', the value in dlswTConnConfigRemoteTAddr
        may not have any significance."                       �"For conceptual rows of 'individual' and 'global' as
        specified in dlswTConnConfigEntryType, the instance
        of this object is  '0.0'.  For conceptual rows of
        'group', the instance points to the specific
        group definition."                      2"This value of the instance of a conceptual row
        identifies the behavior of the collection of
        transport connections that this conceptual row
        defines.  The value of activePersistent, activeOnDemand
        and passive means this DLSw will accept any transport
        connections, initiated by partner DLSw nodes, which
        are defined by this conceptual row.  The value of
        activePersistent means this DLSw will also initiate
        the transport connections of this conceptual row and
        retry periodically if necessary.  The value of
        activeOnDemand means this DLSw will initiate a
        transport connection of this conceptual row, if
        there is a directory cache hits.  The value of
        other is implementation specific.  The value of exclude
        means that the specified node is not allowed to be
        a partner to this DLSw node.  To take a certain
        conceptual row definition out of service, a value of
        notInService for dlswTConnConfigRowStatus should be
        used."                      7"The SAP list indicates which SAPs are advertised to
        the transport connection defined by this conceptual
        row.  Only SAPs with even numbers are represented,
        in the form of the most significant bit of the first
        octet representing the SAP 0, the next most significant
        bit representing the SAP 2, to the least significant
        bit of the last octet representing the SAP 254.  Data
        link switching is allowed for those SAPs which have
        one in its corresponding bit, not allowed otherwise.
        The whole SAP list has to be changed together.  Changing
        the SAP list affects only new circuit establishments
        and has no effect on established circuits.

        This list can be used to restrict specific partners
        from knowing about all the SAPs used by DLSw on all its
        interfaces (these are represented in dlswIfSapList for
        each interface).  For instance, one may want to run NetBIOS
        with some partners but not others.

        If a node supports sending run-time capabilities exchange
        messages, changes to this object should cause that action.
        When to start the run-time capabilities exchange is
        implementation-specific.
        The DEFVAL below indicates support for SAPs 0, 4, 8, and C."                      �"The value of true indicates that any defined local MAC
         addresses and NetBIOS names will be advertised to a
         partner node via initial and (if supported) run-time
         capabilities exchange messages.  The DLSw node should send
         the appropriate exclusivity control vector to accompany
         each list it sends, or to represent that the node is
         explicitly configured to have a null list.

         The value of false indicates that the DLSw node should not
         send a MAC address list or NetBIOS name list, and should
         also not send their corresponding exclusivity control
         vectors."                      �"The initial circuit receive pacing window size, in the unit
        of SSP messages, to be used for future transport connections
        activated using this table row.  The managed node sends this
        value as its initial receive pacing window in its initial
        capabilities exchange message.  Changing this value does not
        affect the initial circuit receive pacing window size of
        currently active transport connections.  If the standard window
        pacing scheme is not supported, the value is zero.

        A larger receive window value may be appropriate for partners
        that are reachable only via physical paths that have longer
        network delays."                       �"Number of times transport connections entered
        connected state according to the definition of
        this conceptual row."                      
"This object is used by the manager to create
        or delete the row entry in the dlswTConnConfigTable
        following the RowStatus textual convention.  The value
        of notInService will be used to take a conceptual
        row definition out of use."                      �"A list of transport connections.   It is optional but
        desirable for the agent to keep an entry for some
        period of time after the transport connection is
        disconnected.  This allows the manager to capture
        additional useful information about the connection, in
        particular, statistical information and the cause of the
        disconnection."                       ""                       ]"The object identifier indicates the transport domain
        of this transport connection."                       �"The local transport address for this transport connection.
        This value could be different from dlswTConnConfigLocalAddr,
        if the value of the latter were changed after this transport
        connection was established."                       <"The remote transport address of this transport connection."                       u"The amount of time (in hundredths of a second) since this
        transport connection conceptual row was created."                       �"The amount of time (in hundredths of a second) since this
        transport connection last entered the 'connected' state.
        A value of zero means this transport connection has never
        been established."                      I"The state of this transport connection.  The transport
        connection enters 'connecting' state when DLSw makes
        a connection request to the transport layer.  Once initial
        Capabilities Exchange is sent, the transport connection
        enters enters 'initCapExchange' state.  When partner
        capabilities have been determined and the transport
        connection is ready for sending CanUReach (CUR) messages,
        it moves to the 'connected' state.  When DLSw is in the
        process of bringing down the connection, it is in the
        'disconnecting' state.  When the transport layer
        indicates one of its connections is disconnected, the
        transport connection moves to the 'disconnected' state.

        Whereas all of the values will be returned in response
        to a management protocol retrieval operation, only two
        values may be specified in a management protocol set
        operation: 'quiescing' and 'disconnecting'.  Changing
        the value to 'quiescing' prevents new circuits from being
        established, and will cause a transport disconnect when
        the last circuit on the connection goes away.  Changing
        the value to 'disconnecting' will force off all circuits
        immediately and bring the connection to 'disconnected'
        state."                      "The value of dlswTConnConfigIndex of the dlswTConnConfigEntry
        that governs the configuration information used by this
        dlswTConnOperEntry.  The manager can therefore normally
        examine both configured and operational information
        for this transport connection.

        This value is zero if the corresponding dlswTConnConfigEntry
        was deleted after the creation of this dlswTConnOperEntry.
        If some fields in the former were changed but the conceptual
        row was not deleted, some configuration information may not
        be valid for this operational transport connection.  The
        manager can compare dlswTConnOperConnectTime and
        dlswTConnConfigLastModifyTime to determine if this condition
        exists."                      t"The flow control mechanism in use on this transport connection.
        This value is undetermined (1) before the mode of flow control
        can be established on a new transport connection (i.e., after
        CapEx is sent but before Capex or other SSP control messages
        have been received).  Pacing (2) indicates that the standard
        RFC 1795 pacing mechanism is in use.  Other (3) may be either
        the RFC 1434+ xBusy mechanism operating to a back-level DLSw,
        or a vendor-specific flow control method.  Whether it is xBusy
        or not can be inferred from dlswTConnOperPartnerVersion."                      �"This value identifies which version (first octet) and release
        (second octet) of the DLSw standard is supported by this
        partner DLSw. This information is obtained from a DLSw
        capabilities exchange message received from the partner DLSw.
        A string of zero length is returned before a Capabilities
        Exchange message is received, or if one is never received.
        A conceptual row with a dlswTConnOperState of 'connected' but
        a zero length partner version indicates that the partner is
        a non-standard DLSw partner.

        If an implementation chooses to keep dlswTConnOperEntrys in
        the 'disconnected' state, this value should remain unchanged." *"DLSW: Switch-to-Switch Protocol RFC 1795"                    "This value identifies the IEEE-assigned organizationally
        Unique Identifier (OUI) of the maker of this partner
        DLSw.  This information is obtained from a DLSw
        capabilities exchange message received from the partner DLSw.
        A string of zero length is returned before a Capabilities
        Exchange message is received, or if one is never received.

        If an implementation chooses to keep dlswTConnOperEntrys in
        the 'disconnected' state, this value should remain unchanged."                      �"This value identifies the particular product version (e.g.,
        product name, code level, fix level) of this partner DLSw.
        The format of the actual version string is vendor-specific.
        This information is obtained from a DLSw capabilities exchange
        message received from the partner DLSw.
        A string of zero length is returned before a Capabilities
        Exchange message is received, if one is never received, or
        if one is received but it does not contain a version string.
        If an implementation chooses to keep dlswTConnOperEntrys in
        the 'disconnected' state, this value should remain unchanged." *"DLSW: Switch-to-Switch Protocol RFC 1795"                    �"The value of the partner initial receive pacing window.  This
        is our initial send pacing window for all new circuits on this
        transport connection, as modified and granted by the first flow
        control indication the partner sends on each circuit.
        This information is obtained from a DLSw capabilities exchange
        message received from the partner DLSw.
        A value of zero is returned before a Capabilities
        Exchange message is received, or if one is never received.

        If an implementation chooses to keep dlswTConnOperEntrys in
        the 'disconnected' state, this value should remain unchanged." *"DLSW: Switch-to-Switch Protocol RFC 1795"                    �"The Supported SAP List received in the capabilities
        exchange message from the partner DLSw.  This list has
        the same format described for dlswTConnConfigSapList.
        A string of zero length is returned before a Capabilities
        Exchange message is received, or if one is never received.

        If an implementation chooses to keep dlswTConnOperEntrys in
        the 'disconnected' state, this value should remain unchanged."                      g"The value of true signifies that the NetBIOS names received
        from this partner in the NetBIOS name list in its capabilities
        exchange message are the only NetBIOS names reachable by
        that partner.  'False' indicates that other NetBIOS names may
        be reachable.  'False' should be returned before a Capabilities
        Exchange message is received, if one is never received, or if
        one is received without a NB Name Exclusivity CV.

        If an implementation chooses to keep dlswTConnOperEntrys in
        the 'disconnected' state, this value should remain unchanged."                      j"The value of true signifies that the MAC addresses received
        from this partner in the MAC address list in its capabilities
        exchange message are the only MAC addresses reachable by
        that partner.  'False' indicates that other MAC addresses may
        be reachable.  'False' should be returned before a Capabilities
        Exchange message is received, if one is never received, or if
        one is received without a MAC Address Exclusivity CV.

        If an implementation chooses to keep dlswTConnOperEntrys in
        the 'disconnected' state, this value should remain unchanged."                      �"It is up to this DSLw whether to keep either none, some,
        or all of the NetBIOS name list that was received in
        the capabilities exchange message sent by this partner DLSw.
        This object identifies how much information was kept by
        this DLSw.  These names are stored as userConfigured
        remote entries in dlswDirNBTable.
        A value of (4), notApplicable, should be returned before
        a Capabilities Exchange message is received, or if one is
        never received.
        If an implementation chooses to keep dlswTConnOperEntrys in
        the 'disconnected' state, this value should remain unchanged."                      �"It is up to this DLSw whether to keep either none, some,
        or all of the MAC address list that was received in the
        capabilities exchange message sent by this partner DLSw.
        This object identifies how much information was kept by
        this DLSw.  These names are stored as userConfigured
        remote entries in dlswDirMACTable.
        A value of (4), notApplicable, should be returned before
        a Capabilities Exchange message is received, or if one is
        never received.

        If an implementation chooses to keep dlswTConnOperEntrys in
        the 'disconnected' state, this value should remain unchanged."                       y"The amount of time (in hundredths of a second) since the
        dlswTConnOperState last entered 'disconnected' state."                       �"This object signifies the reason that either prevented the
        transport connection from entering the connected state, or
        caused the transport connection to enter the disconnected
        state."                       �"The number of circuits active (not in DISCONNECTED state)
        at the time the transport connection was last disconnected.
        This value is zero if the transport connection has never
        been connected."                       �"The number of Switch-to-Switch Protocol (SSP) messages of
        type DGRMFRAME, DATAFRAME, or INFOFRAME received on this
        transport connection."                       �"The number of Switch-to-Switch Protocol (SSP) messages of
        type DGRMFRAME, DATAFRAME, or INFOFRAME transmitted on this
        transport connection."                      "The number octets in Switch-to-Switch Protocol (SSP) messages
        of type DGRMFRAME, DATAFRAME, or INFOFRAME received on this
        transport connection.  Each message is counted starting with
        the first octet following the SSP message header."                      "The number octets in Switch-to-Switch Protocol (SSP) messages
        of type DGRMFRAME, DATAFRAME, or INFOFRAME transmitted on this
        transport connection.  Each message is counted starting with
        the first octet following the SSP message header."                       �"The number of Switch-to-Switch Protocol (SSP) messages
        received on this transport connection which were not of
        type DGRMFRAME, DATAFRAME, or INFOFRAME."                       �"The number of Switch-to-Switch Protocol (SSP) messages of
        transmitted on this transport connection which were not of
        type DGRMFRAME, DATAFRAME, or INFOFRAME."                       Q"The number of CanUReach_ex messages sent on this transport
        connection."                       U"The number of ICanReach_ex messages received on this transport
        connection."                       U"The number of CanUReach_ex messages received on this transport
        connection."                       Q"The number of ICanReach_ex messages sent on this transport
        connection."                       p"The number of NetBIOS_NQ_ex (NetBIOS Name Query-explorer)
        messages sent on this transport connection."                       y"The number of NETBIOS_NR_ex (NetBIOS Name Recognized-explorer)
        messages received on this transport connection."                       V"The number of NETBIOS_NQ_ex messages received on this
        transport connection."                       R"The number of NETBIOS_NR_ex messages sent on this transport
        connection."                       �"The number of times that circuits entered 'circuit_established'
        state (not counting transitions from 'circuit_restart')."                       �"The number of currently active circuits on this transport
        connection, where 'active' means not in 'disconnected' state."                               �"This table defines the TCP transport connections that
        will be either initiated by or accepted by this DSLw.
        It augments the entries in dlswTConnConfigTable whose domain
        is dlswTCPDomain."                       k"Each conceptual row defines parameters that are
        specific to dlswTCPDomain transport connections."                       �"The time in seconds between TCP keepAlive messages when
        no traffic is flowing.  Zero signifies no keepAlive protocol.
        Changes take effect only for new TCP connections."                       �"This is our preferred number of TCP connections within a
        TCP transport connection.  The actual number used is negotiated
        at capabilities exchange time. Changes take effect only
        for new transport connections."                       �"This is the number of bytes that this node is
        willing to receive over the read TCP connection(s).
        Changes take effect for new transport connections."                      �"A list of TCP transport connections.   It is optional
        but desirable for the agent to keep an entry for some
        period of time after the transport connection is
        disconnected.  This allows the manager to capture
        additional useful information about the connection, in
        particular, statistical information and the cause of the
        disconnection."                       ""                       �"The time in seconds between TCP keepAlive messages when
        no traffic is flowing.  Zero signifies no keepAlive protocol is
        operating."                       �"This is the number of TCP connections preferred by this DLSw
        partner, as received in its capabilities exchange message."                       a"This is the actual current number of TCP connections within
        this transport connection."                           1"The list of interfaces on which DLSw is active."                       ""                       �"This object is used by the manager to create
        or delete the row entry in the dlswIfTable
        following the RowStatus textual convention."                      �"The segment number that uniquely identifies the virtual
        segment to which this DLSw interface is connected.
        Current source routing protocols limit this value to
        the range 0 - 4095. (The value 0 is used by some
        management applications for special test cases.)
        A value of 65535 signifies that no virtual segment
        is assigned to this interface.  For instance,
        in a non-source routing environment, segment number
        assignment is not required."                      �"The SAP list indicates which SAPs are allowed to be
        data link switched through this interface.  This list
        has the same format described for dlswTConnConfigSapList.

        When changes to this object take effect is implementation-
        specific.  Turning off a particular SAP can destroy
        active circuits that are using that SAP.  An agent
        implementation may reject such changes until there are no
        active circuits if it so chooses.  In this case, it is up
        to the manager to close the circuits first, using
        dlswCircuitState.

        The DEFVAL below indicates support for SAPs 0, 4, 8, and C."                               ="The current total number of entries in the dlswDirMacTable."                       _"The number of times a cache search for a particular MAC address
        resulted in success."                       _"The number of times a cache search for a particular MAC address
        resulted in failure."                      �"The next value of dlswDirMacIndex to be assigned by
        the agent.  A retrieval of this object atomically reserves
        the returned value for use by the manager to create a row
        in dlswDirMacTable.  This makes it possible for the agent
        to control the index space of the MAC address cache, yet
        allows the manager to administratively create new rows."                       <"The current total number of entries in the dlswDirNBTable."                       `"The number of times a cache search for a particular NetBIOS
        name resulted in success."                       `"The number of times a cache search for a particular NetBIOS
        name resulted in failure."                      �"The next value of dlswDirNBIndex to be assigned by the
        agent.  A retrieval of this object atomically reserves
        the returned value for use by the manager to create
        a row in dlswDirNBTable.  This makes it possible for the
        agent to control the index space for the NetBIOS name
        cache, yet allows the manager to administratively
        create new rows."                           �"This table contains locations of MAC addresses.
        They could be either verified or not verified,
        local or remote, and configured locally or learned
        from either Capabilities Exchange messages or
        directory searches."                       "Indexed by dlswDirMacIndex."                       5"Uniquely identifies a conceptual row of this table."                       �"The MAC address, together with the dlswDirMacMask,
        specifies a set of MAC addresses that are defined or
        discovered through an interface or partner DLSw nodes."                       �"The MAC address mask, together with the dlswDirMacMac,
        specifies a set of MAC addresses that are defined or
        discovered through an interface or partner DLSw nodes."                      R"The cause of the creation of this conceptual row.
        It could be one of the three methods: (1) user
        configured, including via management protocol
        set operations, configuration file, command line
        or equivalent methods; (2) learned from the
        partner DLSw Capabilities Exchange messages;
        and (3) dynamic, e.g., learned from ICanReach
        messages, or LAN explorer frames.  Since only
        individual MAC addresses can be dynamically learned,
        dynamic entries will all have a mask of all FFs.

        The public versus private distinction for user-
        configured resources applies only to local resources
        (UC remote resources are private), and indicates
        whether that resource should be advertised in
        capabilities exchange messages sent by this node."                      4"The location of the resource (or a collection of
        resources using a mask) of this conceptual row
        is either (1) local - the resource is reachable
        via an interface, or (2) remote - the resource
        is reachable via a partner DLSw node (or a set
        of partner DLSw nodes)."                       �"Points to either the ifEntry, dlswTConnConfigEntry,
        dlswTConnOperEntry, 0.0, or something that is implementation
        specific.  It identifies the location of the MAC address
        (or the collection of MAC addresses.)"                      ;"This object specifies whether DLSw currently believes
        the MAC address to be accessible at the specified location.
        The value 'notReachable' allows a configured resource
        definition to be taken out of service when a search to
        that resource fails (avoiding a repeat of the search)."                       �"The largest size of the MAC INFO field (LLC header and data)
        that a circuit to the MAC address can carry through this path."                       �"This object is used by the manager to create
        or delete the row entry in the dlswDirMacTable
        following the RowStatus textual convention."                       �"This table contains locations of NetBIOS names.
        They could be either verified or not verified,
        local or remote, and configured locally or learned
        from either Capabilities Exchange messages or
        directory searches."                       "Indexed by dlswDirNBIndex."                       5"Uniquely identifies a conceptual row of this table."                       �"The NetBIOS name (including 'any char' and 'wildcard'
        characters) specifies a set of NetBIOS names that are
        defined or discovered through an interface or partner
        DLSw nodes."                       a"Whether dlswDirNBName represents an (or a set of) individual
        or group NetBIOS name(s)."                      a"The cause of the creation of this conceptual row.
        It could be one of the three methods: (1) user
        configured, including via management protocol
        set operations, configuration file, command line,
        or equivalent methods; (2) learned from the
        partner DLSw Capabilities Exchange messages;
        and (3) dynamic, e.g., learned from ICanReach
        messages, or test frames.  Since only actual
        NetBIOS names can be dynamically learned, dynamic
        entries will not contain any char or wildcard
        characters.

        The public versus private distinction for user-
        configured resources applies only to local resources
        (UC remote resources are private), and indicates
        whether that resource should be advertised in
        capabilities exchange messages sent by this node."                      C"The location of the resource (or a collection of resources
        using any char/wildcard characters) of this conceptual row
        is either (1) local - the resource is reachable via an
        interface, or (2) remote - the resource is reachable via a
        a partner DLSw node (or a set of partner DLSw nodes)."                       �"Points to either the ifEntry, dlswTConnConfigEntry,
        dlswTConnOperEntry, 0.0, or something that is implementation
        specific.  It identifies the location of the NetBIOS name
        or the set of NetBIOS names."                      <"This object specifies whether DLSw currently believes
        the NetBIOS name to be accessible at the specified location.
        The value 'notReachable' allows a configured resource
        definition to be taken out of service when a search to
        that resource fails (avoiding a repeat of the search)."                       �"The largest size of the MAC INFO field (LLC header and data)
        that a circuit to the NB name can carry through this path."                       �"This object is used by manager to create
        or delete the row entry in the dlswDirNBTable
        following the RowStatus textual convention."                          "This table is used to retrieve all entries in the
        dlswDirMacTable that match a given MAC address,
        in the order of the best matched first, the
        second best matched second, and so on, till
        no more entries match the given MAC address."                       �"Indexed by dlswDirLocateMacMac and dlswDirLocateMacMatch.
        The first object is the MAC address of interest, and
        the second object is the order in the list of all
        entries that match the MAC address."                        "The MAC address to be located."                       �"The order of the entries of dlswDirMacTable
        that match dlswDirLocateMacMac.  A value of
        one represents the entry that best matches the
        MAC address.  A value of two represents the second
        best matched entry, and so on."                        "Points to the dlswDirMacEntry."                      "This table is used to retrieve all entries in the
        dlswDirNBTable that match a given NetBIOS name,
        in the order of the best matched first, the
        second best matched second, and so on, till
        no more entries match the given NetBIOS name."                       �"Indexed by dlswDirLocateNBName and dlswDirLocateNBMatch.
        The first object is the NetBIOS name of interest, and
        the second object is the order in the list of all
        entries that match the NetBIOS name."                       <"The NetBIOS name to be located (no any char or wildcards)."                       �"The order of the entries of dlswDirNBTable
        that match dlswDirLocateNBName.  A value of
        one represents the entry that best matches the
        NetBIOS name.  A value of two represents the second
        best matched entry, and so on."                       "Points to the dlswDirNBEntry."                               e"The current number of circuits in dlswCircuitTable that are
        not in the disconnected state."                       x"The total number of entries ever added to dlswCircuitTable,
        or reactivated upon exiting 'disconnected' state."                      �"This table is the circuit representation in the DLSw
        entity. Virtual data links are used to represent any internal
        end stations.  There is a conceptual row associated with
        each data link.  Thus, for circuits without an intervening
        transport connection, there are two conceptual rows
        for each circuit.

        The table consists of the circuits being established,
        established, and as an implementation option, circuits that
        have been disconnected.  For circuits carried over
        transport connections, an entry is created after
        the CUR_cs was sent or received.  For circuits between
        two locally attached devices, or internal virtual MAC
        addresses, an entry is created when the equivalent of
        CUR_cs sent/received status is reached.

        End station 1 (S1) and End station 2 (S2) are used to
        represent the two end stations of the circuit.
        S1 is always an end station which is locally attached.
        S2 may be locally attached or remote.  If it is locally
        attached, the circuit will be represented by two rows indexed
        by (A, B) and (B, A) where A & B are the relevant MACs/SAPs.

        The table may be used to store the causes of disconnection of
        circuits.  It is recommended that the oldest disconnected
        circuit entry be removed from this table when the memory
        space of disconnected circuits is needed."                       ""                       >"The MAC Address of End Station 1 (S1) used for this circuit."                       6"The SAP at End Station 1 (S1) used for this circuit."                       T"The ifEntry index of the local interface through which S1
        can be reached."                       7"The DLC protocol in use between the DLSw node and S1."                       �"If source-route bridging is in use between the DLSw
        node and S1, this is the routing information field
        describing the path between the two devices.
        Otherwise the value will be an OCTET STRING of
        zero length."                      '"The Circuit ID assigned by this DLSw node to this circuit.
        The first four octets are the DLC port Id, and
        the second four octets are the Data Link Correlator.
        If the DLSw SSP was not used to establish this circuit,
        the value will be a string of zero length."                       �"Points to a conceptual row of the underlying DLC MIB,
        which could either be the standard MIBs (e.g., the SDLC),
        or an enterprise-specific DLC MIB."                       >"The MAC Address of End Station 2 (S2) used for this circuit."                       6"The SAP at End Station 2 (S2) used for this circuit."                      "The location of End Station 2 (S2).
        If the location of End Station 2 is local, the
        interface information will be available in the
        conceptual row whose S1 and S2 are the S2 and
        the S1 of this conceptual row, respectively."                       �"If the location of End Station 2 is remote,
        this value is the transport domain of the
        transport protocol the circuit is running
        over.  Otherwise, the value is 0.0."                       �"If the location of End Station 2 is remote,
        this object contains the address of the partner
        DLSw, else it will be an OCTET STRING of zero length."                      /"The Circuit ID assigned to this circuit by the partner
        DLSw node.  The first four octets are the DLC port Id, and
        the second four octets are the Data Link Correlator.
        If the DLSw SSP was not used to establish this circuit,
        the value will be a string of zero length."                       k"This object specifies which of the two end stations
        initiated the establishment of this circuit."                       n"The amount of time (in hundredths of a second) since this
        circuit table conceptual row was created."                       g"The amount of time (in hundredths of a second) since this
        circuit entered the current state."                      b"The current state of this circuit.  The agent, implementation
        specific, may choose to keep entries for some period of time
        after circuit disconnect, so the manager can gather the time
        and cause of disconnection.

        While all of the specified values may be returned from a GET
        operation, the only SETable value is 'disconnectPending'.
        When this value is set, DLSw should perform the appropriate
        action given its previous state (e.g., send HALT_DL if the
        state was 'connected') to bring the circuit down to the
        'disconnected' state.  Both the partner DLSw and local end
        station(s) should be notified as appropriate.

        This MIB provides no facility to re-establish a disconnected
        circuit, because in DLSw this should be an end station-driven
        function."                       "The transmission priority of this circuit as understood by
        this DLSw node.  This value is determined by the two DLSw
        nodes at circuit startup time.  If this DLSw node does not
        support DLSw circuit priority, the value 'unsupported' should
        be returned."                      I"The number of paced SSP messages that this DLSw is currently
        authorized to send on this circuit before it must stop and
        wait for an additional flow control indication from the
        partner DLSw.

        The value zero should be returned if this circuit is not
        running the DLSw pacing protocol."                      �"The current window size that this DLSw is using in its role
        as a data sender.  This is the value by which this DLSw would
        increase the number of messages it is authorized to send, if
        it were to receive a flow control indication with the bits
        specifying 'repeat window'.
        The value zero should be returned if this circuit is not
        running the DLSw pacing protocol."                      `"The current number of paced SSP messages that this DLSw has
        authorized the partner DLSw to send on this circuit before
        the partner DLSw must stop and wait for an additional flow
        control indication from this DLSw.

        The value zero should be returned if this circuit is not
        running the DLSw pacing protocol."                      �"The current window size that this DLSw is using in its role
        as a data receiver.  This is the number of additional paced
        SSP messages that this DLSw would be authorizing its DLSw
        partner to send, if this DLSw were to send a flow control
        indication with the bits specifying 'repeat window'.

        The value zero should be returned if this circuit is not
        running the DLSw pacing protocol."                      s"The largest receive window size granted by this DLSw during
        the current activation of this circuit.  This is not the
        largest number of messages granted at any time, but the
        largest window size as represented by FCIND operator bits.

        The value zero should be returned if this circuit is not
        running the DLSw pacing protocol."                      "The largest send (with respect to this DLSw) window size
        granted by the partner DLSw during the current activation of
        this circuit.

        The value zero should be returned if this circuit is not
        running the DLSw pacing protocol."                       �"The number of Halve Window operations this DLSw has sent on
        this circuit, in its role as a data receiver.

        The value zero should be returned if this circuit is not
        running the DLSw pacing protocol."                       �"The number of Reset Window operations this DLSw has sent on
        this circuit, in its role as a data receiver.

        The value zero should be returned if this circuit is not
        running the DLSw pacing protocol."                       �"The number of Halve Window operations this DLSw has received on
        this circuit, in its role as a data sender.

        The value zero should be returned if this circuit is not
        running the DLSw pacing protocol."                       �"The number of Reset Window operations this DLSw has received on
        this circuit, in its role as a data sender.
        The value zero should be returned if this circuit is not
        running the DLSw pacing protocol."                       �"The reason why this circuit was last disconnected, as seen
        by this DLSw node.

        This object is present only if the agent keeps circuit
        table entries around for some period after circuit disconnect."                      �"The generic reason code why this circuit was last
        disconnected, as reported by the DLSw partner in a HALT_DL
        or HALT_DL_NOACK.  If the partner does not send a reason
        code in these messages, or the DLSw implementation does
        not report receiving one, the value 'unknown' is returned.

        This object is present only if the agent keeps circuit table
        entries around for some period after circuit disconnect."                      �"Implementation-specific data reported by the DLSw partner in
        a HALT_DL or HALT_DL_NOACK, to help specify how and why this
        circuit was last disconnected.  If the partner does not send
        this data in these messages, or the DLSw implementation does
        not report receiving it, a string of zero length is returned.

        This object is present only if the agent keeps circuit table
        entries around for some period after circuit disconnect."                           +"The number of entries in dlswSdlcLsTable."                       |"The table defines the virtual MAC addresses for those
        SDLC link stations that participate in data link switching."                       �"The index of this table is the ifIndex value for the
        SDLC port which owns this link station and the poll
        address of the particular SDLC link station."                       t"The virtual MAC address used to represent the SDLC-attached
        link station to the rest of the DLSw network."                       ."The SAP used to represent this link station."                       �"The block number is the first three digits of the node_id,
        if available.  These 3 hexadecimal digits identify the
        product."                      *"The ID number is the last 5 digits of the node_id, if
        available.  These 5 hexadecimal digits are
        administratively defined and combined with the 3 digit
        block number form the node_id.  This node_id is used to
        identify the local node and is included in SNA XIDs."                       �"The MAC address to which DLSw should attempt to connect
        this link station. If this information is not available,
        a length of zero for this object should be returned."                       �"The SAP of the remote station to which this link
        station should be connected.  If this information
        is not available, a length of zero for this object
        should be returned."                       �"This object is used by the manager to create
        or delete the row entry in the dlswSdlcLsTable
        following the RowStatus textual convention."                           �"This trap is sent each time a transport connection
        is rejected by a partner DLSw during Capabilities
        Exchanges.  The emission of this trap is controlled
        by dlswTrapCntlTConnPartnerReject."                 �"This trap is sent each time a protocol violation is
        detected for a transport connection.  The emission of this
        trap is controlled by dlswTrapCntlTConnProtViolation."                 �"This trap is sent each time a transport connection
        enters 'connected' state.  The emission of this trap
        is controlled by dlswTrapCntlTConn."                 �"This trap is sent each time a transport connection
        enters 'disconnected' state.  The emission of this trap
        is controlled by dlswTrapCntlTConn."                 �"This trap is sent each time a circuit enters 'connected'
        state.  The emission of this trap is controlled by
        dlswTrapCntlCircuit."                 �"This trap is sent each time a circuit enters 'disconnected'
        state.  The emission of this trap is controlled by
        dlswTrapCntlCircuit."                                 3"The core compliance statement for all DLSw nodes."   p"The DLSw NetBIOS Node group is mandatory only for
                those DLSw entities that implement NetBIOS." �"The DLSw NetBIOS Transport Connection group is
                mandatory only for those DLSw entities that
                implement NetBIOS." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required."             U"Compliance for DLSw nodes that use TCP as a
        transport connection protocol."   "Write access is not required." "Write access is not required." "Write access is not required."             G"Compliance for DLSw nodes that provide a directory
        function."   k"The DLSw NetBIOS group is mandatory only for
                those DLSw entities that implement NetBIOS." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required."             l"Compliance for DLSw nodes that provide an ordered
        list of directory entries for a given resource."   k"The DLSw NetBIOS group is mandatory only for
                those DLSw entities that implement NetBIOS."             ."Compliance for DLSw nodes that support SDLC."   "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required."                 6"Conformance group for DLSw node general information."                 k"Conformance group for DLSw node general information
        specifically for nodes that support NetBIOS."                 F"Conformance group for statistics for transport
        connections."                 L"Conformance group for the configuration of
        transport connections."                 Q"Conformance group for operation information for
        transport connections."                 �"Conformance group for operation information for
        transport connections, specifically for nodes
        that support NetBIOS."                 _"Conformance group for configuration information for
        transport connections using TCP."                 ["Conformance group for operation information for
        transport connections using TCP."                 ("Conformance group for DLSw interfaces."                 D"Conformance group for DLSw directory using MAC
        addresses."                 D"Conformance group for DLSw directory using NetBIOS
        names."                 f"Conformance group for a node that can return directory
        entry order for a given MAC address."                 g"Conformance group for a node that can return directory
        entry order for a given NetBIOS name."                 2"Conformance group for statistics about circuits."                 &"Conformance group for DLSw circuits."                 *"Conformance group for DLSw SDLC support."                 +"Conformance group for DLSw notifications."                            