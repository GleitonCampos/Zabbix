�-- ====================================================================
-- Copyright (C) 2005 by HUAWEI 3Com TECHNOLOGIES.  All rights reserved
--
-- Description: DLSW HUAWEI 3Com Specific Features MIB
-- Reference: RFC2024
-- Version: V1.0
-- History:
--  V1.0  2005-07-20, LiuYingquan
--    Initial version
-- ====================================================================
                                                 �"The MIB module for management of HUAWEI-3COM specific Data Link
         Switching protocol enhancements. DLSw is described in
         RFC 1795, RFC 2024 and RFC2166."&"R&D Beijing Huawei-3com Technologies Co., Ltd.
         Oriental Electronic Bld., NO.1, Street 8,
         Shang-Di Information Industry Base,
         Hai-Dian District, Beijing, P.R. China
         Zip:100085
         Http://www.huawei-3com.com
         E-mail:support@huawei-3com.com" "200507201900Z" %"Initial version of this MIB module."       -- Jul 20, 2005 at 19:00 GMT
               �"The value identifies the manufacturer's IEEE-assigned
        Organizationally Unique Identifier (OUI) of this DLSw.
        This information is reported in DLSw Capabilities
        Exchange." +"DLSW: Switch-to-Switch Protocol RFC 1795."                     '"The type of ip address: IPv4 or IPv6."                       �"Local peer ip address. This ip address must have been
        configured for a port on the router. If no local peer
        ip address is configured, then this object will be the
        empty string."                     -- the empty string
