�-- ============================================================================
-- Copyright (c) 2004-2010 Hangzhou H3C Tech. Co., Ltd. All rights reserved.
--
-- Description: Lawful Interception MIB
-- Reference:
-- Version: V1.0
-- History:
--   V1.0 2009-08-25 Initial version Created by Lixin Xu
-- ============================================================================
                                                                         "Lawful Interception MIB" �"Platform Team Hangzhou H3C Tech. Co., Ltd.
         Hai-Dian District Beijing P.R. China
         http://www.h3c.com
         Zip:100085" "200908251000Z" "Initial version."                       "It is a slot number."                               �"This Notification is sent when a type of intercepting configuration
        is changed from inactive to active.
        The value of the h3cLIStreamtype which identify the actual intercept
        stream is included in this notification."                 �"When the time specified in h3cLIMediationTimeout arrives,
        the device notifies the manager corresponding intercept is removed."                 �"When interception is configured on distributed device,
        the configuration perhaps failed on some board.
        If this happened, this notification will occur."                     �"This object will be used as an index value for a new
        h3cLIMediationEntry.  Whenever read, the agent will
        give a non-used value.  This is to reduce the probability
        of conflict during creation of new h3cLIMediationTable entries."                       m"This table describes interception gateway information with which
        interception device communicates."                       +"An entry of configuring mediation device."                      >"h3cLIMediationIndex is a entry identifier.  The Mediation Device
            should be responsible for making sure these are unique.
            Before creating a new entry, a value for this variable may be
            obtained by reading h3cLINewIndex to reduce the probability
            of a value collision."                       %"The type of h3cLIMediationDestAddr."                       H"The IP Address of the Mediation Device to receive intercepted traffic."                       V"The L4-port number on the Mediation Device
         to receive intercepted traffic."                       �"The interface on the intercepting device from which to
        transmit intercepted data.
        If zero, intercepting device will select an outbound
        interface according to h3cLIMediationDestAddr."                       �"The Differentiated Services Code Point the intercepting
        device applies to the IP packets encapsulating the intercepted traffic."                       �"The time at which this row and all related Stream Table rows
        should be automatically removed, and the intercept function expire."                       V"The protocol used in transferring intercepted data to the
        Mediation Device."                       w"This variable controls the generation of any notifications or
        informs by the MIB agent for this table entry."                       '"Operation status of this table entry."                      J"This table lists the traffic stream's type to be intercepted.
         The specified filter is defined in h3cLIIPStreamTable,
         h3cLIMACStreamTable or h3cLIUserStreamTable, according to
         h3cLIStreamtype.  Also it contains counters for packets to
         be intercepted and dropped by attached type of filter."                       1"A single type of data stream to be intercepted."                        "The index of the stream entry."                      5"Identifies the type of stream, and according to it uses filter table.
        It can not be changed after a filter table is attached to it.
        The following types of streams are supported:
         ip:             IP filter.  The exact definition is a row in
                         h3cLIIPStreamTable.
         mac:            MAC filter.  The exact definition is a row in
                         h3cLIMACStreamTable.
         userConnecton:  User connection filter.  The exact definition
                         is a row in h3cLIUserStreamTable."                       �"If 'true', the interception is active.  And it is set to 'true'
         only after an additional filter specification has been attached
         to this stream."                       4"The numbers of packets that have been intercepted."                       F"The numbers of packets were dropped in the lawful intercept process."                       o"The numbers of packets have been intercepted.
        This object is a 64-bit version of h3cLIStreamPackets."                       �"The numbers of packets were dropped in the lawful intercept process.
        This object is a 64-bit version of h3cLIStreamDrops."                       '"Operation status of this table entry."                               �"This table lists the IPv4 and IPv6 streams to be intercepted.
        It is associated with h3cLIMediationTable and h3cLIStreamTable."                      L"A single stream to be intercepted.
        The first index indicates the Mediation Device.
        The second index is that of the stream's counter entry
        in the h3cLIStreamTable.  The second index permits multiple
        classifiers to be used together, such as having an IP address
        as source or destination."                      u"Traffic received or transmitted over this interface
         will be intercepted.

         This value must be set when creating a stream entry,
         either zero, or a valid interface index.

         If the value is zero, interception accepts any interface.
         Then at least one additional parameter must be selected,
         and not be default value."                       0"The type of address, used in packet selection."                       �"The Destination address  used in packet selection.
        This address will be consistent with the type specified in
        h3cLIIPStreamAddrType."                       �"The length of the Destination Prefix.  A value of zero means
        all addresses to match.  This prefix length will be consistent
        with the type specified in h3cLIIPStreamAddrType."                       �"The Source Address used in packet selection.  This address will
        be consistent with the type specified in h3cLIIPStreamAddrType."                       �"The length of the Source Prefix.  A value of zero means all
        addresses to match.  This prefix length will be consistent with
        the type specified in h3cLIIPStreamAddrType."                       �"The value of the TOS byte.
        If h3cLIIPStreamTosByte&(~h3cLIIPStreamTosByteMask)!=0,
        configuration is rejected."                      "This value is ANDed with the value of the TOS byte in a packet
         and compared with h3cLIIPStreamTosByte.  If the values are equal,
         the comparison is equal.
         If both the mask and the TosByte value are zero,
         the result is to always accept."                       ["The flow identifier in an IPv6 header.  -1 indicates that the
        Flow Id is unused."                     -- any flow identifier value
 s"The IP protocol to match against the IPv4 protocol number or
        the IPv6 Next- Header number in the packet."                     -- any IP protocol
