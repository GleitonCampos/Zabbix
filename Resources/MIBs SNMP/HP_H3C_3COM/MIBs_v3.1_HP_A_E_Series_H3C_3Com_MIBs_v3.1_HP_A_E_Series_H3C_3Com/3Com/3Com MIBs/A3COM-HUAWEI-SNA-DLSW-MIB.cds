{-- =============================================================
-- Copyright IETF . All rights reserved.
--
-- Description: This file describes the huawei mib implementation of dlsw
-- Reference:  extracted from RFC2024 and modified.
-- Version: V1.3
-- History:
--         for V1.0
--      dlswNodeUpTime is obsolete
--	dlswRemotePeerNumOfTcpSessions is obsolete
--	dlswRemotePeerSetStateToConfig is obsolete
--	dlswCircuitS2Location is obsolete
--	dlswCircuitPriority is obsolete
--	dlswCircuitFCLargestRecvGranted is obsolete
--	dlswCircuitFCLargestSendGranted is obsolete
--	dlswSdlcPortNrziEncoding is obsolete
--	dlswSdlcPortIdleMarkEnable is obsolete
--	the value of dlswRemotePeerKeepAlive is changed from (1-1200) to (1-60000) 
--      V1.1 9th Dec 2003
--		a3comoemrouter.mib added
--      V1.2 2004-11-03 updated by lizhiyong
--        Modify IMPORTS clause, imports some types.
--        Delete some comments
--        Delete huawei from IMPORTS clause
--        Rewrite trap object with SMIv2 syntax. Including
--          dlswTrapTConnPartnerReject,
--          dlswTrapTConnChangeState,
--          dlswTrapCircuitChangeState
--        Adding dlswTrapsV2 object for compatible with SNMPv1 trap.
--        Change some INTEGER syntax to Integer32 syntax
--   V1.3 shejunquan 2006-06-28
--        Modify range of 4 nodes. Including
--          dlswNodeConnTimeout,
--          dlswNodeLocalPendTimeout,
--          dlswNodeRemotePendTimeout,
--          dlswNodeSnaCacheTimeout     
--        Modify default value of dlswNodeLocalPendTimeout.
-- =============================================================
   "The status of a table entry."               W"Representing the location of an end station related
       to the managed DLSw node."               H"Representing the type of DLC of an end station, if
       applicable."               �"Represents an 802 MAC address represented in
       non-canonical format.  That is, the most significant
       bit will be transmitted first.  If this information
       is not available, the value is a zero length string."               �"The largest size of the INFO field (including DLC header,
       not including any MAC-level or framing octets).
       64 valid values as defined by the IEEE 802.1D
       Addendum are acceptable."               �"The 'DeleteLine' value means deleting a conceptual row object.
          The 'createLine' value means adding a conceptual row object."                                 "private mib for dlsw" �"Platform Team Beijing Institute Huawei-3com Tech, Inc.
			Http://www.huawei-3com.com                                       
			E-mail:support@huawei-3com.com "                  }"This value identifies the particular version of the DLSw
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
        scheme but never varies its receive window size."                       ."The status of the DLSw part of the system.  "                      5"The amount of time (in hundredths of a second) since
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
        the RIF (Routing Information Field)."                       "Local peer ip address. "                       I" The priority value of local peer. 65535 expresses the value is unknown"                       @"The vlaue of init-window. 65535 expresses the value is unknown"                       G"The vlaue of keepalive interval. 65535 expresses the value is unknown"                       ?"The value of max-window. 65535 expresses the value is unknown"                       a"To accept connections from non-configured remote peers when 
       permit-dynamic is setted. "                       O"Define connected state timer(The unit is a thousandth of a 
       second). "                       N"Define connected state timer(The unit is a thousandth of a 
       second)."                       O"Define connected state timer(The unit is a thousandth of a 
       second). "                       O"Define connected state timer(The unit is a thousandth of a 
       second). "                           H"It is used to indicate whether the DLSw is permitted to emit  traps.  "                           '"A list of tcp transport connections. "                       #"A list of remote peer information"                       9"The remote peer address for this transport connection. "                      �"This value identifies which version (first octet) and release
        (second octet) of the DLSw standard is supported by this
        partner DLSw. This information is obtained from a DLSw
        capabilities exchange message received from the partner DLSw.
        A string of zero length is returned before a Capabilities
        Exchange message is received, or if one is never received.
        A conceptual row with a dlswTConnOperState of `connected' but
        a zero length partner version indicates that the partner is
        a non-standard DLSw partner.

        If an implementation chooses to keep dlswTConnOperEntrys in
        the `disconnected' state, this value should remain unchanged."                      "This value identifies the IEEE-assigned organizationally
        Unique Identifier (OUI) of the maker of this partner
        DLSw.  This information is obtained from a DLSw
        capabilities exchange message received from the partner DLSw.
        A string of zero length is returned before a Capabilities
        Exchange message is received, or if one is never received.

        If an implementation chooses to keep dlswTConnOperEntrys in
        the `disconnected' state, this value should remain unchanged."                      �"The value of the partner initial receive pacing window.  This
        is our initial send pacing window for all new circuits on this
        transport connection, as modified and granted by the first flow
        control indication the partner sends on each circuit.
        This information is obtained from a DLSw capabilities exchange
        message received from the partner DLSw.
        A value of zero is returned before a Capabilities
        Exchange message is received, or if one is never received.

        If an implementation chooses to keep dlswTConnOperEntrys in
        the `disconnected' state, this value should remain unchanged."                       "Number of TCP sessionss. "                      �"This value identifies the particular product version (e.g.,
        product name, code level, fix level) of this partner DLSw.
        The format of the actual version string is vendor-specific.
        This information is obtained from a DLSw capabilities exchange
        message received from the partner DLSw.
        A string of zero length is returned before a Capabilities
        Exchange message is received, if one is never received, or
        if one is received but it does not contain a version string.
        If an implementation chooses to keep dlswTConnOperEntrys in
        the `disconnected' state, this value should remain unchanged."                       A"The current remote peer is configrured when the value is 'yes'."                       i"When the value is set 'yes' from 'no',  dlswRemotePeerIsConfig 
       will change from 'no' to 'yes'."                       "The cost for remote peer. "                        "The keepalive interval value. "                       "The the largest frame size. "                       "The max tcp queue value. "                       h"There is another remote peer whitch is configrued as the 
       backup of the current remote peer . "                       c"The current remote peer is configrued as the 
       backup of another configured remote peer . "                       {"It is the IP ADDRESS of an configured remote peer of whitch 
       the current remote peer is configrued as the backup "                       "Buckup Peer linger"                       ."The state of this tcp transport connection. "                       m"The number of Switch-to-Switch Protocol (SSP) messages 
        received on this tcp transport connection."                       i"The number of Switch-to-Switch Protocol (SSP) messages 
        sent on this tcp transport connection."                       l"The number of Switch-to-Switch Protocol (SSP) messages 
        dropped on this tcp transport connection."                       p"The amount of time (in  seconds ) since this transport
        connection last entered the 'connected' state."                       �"This object is used by the manager to create
        or delete the row entry in the dlswRemotePeerTable
        following the EntryStatus textual convention.  "                           3"The list of bridge group whitch has been created."                        "The list of bridge information"                       ," This value identifies the bridge number ."                       �"The 'DeleteLine' value means deleting a conceptual row object.
        The 'createLine' value means adding a conceptual row object."                       1"The list of interfaces on which DLSw is active."                       *"The list of bridge interface information"                       N" This value identifies the bridge number attached 
       to the interface."                       " The name of the interface. "                       Z" This value whitch is equal to 'invalid' identifies to 
       delete a conceptual row "                           W"This table contains locations of MAC addresses.
        They are local and reachable"                       "Information of table"                       " The hash value."                       )" The sequence num with smae hash value."                       " The MAC address. "                       T" The value is the interface name when 
       dlswLocMacLocationType is 'local'. "                          �"This table is the circuit representation in the DLSw
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
        space of disconnected circuits is needed."                       !"the list of circuit information"                      '"The Circuit ID assigned by this DLSw node to this circuit.
        The first four octets are the DLC port Id, and
        the second four octets are the Data Link Correlator.
        If the DLSw SSP was not used to establish this circuit,
        the value will be a string of zero length."                       >"The MAC Address of End Station 1 (S1) used for this circuit."                       6"The SAP at End Station 1 (S1) used for this circuit."                       >"The MAC Address of End Station 2 (S2) used for this circuit."                       6"The SAP at End Station 2 (S2) used for this circuit."                       T"The ifEntry index of the local interface through which S1
        can be reached."                       @"The name of the interface whose Ifdex is dlswCircuitS1IfIndex."                       7"The DLC protocol in use between the DLSw node and S1."                      "The location of End Station 2 (S2).
        If the location of End Station 2 is local, the
        interface information will be available in the
        conceptual row whose S1 and S2 are the S2 and
        the S1 of this conceptual row, respectively."                       �"If the location of End Station 2 is remote,
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
        operation, the only SETable value is `disconnectPending'.
        When this value is set, DLSw should perform the appropriate
        action given its previous state (e.g., send HALT_DL if the
        state was `connected') to bring the circuit down to the
        `disconnected' state.  Both the partner DLSw and local end
        station(s) should be notified as appropriate.

        This MIB provides no facility to re-establish a disconnected
        circuit, because in DLSw this should be an end station-driven
        function."                       "The transmission priority of this circuit as understood by
        this DLSw node.  This value is determined by the two DLSw
        nodes at circuit startup time.  If this DLSw node does not
        support DLSw circuit priority, the value `unsupported' should
        be returned."                      I"The number of paced SSP messages that this DLSw is currently
        authorized to send on this circuit before it must stop and
        wait for an additional flow control indication from the
        partner DLSw.

        The value zero should be returned if this circuit is not
        running the DLSw pacing protocol."                      �"The current window size that this DLSw is using in its role
        as a data sender.  This is the value by which this DLSw would
        increase the number of messages it is authorized to send, if
        it were to receive a flow control indication with the bits
        specifying `repeat window'.
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
        indication with the bits specifying `repeat window'.

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
        running the DLSw pacing protocol."                           Y"The table defines parameters for the interfaces with the 
       encapunation of SDLC."                       "Information of table"                       "The name of serial port. "                       %"The encapunation of the interface. "                       "The SDLC role of interface. "                       "Define virtual mac address. "                       "Size of hold queue."                       "Size of local send window. "                       "Size of modulus. "                       *"Max number of bits for incoming frames. "                       *"Number of timers to retry an operation. "                       c"Time between polls for each secondary SDLC station. 
       The unit is thousandth of a second. "                       +"Activate SDLC two-way simultaneous mode. "                       '"Time to wait for a reply to a frame. "                       6"Time to wait for a reply used by secondary station. "                       '"Set line code to nrzi encoding mode. "                       "Idle in mark mode. "                       |"The table defines the virtual MAC addresses for those
        SDLC link stations that participate in data link switching."                       "Information of table"                       "Define SDLC address.  "                       " The value is XID. "                       �"The MAC address to which DLSw should attempt to connect
        this link station. If this information is not available,
        a length of zero for this object should be returned "                       " Source SAP of partner. "                       " Destination SAP of partner. "                       �" This object is used by the manager to create
        or delete the row entry in the DlswSdlcLsTable
        following the EntryStatus textual convention."                           Y"The table defines parameters for the interfaces with the 
       encapunation of Llc2."                       "Information of table"                       8"Max time allows I-frames incoming without replay ACK. "                       ."Max number of I-frames received before ACK. "                       6"Max number of I-frames to send before received ACK. "                       " Modulus of LLC2. "                       "Retry times of operations. "                       -"Waiting for ACK time after sent a I-frame. "                       :"Waiting time while other LLC2 station is in busy state. "                       ("Waiting time after a P frame is sent. "                       *"Waiting time after a REJ frame is sent. "                       #"Queue for sending llc2 I-frames. "                               �"This trap is sent each time a transport connection
        is rejected by a partner DLSw during Capabilities
        Exchanges.  The emission of this trap is controlled
        by dlswTrapCntlState."                 �"This trap is sent each time a transport connection
        changes state.  The emission of this trap
        is controlled by dlswTrapCntlState."                 �"This trap is sent each time a circuit change
        state.  The emission of this trap is controlled by
        dlswTrapCntlState."                                