�"Peer priority advertised to remote peers in the DLSw Capabilities
        Exchange. If an end station can reach through more
        than one peer, the priority of each peer will be considered when
        a circuit is established.
        A lower priority indicates that peer will be the
        preferred choice if there are more than one path to the
        destination. A value of 65535 indicates the value is meaningless."                      �"Initial pacing window size. This is the starting size of the
        pacing window. DLSw uses an adaptive pacing flow control
        algorithm that automatically adjusts to congestion levels in
        the network. Pacing windows are used to control how many packets
        may be sent to a peer before acknowlegement.
        A value of 65535 indicates the value is meaningless."                      T"Maximum pacing window size. This is the largest size that
        the pacing window will grow to. DLSw uses an adaptive pacing
        flow control algorithm that automatically adjusts to congestion
        levels in the network. Pacing windows are used to control
        how many packets may be sent to a peer before acknowlegement."                      f"Default remote peer keepalive interval in seconds.
        The keepalive parameter refers to how often DLSw peers
        send peer keep alives to each other. These periodic messages
        allow DLSw to keep track of the state of all peers.
        If set to zero, no keepalives are sent.
        A value of 65535 indicates the value is meaningless."                       a"To accept connections from non-configured remote peer when
        permitDynamic is specified."                       "Define connected state timer."                       "Define connected state timer."                       "Define connected state timer."                       "Define connected state timer."                       "Define explorer timer."                        "Define explorer waiting timer."                      �"The SAP list indicates which SAPs are allowed.
        Only SAPs with even numbers are represented,
        in the form of the most significant bit of the first
        octet representing the SAP 0, the next most significant
        bit representing the SAP 2, to the least significant
        bit of the last octet representing the SAP 254. Data
        link switching is allowed for those SAPs which have
        one in its corresponding bit, not allowed otherwise.
        The whole SAP list has to be changed together. Changing
        the SAP list affects only new circuit establishments
        and has no effect on established circuits.

        This list can be used to restrict specific partners
        from knowing about all the SAPs used by DLSw on all its
        interfaces (these are represented in h3cdeIfSapList for
        each interface). For instance, one may want to run NetBIOS
        with some partners but not others.

        If a node supports sending run-time capabilities exchange
        messages, changes to this object should cause that action.
        When to start the run-time capabilities exchange is
        implementation-specific.

        The DEFVAL below indicates support for SAPs 0, 2, 4, 6, 8, A, C and E."                       F"The maximum retry times for TCP packet.
        Default value is 5."                       6"Multicast support status. It is disabled by default."                       �"Multicast address. Default is 224.0.10.0.
        When the h3cdeNodeMulticastStatus is disabled,
        the multicast address is reset to 0.0.0.0."                       I"Reset all TCP circuit switch.
        Any return value is meaningless."                       4"Tcp number reported in DLSw Capabilities Exchange."                       "The max length of TCP queue."                           �"This table defines the peer transport connections
        that will be initiated or accepted by this DLSw.

        This table augments dlswTConnConfigTable."                       e"A list of objects that define specific configuration for
        a DLSw peer transport connection."                      �"This value identifies which version (first octet) and release
        (second octet) of the DLSw standard is supported by this
        partner DLSw. This information is obtained from a DLSw
        Capabilities Exchange message received from the partner DLSw.
        A string of zero length is returned before a Capabilities
        Exchange message is received, or if one is never received.
        A conceptual row with a h3cdeTConnOperState of 'connected' but
        a zero length partner version indicates that the partner is
        a non-standard DLSw partner.

        If an implementation chooses to keep h3cdeTConnOperEntrys in
        the 'disconnected' state, this value should remain unchanged."                       "The priority for remote peer."                       "The largest frame size."                       "The keepalive interval value."                       a"The current remote peer is configured as the
        backup of another configured remote peer."                       u"It is the ip address of a configured remote peer of which
        the current remote peer is configrued as backup."                       "Backup peer linger."                       �"A list of peer transport connections.
        Each connected peer will create a conceptual row in the table.
        When the peer disconnects, the row will be deleted from the table.

        This table augments dlswTConnOperTable."                       p"A list of objects that contain spefific operational
        information for a DLSw peer transport connection."                       G"The current remote peer is configured when the value is 'configured'."                       y"The value identifies the manufacturer's IEEE-assigned
        Organizationally Unique Identifier (OUI) of remote peer."                       A"Version information of remote peer. The length up to 512 bytes."                       n"The amount of time (in seconds) since this transport
        connection last entered the 'connected' state."                       Y"When remote peer supports DLSw2.0, this node identifies
        its multicast address."                       7"Number of tcp supported when capabilities exchanging."                       l"The number of Switch-to-Switch Protocol (SSP) messages
        received on this tcp transport connection."                       L"The number of SSP messages
        sent on this tcp transport connection."                       O"The number of SSP messages
        dropped on this tcp transport connection."                      R"This table defines the TCP transport connections that
        will be either initiated by or accepted by this DSLw.
        It augments the entries in dlswTConnConfigTable whose
        domain is dlswTCPDomain. In other words for each conceptual row
        in the dlswTConnConfigTable, if the dlswTConnConfigTDomain is
        dlswTCPDomain, that conceptual row will be augmented by this
        table.

        dlswTCPDomain, dlswTConnConfigTable, and dlswTConnConfigTDomain
        are all imported from DLSW-MIB (RFC 2024).

        This table augments dlswTConnTcpConfigTable."                       �"A list of objects that define specific configuration for
        a DLSw peer transport connection within the dlswTCPDomain.
        dlswTCPDomain is imported from DLSW-MIB (RFC 2024)."                      ="Maximum output TCP queue size for this remote peer.
        For DLSw over TCP encapsulation, packets may be queued
        due to congestion of the TCP network. This variable
        is used to set the output queue maximum of the underlying
        TCP connection for the peer represented by the conceptual row."                           3"A list of bridge group which is serving for DLSw."                       "A list of bridge information."                       *"This value identifies the bridge number."                       "RowStatus."                       0"The list of interface on which DLSw is active."                       +"The list of bridge interface information."                       M"This value identifies the bridge number attached
        to the interface."                       "RowStatus."                           g"The table defines attributes related for those
        QLLC that participate in data link switching."                       C"The ifIndex belongs to the interface which link protocol is x.25."                       "X.121 address."                       t"The virtual MAC address used to represent the QLLC-attached
        link station to the rest of the DLSw network."                       ."The SAP used to represent this link station."                       �"The MAC address to which DLSw should attempt to connect
        this link station. If this information is not available,
        a length of zero for this object should be returned."                       �"The SAP of the remote station to which this link
        station should be connected. If this information
        is not available, a length of zero for this object
        should be returned."                       "RowStatus."                           W"The table defines parameters for the interfaces
        whose link protocol is SDLC."                       "Sdlc port entry."                       "The SDLC role of interface."                       "Size of local send window."                       "Size of modulus."                       $"Maximum bytes for incoming frames."                       "Size of hold queue."                       ("Number of times to retry an operation."                       *"Activate SDLC two-way simultaneous mode."                       &"Time to wait for a reply to a frame."                       5"Time to wait for a reply used by secondary station."                       5"Time between polls for each secondary SDLC station."                       "RowStatus."                           ;"This table defines parameters for the Ethernet interface."                       "LLC2 port entry."                       *"Maximum of I-frames received before ACK."                       "Maximum of LLC2 pdu length."                       ""Queue for sending llc2 I-frames."                       "Retry times of operations."                       "Modulus of LLC2."                       9"Maximum number of I-frames to send before received ACK."                       0"Waiting for ACK time after sending an I-frame."                       ;"Maximum time allows I-frames incoming without replay ACK."                       "Detect the link status."                       9"Waiting time while other LLC2 station is in busy state."                       '"Waiting time after a P frame is sent."                       )"Waiting time after a REJ frame is sent."                       "RowStatus."                                "Maximum of h3cdeRchCacheIndex."                      �"The next value of h3cdeRchCacheIndex to be assigned by
        the agent. A retrieval of this object atomically reserves
        the returned value for use by the manager to create a row
        in h3cdeRchCacheTable. This makes it possible for the agent
        to control the index space of the MAC address cache, yet
        allows the manager to administratively create new rows."                       "Reachable cache table."                       "Reachable cache entry."                       !"Index of reachable cache entry."                       *"Current status of reachable cache entry."                       '"Remain time of reachable cache entry."                       '"MAC address of reachable cache entry."                       "Remote peer ip address type."                       2"Remote peer ip address of reachable cache entry."                       "RowStatus."                                "Maximum of h3cdeEBMacMapIndex."                      �"The next value of h3cdeEBMacMapIndex to be assigned by
        the agent. A retrieval of this object atomically reserves
        the returned value for use by the manager to create a row
        in h3cdeEBMacMapTable. This makes it possible for the agent
        to control the index space of the MAC mapping tables, yet
        allows the manager to administratively create new rows."                       D"Information of interface which works for DLSw Ethernet redundancy."                       <"Parameters defined for DLSw Ethernet redundancy interface."                       �"Multicast MAC address configured for the Ethernet
        redundancy of dlsw module. When Ethernet redundancy
        is inactive, its value is '000000000000'H.
        To active Ethernet redundancy, give it a valid multicast MAC address."                       A"Priority configured for the Ethernet redundancy of DLSw module."                       3"Timer for the Ethernet redundancy of DLSw module."                       "RowStatus."                       "MAC address mapping table."                       "MAC address mapping entry."                       %"Index of MAC address mapping entry."                       �"Local MAC address in MAC address mapping.
        When creating a new conceptual row, h3cdeEBMacMapLocalMac
        and h3cdeEBMacMapRemoteMac should be set simultaneously."                       �"Remote MAC address of MAC address mapping.
        When creating a new conceptual row, h3cdeEBMacMapLocalMac
        and h3cdeEBMacMapRemoteMac should be set simultaneously."                       #"Neighbour of MAC address mapping."                       &"Status of MAC address mapping entry."                                      