"The minimum value that the layer-4 destination port number in
         the packet must have in order to match.  This value must be
         equal to or less than the value specified for this entry in
         h3cLIIPStreamDestL4PortMax.

         If both h3cLIIPStreamDestL4PortMin and h3cLIIPStreamDestL4PortMax
         are at their default values, the port number is effectively unused.
         If h3cLIIPStreamDestL4PortMin is equal to
         h3cLIIPStreamDestL4PortMax, only one port number to be intercepted."                      %"The maximum value that the layer-4 destination port number in
         the packet must have in order to match this classifier entry.
         This value must be equal to or greater than the value specified
         for this entry in h3cLIIPStreamDestL4PortMin.
         If both h3cLIIPStreamDestL4PortMin and h3cLIIPStreamDestL4PortMax
         are at their default values, the port number is effectively unused.
         If h3cLIIPStreamDestL4PortMin is equal to h3cLIIPStreamDestL4PortMax,
         only one port number to be intercepted."                      "The minimum value that the layer-4 destination port number in
         the packet must have in order to match.  This value must be
         equal to or less than the value specified for this entry in
         h3cLIIPStreamSrcL4PortMax.
         If both h3cLIIPStreamSrcL4PortMin and h3cLIIPStreamSrcL4PortMax
         are at their default values, the port number is effectively unused.
         If h3cLIIPStreamSrcL4PortMin is equal to
         h3cLIIPStreamSrcL4PortMax, only one port number to be intercepted."                       "The maximum value that the layer-4 destination port number in
         the packet must have in order to match this classifier entry.
         This value must be equal to or greater than the value specified
         for this entry in h3cLIIPStreamSrcL4PortMin.
         If both h3cLIIPStreamSrcL4PortMin and h3cLIIPStreamSrcL4PortMax
         are at their default values, the port number is effectively unused.
         If h3cLIIPStreamSrcL4PortMin is equal to h3cLIIPStreamSrcL4PortMax,
         only one port number to be intercepted."                       D"It is the name of a Virtual Routing and Forwarding (VRF) of a VPN."                       '"Operation status of this table entry."                               �"This table lists the IEEE 802 streams to be intercepted.
        It is associated with h3cLIMediationTable and h3cLIStreamTable."                      M"A single stream to be intercepted.
        The first index indicates the Mediation Device.
        The second index is that of the stream's counter entry
        in the h3cLIStreamTable.  The second index permits multiple
        classifiers to be used together, such as having an MAC address
        as source or destination."                      �"This object displays what attributes will be compared to
         identify traffic.
         interface:     indicates that traffic on the stated
                                interface is to be intercepted
         dstMacAddress: indicates that traffic destined to a
                                given address should be intercepted
         srcMacAddress: indicates that traffic sourced from a
                                given address should be intercepted
         ethernetPid:   indicates that traffic with a stated
                                Ethernet Protocol Identifier should
                                be intercepted
         dSap:          indicates that traffic with an certain
                                802.2 LLC Destination SAP should be
                                intercepted
         sSap:          indicates that traffic with an certain
                                802.2 LLC Source SAP should be intercepted

         At least one of the bits has to be set in order to activate an
         entry.  If multiple bits are set, traffic to be intercepted must
         be satisfied with all set attributes."                      D"Traffic received or transmitted over this interface
         will be intercepted.
         This value must be set when creating a stream entry,
         either zero, or a valid interface index.
         If the value is zero, interception accepts any interface.
         Additional parameter must be selected together."                       3"The Destination address used in packet selection."                       ."The Source Address used in packet selection."                       l"The value of the Ethernet Protocol Identifier in the
        Ethernet traffic or IEEE 802.2 SNAP traffic."                       ."The value of the IEEE 802.2 Destination SAP."                       )"The value of the IEEE 802.2 Source SAP."                       '"Operation status of this table entry."                               �"This table lists the user connection streams to be intercepted.
        It is associated with h3cLIMediationTable and h3cLIStreamTable."                       "A single stream to be intercepted.
        The first index indicates the Mediation Device.
        The second index is that of the stream's counter entry
        in the h3cLIStreamTable.  This permits multiple classifiers
        to be used together."                       p"This is the RADIUS attribute 44 acct-session-ID.
         The string must be set, and the length not be zero."                       '"Operation status of this table entry."                              