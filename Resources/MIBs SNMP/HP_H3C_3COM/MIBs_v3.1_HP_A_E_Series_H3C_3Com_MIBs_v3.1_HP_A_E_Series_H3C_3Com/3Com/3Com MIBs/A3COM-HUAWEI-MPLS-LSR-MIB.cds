�-- =========================================================================
-- Copyright (C) 2001,2002 by  HUAWEI TECHNOLOGIES. All rights reserved.
--
-- Description:This file describes the mib implementation of mpls lsr.
-- Reference:Huawei-3com enterprise MIB
-- Version: V1.0
-- History:
-- 	    V1.0 6th Mar 2004
--		Initial version
-- =========================================================================
   /"The entity which owns the object in question."              x"An estimate of bandwidth in units of 1,000 bits per
        second.  If this object reports a value of 'n' then
        the rate of the object is somewhere in the range of
        'n-500' to 'n+499'. For objects which do not vary in
        bitrate, or for those where no accurate estimation
        can be made, this object should contain the nominal
        bitrate."               p"The number of octets of MPLS data that the stream
        may send back-to-back without concern for policing."              "An identifier that is assigned to each LSP and is
        used to uniquely identify it.  This is assigned at
        the head end of the LSP and can be used by all LSRs
        to identify this LSP.  This value is piggybacked by
        the signaling protocol when this LSP is signaled
        within the network.  This identifier can then be
        used at each LSR to identify which labels are being
        swapped to other labels for this LSP.  For IPv4
        addresses this results in a 6-octet long cookie."            _"1. MPLS Label Stack Encoding, Rosen et al, draft-
          ietf-mpls-label-encaps-07.txt, March 2000.
        2. Use of Label Switching on Frame Relay Networks,
          Conta et al, draft-ietf-mpls-fr-03.txt, Nov.
          1998.
        3. MPLS using LDP and ATM VC switching, Davie et al,
          draft-ietf-mpls-atm-02.txt, April 1999."l"This value represents an MPLS label.  Note that the
        contents of a label field are interpreted in an
        interface-type specific fashion.  For example, the
        20-bit wide label carried in the MPLS shim header is
        contained in bits 0-19 and bits 20-31 must be zero.
        The frame relay label can be either 10 or 23 bits
        wide depending on the size of the DLCI field and
        bits 10-31, or 23-31 must be zero, respectively.
        For an ATM interface, bits 0-15 must be interpreted
        as the VCI, bits 16-23 as the VPI and bits 24-31
        must be zero.  Note that the permissible label
        values are also a function of the interface type.
        For example, the value 3 has special semantics in
        the control plane for an MPLS shim header label and
        is not a valid label value in the data path."                                                                                                0"This MIB contains managed object definitions for the
        Multiprotocol Label Switching (MPLS) Router as
        defined in: Rosen, E., Viswanathan, A., and R.
        Callon, Multiprotocol Label Switching Architecture,
        Internet Draft <draft-ietf-mpls-arch-06.txt>,
        August 1999."�"        Cheenu Srinivasan
        Postal: Tachion Networks, Inc.
                Monmouth Park Corporate Center I
                Building C, 185 Monmouth Parkway
                West Long Branch, NJ 07764
        Tel:    +1-732-542-7750 x1234
        Email:  cheenu@tachion.com
       
                Arun Viswanathan
        Postal: Force10 Networks, Inc.
                1440 McCarthy Blvd
                Milpitas, CA 95035
        Tel:    +1-408-571-3516
        Email:  arun@force10networks.com
       
                Thomas D. Nadeau
        Postal: Cisco Systems, Inc.
                250 Apollo Drive
                Chelmsford, MA 01824
        Tel:    +1-978-244-3051
        Email:  tnadeau@cisco.com" "200007121200Z" "200007071200Z" "200004261200Z" "200004211200Z" "200003061200Z" "200002161200Z" "199906161200Z" 6"Seventh draft version. Fix minor compilation errors." �"Sixth draft version. Made minor typographical corrections 
        noted from WG mailing list during second working group last
        call." a"Fifth draft version. Made minor typographical corrections 
        noted from WG mailing list." O"Fourth draft version.  Made corrections from WG Last 
        Call comments." "Third draft version." "Second draft version." "Initial draft version."       -- 12 July 2000 12:00:00 EST
           Y"This table specifies per-interface MPLS capability
        and associated information."                      �"An entry in this table is created by an LSR for
        every interface capable of supporting MPLS. The
        entry with index 0 represents the per-platform label
        space and contains parameters that apply to all
        interfaces that participate in the per-platform
        label space. Other entries defined in this table
        represent additional MPLS interfaces that may
        participate in either the per-platform or per-
        interface label spaces, or both. Additional
        information about label space participation of an
        interface is provided in the description clause of
        mplsInterfaceLabelParticipationType."                      "This is a unique index for an entry in the
        MplsInterfaceConfTable.  A non-zero index for an
        entry indicates the ifIndex for the corresponding
        interface entry in of the MPLS-layer in the ifTable.
        Note that the per-platform label space may apply to
        several interfaces, and therefore the configuration
        of the per-platform label space interface parameters
        will apply to all of the interfaces that are
        participating in the per-platform label space." i"RFC 2233 - The Interfaces Group MIB using SMIv2,
        McCloghrie, K., and F. Kastenholtz, Nov. 1997"                     l"This is the minimum value of an MPLS label that this
        LSR is willing to receive on this interface."                       l"This is the maximum value of an MPLS label that this
        LSR is willing to receive on this interface."                       i"This is the minimum value of an MPLS label that this
        LSR is willing to send on this interface."                       i"This is the maximum value of an MPLS label that this
        LSR is willing to send on this interface."                       �"This value indicates the total amount of usable
        bandwidth on this interface and is specified in
        kilobits per second (Kbps).  This variable is
        not applicable when applied to the interface with
        index 0."                      �"This value indicates the total amount of available
        bandwidth available on this interface and is
        specified in kilobits per second (Kbps).  This
        value is calculated as the difference between the
        amount of bandwidth currently in use and that
        specified in mplsInterfaceTotalBandwidth.  This
        variable is not applicable when applied to the
        interface with index 0."                      ."Either the perPlatform(0) or perInterface(1) bit
        MUST be set. If the value of the
        mplsInterfaceConfIndex for this entry is zero, then
        only the perPlatform(0) bit MUST be set and the
        perInterface(1) bit is meaningless. If the
        perInterface(1) bit is set then the value of
        mplsInterfaceLabelMinIn, mplsInterfaceLabelMaxIn,
        mplsInterfaceLabelMinOut, and
        mplsInterfaceLabelMaxOut for this entry reflect the
        label ranges for this interface.  If only the
        perPlatform(0) bit is set, then the value of
        mplsInterfaceLabelMinIn, mplsInterfaceLabelMaxIn,
        mplsInterfaceLabelMinOut, and
        mplsInterfaceLabelMaxOut for this entry must be
        identical to the instance of these objects with
        index 0." `"Multiprotocol Label Switching, Rosen et al, draft-ietf-mpls-
       arch-06.txt, August 1999."                     ""The storage type for this entry."                       U"This table provides MPLS performance information on
        a per-interface basis."                       �"An entry in this table is created by the LSR for
        every interface capable of supporting MPLS.  Its is
        an extension to the mplsInterfaceConfEntry table."                      :"This object counts the number of labels
        that are in use at this point in time on this
        interface in the incoming direction. If the interface
        participates in the per-platform label space only,
        then this instance of this object MUST be identical
        with the instance with index 0. If the interface
        participates in the per-interface label space, then this
        this instance of this object MUST represent the number of
        of per-interface labels that are in use at this point in
        time on this interface."                      >"This object counts the number of labeled packets
        that have been received on this interface and were
        discarded because there was no matching cross-connect
        entry. This object MUST count on a per-interface basis
        regardless of which label space the interface participates
        in."                      "This object counts the number of top-most labels in the
        outgoing label stacks that are in use at this point
        in time on this interface. This object
        MUST count on a per-interface basis regardless of
        which label space the interface participates in."                      D"This object counts the number of outgoing MPLS
        packets that required fragmentation before
        transmission on this interface. This object
        transmission on this interface. This object
        MUST count on a per-interface basis regardless of 
        which label space the interface participates in."                       K"This table contains a collection of incoming
        segments to an LSR."                      q"An entry in this table represents one incoming
        segment.  An entry can be created by a network
        administrator or an SNMP agent, or an MPLS signaling
        protocol.  The creator of the entry is denoted by
        mplsInSegmentOwner.  An entry in this table is
        indexed by the ifIndex of the incoming interface and
        the (top) label."                      b"This is a unique index for an entry in the
        MplsInSegmentTable.  This value represents the
        interface index for the incoming MPLS interface.  A
        value of zero represents an incoming label from the
        per-platform label space.  In this case, the
        mplsInSegmentLabel is interpreted to be an MPLS-type
        label."                       &"The incoming label for this segment."                      ="The number of labels to pop from the incoming
        packet.  Normally only the top label is popped from
        the packet and used for all switching decisions for
        that packet.  Note that technologies which do not
        support label popping should set this value to its
        default value of 1."                       �"The IANA address family [IANAFamily] of the incoming
        packet.  A value of other(0) indicates that the
        family type is either unknown or undefined."                      �"Index into mplsXCTable which identifies which cross-
        connect entry this segment is part of.  A value of
        zero indicates that this entry is not referred to by
        any cross-connect entry.  When a cross-connect entry
        is created which this in-segment is a part of, this
        object is automatically updated to reflect the value
        of mplsXCIndex of that cross-connect entry."                       X"Denotes the entity that created and is responsible
        for managing this segment."                      "This variable represents a pointer to the traffic
     parameter specification for this in-segment.  This
     value may point at an entry in the
     mplsTrafficParamTable to indicate which
     mplsTrafficParamEntry is to be assigned to this
     segment.  This value may optionally point at an
     externally defined traffic parameter specification
     table.  A value of zero-dot-zero indicates best-effort
     treatment.  By having the same value of this object,
     two or more segments can indicate resource sharing."                       V"This variable is used to create, modify, and/or
        delete a row in this table."                       D"This variable indicates the storage type for this
        object."                       \"This table contains statistical information for
        incoming MPLS segments to an LSR."                       �"An entry in this table contains statistical
        information about one incoming segment which was
        configured in the mplsInSegmentTable. The counters
        in this entry should behave in a manner similar to
        that of the interface."                       U"This value represents the total number of octets
        received by this segment."                       3"Total number of packets received by this segment."                       B"The number of errored packets received on this
        segment."                      4"The number of labeled packets received on this in-
        segment, which were chosen to be discarded even
        though no errors had been detected to prevent their
        being transmitted.  One possible reason for
        discarding such a labeled packet could be to free up
        buffer space."                       c"The total number of octets received.  This is the 64
        bit version of mplsInSegmentOctets."                      ]"The value of sysUpTime on the most recent occasion at
          which any one or more of this segment's Counter32 or
          Counter64 suffered a discontinuity. If no such
          discontinuities have occurred since the last re-
          initialization of the local management subsystem, then
          this object contains a zero value."                      �"This object contains the next appropriate value to
        be used for mplsOutSegmentIndex when creating
        entries in the mplsOutSegmentTable.  If the number
        of unassigned entries is exhausted, this object will
        take on the value of 0.  To obtain the
        mplsOutSegmentIndex value for a new entry, the
        manager must first issue a management protocol
        retrieval operation to obtain the current value of
        this object.  The agent should modify the value to
        reflect the next unassigned index after each
        retrieval operation.  After a manager retrieves a
        value the agent will determine through its local
        policy when this index value will be made available
        for reuse."                       U"This table contains a representation of the outgoing
        segments from an LSR."                      "An entry in this table represents one outgoing
        segment.  An entry can be created by a network
        administrator or an SNMP agent, or an MPLS signaling
        protocol.  The object mplsOutSegmentOwner indicates
        the creator of this entry."                      	"This value contains a unique index for this row.
        While a value of 0 is not valid as an index for this
        row it can be supplied as a valid value to index
        mplsXCTable to access entries for which no out-
        segment has been configured."                       M"This value contains the interface index of the
        outgoing interface."                      i"This value indicates whether or not a top label
        should be pushed onto the outgoing packet's label
        stack.  The value of this variable must be set to
        true if the outgoing interface does not support pop-
        and-go (for example an ATM interface) or if it is a
        tunnel origination.  Note that it is considered an
        error in the case that mplsOutSegmentPushTopLabel is
        set to false, but the cross-connect entry which
        refers to this out-segment has a non-zero
        mplsLabelStackIndex.  The LSR MUST ensure that this
        situation does not happen "                       �"If mplsOutSegmentPushTopLabel is true then this
        represents the label that should be pushed onto the
        top of the outgoing packet's label stack."                       �"Indicates whether the next hop address is IPv4 or
        IPv6.  Note that a value of unknown (0) is valid
        only when the outgoing interface is of type point-to-
        point."                       �"IPv4 Address of the next hop.  Its value is
        significant only when
        mplsOutSegmentNextHopIpAddrType is ipV4 (1),
        otherwise it should return a value of 0."                       �"IPv6 address of the next hop.  Its value is
        significant only when
        mplsOutSegmentNextHopIpAddrType is ipV6 (2),
        otherwise it should return a value of 0."                      �"Index into mplsXCTable which identifies which cross-
        connect entry this segment is part of.  A value of
        zero indicates that this entry is not referred to by
        any cross-connect entry.  When a cross-connect entry
        is created which this out-segment is a part of, this
        object is automatically updated to reflect the value
        of mplsXCIndex of that cross-connect entry."                       Y"Denotes the entity which created and is responsible
        for managing this segment."                      ,"This variable represents a pointer to the traffic
      parameter specification for this out-segment.  This
      value may point at an entry in the
      mplsTrafficParamTable to indicate which
      mplsTrafficParamEntry is to be assigned to this
      segment.  This value may optionally point at an
      externally defined traffic parameter specification
      table.  A value of zero-dot-zero indicates best-
      effort treatment.  By having the same value of this
      object, two or more segments can indicate resource
      sharing."                       1"For creating, modifying, and deleting this row."                       D"This variable indicates the storage type for this
        object."                       �"This table contains statistical information about
        outgoing segments from an LSR. The counters in this
        entry should behave in a manner similar to that of
        the interface."                       �"An entry in this table contains statistical
        information about one outgoing segment configured in
        mplsOutSegmentTable."                       O"This value contains the total number of octets sent
        on this segment."                       P"This value contains the total number of packets sent
        on this segment."                       R"Number of packets that could not be sent due to
        errors on this segment."                      5"The number of labeled packets received on this out-
        segment, which were chosen to be discarded even
        though no errors had been detected to prevent their
        being transmitted.  One possible reason for
        discarding such a labeled packet could be to free up
        buffer space."                       \"Total number of octets sent.  This is the 64 bit
        version of mplsOutSegmentOctets."                      ]"The value of sysUpTime on the most recent occasion at
          which any one or more of this segment's Counter32 or
          Counter64 suffered a discontinuity. If no such
          discontinuities have occurred since the last re-
          initialization of the local management subsystem, then
          this object contains a zero value."                      �"This object contains an appropriate value to be used
        for mplsXCIndex when creating entries in the
        mplsXCTable.  The value 0 indicates that no
        unassigned entries are available.  To obtain the
        value of mplsXCIndex for a new entry in the
        mplsXCTable, the manager issues a management
        protocol retrieval operation to obtain the current
        value of mplsXCIndex.  After each retrieval
        operation, the agent should modify the value to
        reflect the next unassigned index.  After a manager
        retrieves a value the agent will determine through
        its local policy when this index value will be made
        available for reuse."                      A"This table specifies information for switching
        between LSP segments.  It supports point-to-point,
        point-to-multipoint and multipoint-to-point
        connections.  mplsLabelStackTable specifies the
        label stack information for a cross-connect LSR and
        is referred to from mplsXCTable."                      �"A row in this table represents one cross-connect
        entry.  The following objects index it:
       
        - cross-connect index mplsXCIndex that uniquely
          identifies a group of cross-connect entries
        - interface index of the in-segment,
          mplsInSegmentIfIndex
        - incoming label(s), mplsInSegmentLabel
        - out-segment index, mplsOutSegmentIndex
       
       Originating LSPs:
        These are represented by using the special
        combination of values mplsInSegmentIfIndex=0 and
        mplsInSegmentLabel=0 as indexes.  In this case the
        mplsOutSegmentIndex MUST be non-zero.
       
       Terminating LSPs:
       These are represented by using the special value
        mplsOutSegmentIndex=0 as index.

       Special labels:
        Entries indexed by reserved MPLS label values 0
        through 15 imply terminating LSPs and MUST have
        mplsOutSegmentIfIndex = 0.  Note that situations
        where LSPs are terminated with incoming label equal
        to 0, should have mplsInSegmentIfIndex = 0 as well,
        but can be distinguished from originating LSPs
        because the mplsOutSegmentIfIndex = 0.  The
        mplsOutSegmentIfIndex MUST only be set to 0 in
        cases of terminating LSPs.
       
        An entry can be created by a network administrator
        or by an SNMP agent as instructed by an MPLS
        signaling protocol."                       _"Primary index for the conceptual row identifying 
        a group of cross-connect segments."                       b"This value identifies the label switched path that
        this cross-connect entry belongs to."                      �"Primary index into mplsLabelStackTable identifying a
        stack of labels to be pushed beneath the top label.
        Note that the top label identified by the out-
        segment ensures that all the components of a
        multipoint-to-point connection have the same
        outgoing label.  A value of 0 indicates that no
        labels are to be stacked beneath the top label."                      "Denotes whether or not this cross-connect entry and
        associated in- and out-segments should be restored
        automatically after failures.  This value MUST be
        set to false in cases where this cross-connect entry
        was created by a signaling protocol."                       ^"Denotes the entity that created and is responsible
        for managing this cross-connect."                       1"For creating, modifying, and deleting this row."                       +"Defines the storage type for this object."                       1"The desired operational status of this segment."                       @"The actual operational status of this cross-
        connect."                       0"The maximum stack depth supported by this LSR."                      �"This object contains an appropriate value to be used
        for mplsLabelStackIndex when creating entries in the
        mplsLabelStackTable.  The value 0 indicates that no
        unassigned entries are available.  To obtain an
        mplsLabelStackIndex value for a new entry, the
        manager issues a management protocol retrieval
        operation to obtain the current value of this
        object.  After each retrieval operation, the agent
        should modify the value to reflect the next
        unassigned index.  After a manager retrieves a value
        the agent will determine through its local policy
        when this index value will be made available for
        reuse."                       �"This table specifies the label stack to be pushed
        onto a packet, beneath the top label.  Entries into
        this table are referred to from mplsXCTable."                      "An entry in this table represents one label which is
        to be pushed onto an outgoing packet, beneath the
        top label.  An entry can be created by a network
        administrator or by an SNMP agent as instructed by
        an MPLS signaling protocol."                       �"Primary index for this row identifying a stack of
        labels to be pushed on an outgoing packet, beneath
        the top label."                      b"Secondary index for this row identifying one label
        of the stack.  Note that an entry with a smaller
        mplsLabelStackLabelIndex would refer to a label
        higher up the label stack and would be popped at a
        downstream LSR before a label represented by a
        higher mplsLabelStackLabelIndex at a downstream
        LSR."                       "The label to pushed."                       1"For creating, modifying, and deleting this row."                       +"Defines the storage type for this object."                      �"This object contains an appropriate value which will
        be used for mplsTrafficParamIndex when creating
        entries in the mplsTrafficParamTable.  The value 0
        indicates that no unassigned entries are available.
        To obtain the mplsTrafficParamIndex value for a new
        entry, the manager issues a management protocol
        retrieval operation to obtain the current value of
        this object.  After each retrieval operation, the
        agent should modify the value to reflect the next
        unassigned index.  After a manager retrieves a value
        the agent will determine through its local policy
        when this index value will be made available for
        reuse."                       V"This table specifies the Traffic Parameter objects
        for in and out-segments."                       �"An entry in this table represents the TrafficParam
        objects for one or more in or out segments.  A
        single entry can be pointed to by multiple segments
        indicating resource sharing."                       b"Uniquely identifies this row of the table.  Note
        that zero represents an invalid index."                       ""Maximum rate in kilobits/second."                       "Mean rate in kilobits/second."                       "Maximum burst size in bytes."                       1"For creating, modifying, and deleting this row."                       #"The storage type for this object."                       �"If this object is true, then it enables the
        generation of mplsXCUp and mplsXCDown traps,
        otherwise these traps are not emitted."                              Z"This notification is generated when a
        mplsXCOperStatus object for one of the configured
        cross-connect entries is about to leave the down
        state and transition into some other state (but not
        into the notPresent state).  This other state is
        indicated by the included value of
        mplsXCOperStatus."                B"This notification is generated when a
        mplsXCOperStatus object for one of the configured
        cross-connect entries is about to enter the down
        state from some other state (but not from the
        notPresent state).  This other state is indicated by
        the included value of mplsXCOperStatus."                         h"Collection of objects needed for MPLS interface
           configuration and performance information."                 G"Collection of objects needed to implement an in-
           segment."                 H"Collection of objects needed to implement an out-
           segment."                 N"Collection of objects needed to implement a
           cross-connect entry."                 U"Collection of optional objects for implementing 
           a cross-connect entry."                 \"Collection of objects providing performance
           information
        about an LSR."                 �"Object(s) providing performance information
           specific to out-segments for which the object
           mplsInterfaceInOctets wraps around too quickly."                 �"Object(s) providing performance information
           specific to out-segments for which the object
           mplsInterfaceOutOctets wraps around too
           quickly."                 I"Object(s) required for supporting QoS resource
           reservation."                 C"Objects needed to support persistent cross-
           connects."                 G"Objects needed to support non-persistent cross-
           connects."                 +"Objects needed to support label stacking."                 _" A collection of objects providing information
        specific to segment discontinuities.."                 Q"Set of notifications implemented in this module.
           None is mandatory."                         I"Compliance statement for agents that support the
        MPLS LSR MIB."   �"This group is mandatory for those in-segment
           entries for which the object
           mplsInSegmentOutOctets wraps around too
           quickly." �"This group is mandatory for those out-segment
           entries for which the object
           mplsOutSegmentOctets wraps around too quickly." ["This group is mandatory for those LSRs that
           support QoS resource reservation." �"This group is mandatory for devices which
           support persistent cross-connects.  The
           following constraints apply: mplsXCIsPersistent
           must at least be read-only returning true(2)." �"This group is mandatory for devices which
           support non-persistent cross-connects.  The
           following constraints apply: mplsXCIsPersistent
           must at least be read-only returning false(1)." &"Only other(1) needs to be supported." "Write access is not required." _"Write access if not required.  This object
           should be set to 1 if it is read-only." �"Write access is not required.  A <value of
           other(0) should be supported because there may
           be cases where the agent may not know about or
           support any address types." &"Only other(1) needs to be supported." "Write access is not required." "Write access is not required." "Write access is not required."  "ipV6(3) need not be supported." "Write access is not required." "Write access is not required." P"The notReady(3) and createAndWait(5) states need
           not be supported." &"Only other(1) needs to be supported." "Write access is not required." "Write access is not required." ."A value of testing(3) need not be supported." ."Only up(1) and down(2) need to be supported." P"The notReady(3) and createAndWait(5) states need
           not be supported." &"Only other(1) needs to be supported."                        