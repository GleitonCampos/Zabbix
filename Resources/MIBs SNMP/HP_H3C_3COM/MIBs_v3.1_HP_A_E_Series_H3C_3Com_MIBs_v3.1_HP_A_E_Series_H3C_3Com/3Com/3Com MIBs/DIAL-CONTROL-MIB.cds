     "Represents a Counter32-like value that starts at zero,
         does not decrease, and does not wrap. This may be used
         only in situations where wrapping is not possible or
         extremely unlikely. Should such a counter overflow,
         it locks at the maxium value of 4,294,967,295.

         The primary use of this type of counter is situations
         where a counter value is to be recorded as history
         and is thus no longer subject to reading for changing
         values."                                                                                             q"The MIB module to describe peer information for
         demand access and possibly other kinds of interfaces." �"        Guenter Roeck
         Postal: cisco Systems
                 170 West Tasman Drive
                 San Jose, CA 95134
                 U.S.A.
         Phone:  +1 408 527 3143
         E-mail: groeck@cisco.com"       -- Sep 23, 1996
              �"The security level for acceptance of incoming calls.
         acceptNone(1)  - incoming calls will not be accepted
         acceptAll(2)   - incoming calls will be accepted,
                          even if there is no matching entry
                          in the dialCtlPeerCfgTable
         acceptKnown(3) - incoming calls will be accepted only
                          if there is a matching entry in the
                          dialCtlPeerCfgTable
        "                      �"This object indicates whether dialCtlPeerCallInformation
         and dialCtlPeerCallSetup traps should be generated for
         all peers. If the value of this object is enabled(1),
         traps will be generated for all peers. If the value
         of this object is disabled(2), traps will be generated
         only for peers having dialCtlPeerCfgTrapEnable set
         to enabled(1)."                           m"The list of peers from which the managed device
         will accept calls or to which it will place them."                      �"Configuration data for a single Peer. This entry is
         effectively permanent, and contains information
         to identify the peer, how to connect to the peer,
         how to identify the peer and its permissions.
         The value of dialCtlPeerCfgOriginateAddress must be
         specified before a new row in this table can become
         active(1). Any writeable parameters in an existing entry
         can be modified while the entry is active. The modification
         will take effect when the peer in question will be
         called the next time.
         An entry in this table can only be created if the
         associated ifEntry already exists."                      q"This object identifies a single peer. There may
         be several entries in this table for one peer,
         defining different ways of reaching this peer.
         Thus, there may be several entries in this table
         with the same value of dialCtlPeerCfgId.
         Multiple entries for one peer may be used to support
         multilink as well as backup lines.
         A single peer will be identified by a unique value
         of this object. Several entries for one peer MUST
         have the same value of dialCtlPeerCfgId, but different
         ifEntries and thus different values of ifIndex."                       v"The interface type to be used for calling this peer.
         In case of ISDN, the value of isdn(63) is to be used."                      ;"ifIndex value of an interface the peer will have to be
         called on. For example, on an ISDN interface, this can be
         the ifIndex value of a D channel or the ifIndex value of a
         B channel, whatever is appropriate for a given peer.
         As an example, for Basic Rate leased lines it will be
         necessary to specify a B channel ifIndex, while for
         semi-permanent connections the D channel ifIndex has
         to be specified.
         If the interface can be dynamically assigned, this object
         has a value of zero."                      �"Call Address at which the peer will be called.
         Think of this as the set of characters following 'ATDT '
         or the 'phone number' included in a D channel call request.

         The structure of this information will be switch type
         specific. If there is no address information required
         for reaching the peer, i.e., for leased lines,
         this object will be a zero length string."                      i"Calling Party Number information element, as for example
         passed in an ISDN SETUP message by a PBX or switch,
         for incoming calls.
         This address can be used to identify the peer.
         If this address is either unknown or identical
         to dialCtlPeerCfgOriginateAddress, this object will be
         a zero length string."                       �"Subaddress at which the peer will be called.
         If the subaddress is undefined for the given media or
         unused, this is a zero length string."                       �"Closed User Group at which the peer will be called.
         If the Closed User Group is undefined for the given media
         or unused, this is a zero length string." "Q.931, chapter 4.6.1."                    �"The desired information transfer speed in bits/second
         when calling this peer.
         The detailed media specific information, e.g. information
         type and information transfer rate for ISDN circuits,
         has to be extracted from this object.
         If the transfer speed to be used is unknown or the default
         speed for this type of interfaces, the value of this object
         may be zero."                       �"The Information Transfer Capability to be used when
         calling this peer.

         speech(2) refers to a non-data connection, whereas
         audio31(6) and audio7(7) refer to data mode
         connections."                      �"Applicable permissions. callback(4) either rejects the
         call and then calls back, or uses the 'Reverse charging'
         information element if it is available.
         Note that callback(4) is supposed to control charging, not
         security, and applies to callback prior to accepting a
         call. Callback for security reasons can be handled using
         PPP callback."                      �"The connection will be automatically disconnected
         if no longer carrying useful data for a time
         period, in seconds, specified in this object.
         Useful data in this context refers to forwarding
         packets, including routing information; it
         excludes the encapsulator maintenance frames.
         A value of zero means the connection will not be
         automatically taken down due to inactivity,
         which implies that it is a dedicated circuit."                      &"Minimum duration of a call in seconds, starting from the
         time the call is connected until the call is disconnected.
         This is to accomplish the fact that in most countries
         charging applies to units of time, which should be matched
         as closely as possible."                       ;"Maximum call duration in seconds. Zero means 'unlimited'."                       �"The call timeout time in seconds. The default value
         of zero means that the call timeout as specified for
         the media in question will apply."                      ~"The number of calls to a non-responding address
         that may be made. A retry count of zero means
         there is no bound. The intent is to bound
         the number of successive calls to an address
         which is inaccessible, or which refuses those calls.

         Some countries regulate the number of call retries
         to a given peer that can be made."                       �"The time in seconds between call retries if a peer
         cannot be reached.
         A value of zero means that call retries may be done
         without any delay."                      k"The time in seconds after which call attempts are
         to be placed again after a peer has been noticed
         to be unreachable, i.e. after dialCtlPeerCfgCallRetries
         unsuccessful call attempts.
         A value of zero means that a peer will not be called
         again after dialCtlPeerCfgCallRetries unsuccessful call
         attempts."                       �"This object indicates whether dialCtlPeerCallInformation
         and dialCtlPeerCallSetup traps should be generated for
         this peer."                       ""Status of one row in this table."                       �"Statistics information for each peer entry.
         There will be one entry in this table for each entry
         in the dialCtlPeerCfgTable."                       �"Statistics information for a single Peer. This entry
         is effectively permanent, and contains information
         describing the last call attempt as well as supplying
         statistical information."                       �"Accumulated connect time to the peer since system startup.
         This is the total connect time, i.e. the connect time
         for outgoing calls plus the time for incoming calls."                      "The total number of charging units applying to this
         peer since system startup.
         Only the charging units applying to the local interface,
         i.e. for originated calls or for calls with 'Reverse
         charging' being active, will be counted here."                       )"Number of completed calls to this peer."                       M"Number of failed call attempts to this peer since system
         startup."                       I"Number of calls from this peer accepted since system
         startup."                       H"Number of calls from this peer refused since system
         startup."                      �"The encoded network cause value associated with the last
         call.
         This object will be updated whenever a call is started
         or cleared.
         The value of this object will depend on the interface type
         as well as on the protocol and protocol version being
         used on this interface. Some references for possible cause
         values are given below."�"- Bellcore SR-NWT-001953, Generic Guidelines for
           ISDN Terminal Equipment On Basic Access Interfaces,
           chapter 5.2.5.8.
         - Bellcore SR-NWT-002343, ISDN Primary Rate Interface
           Generic Guidelines for Customer Premises Equipment,
           chapter 8.2.5.8.
         - ITU-T Q.931, Appendix I.
         - ITU-T X.25, CAUSE and DIAGNOSTIC field values.
         - German Telekom FTZ 1TR6, chapter 3.2.3.4.4.4."                    �"ASCII text describing the reason for the last call
         termination.

         This object exists because it would be impossible for
         a management station to store all possible cause values
         for all types of interfaces. It should be used only if
         a management station is unable to decode the value of
         dialCtlPeerStatsLastDisconnectCause.

         This object will be updated whenever a call is started
         or cleared."                      !"The value of sysUpTime when the last call to this peer
         was started.
         For ISDN media, this will be the time when the setup
         message was received from or sent to the network.
         This object will be updated whenever a call is started
         or cleared."                           X"A table containing information about active
         calls to a specific destination."                       �"The information regarding a single active Connection.
         An entry in this table will be created when a call is
         started. An entry in this table will be deleted when
         an active call clears."                      �"The value of sysUpTime when the call associated to this
         entry was started. This will be useful for an NMS to
         retrieve all calls after a specific time. Also, this object
         can be useful in finding large delays between the time the
         call was started and the time the call was connected.
         For ISDN media, this will be the time when the setup
         message was received from or sent to the network."                       c"Small index variable to distinguish calls that start in
         the same hundredth of a second."                       u"The number this call is connected to. If the number is
         not available, then it will have a length of zero."                       �"The subaddress this call is connected to. If the subaddress
         is undefined or not available, this will be a zero length
         string."                       �"This is the Id value of the peer table entry
         to which this call was made. If a peer table entry
         for this call does not exist or is unknown, the value
         of this object will be zero."                       �"This is the ifIndex value of the peer table entry
         to which this call was made. If a peer table entry
         for this call does not exist or is unknown, the value
         of this object will be zero."                      "This is the ifIndex value of the logical interface through
         which this call was made. For ISDN media, this would be
         the ifIndex of the B channel which was used for this call.
         If the ifIndex value is unknown, the value of this object
         will be zero."                       �"The value of sysUpTime when the call was connected.
         If the call is not connected, this object will have a
         value of zero."                      Z"The current call state.
         unknown(1)     - The call state is unknown.
         connecting(2)  - A connection attempt (outgoing call)
                          is being made.
         connected(3)   - An incoming call is in the process
                          of validation.
         active(4)      - The call is active.
        "                       "The call origin."                       �"The number of charged units for this connection.
         For incoming calls or if charging information is
         not supplied by the switch, the value of this object
         will be zero."                       %"The information type for this call."                       G"The number of packets which were transmitted for this
         call."                       E"The number of bytes which were transmitted for this
         call."                       D"The number of packets which were received for this
         call."                       8"The number of bytes which were received for this call."                          "The upper limit on the number of entries that the
         callHistoryTable may contain.  A value of 0
         will prevent any history from being retained. When
         this table is full, the oldest entry will be deleted
         and the new one will be created."                      0"The minimum amount of time that an callHistoryEntry
         will be maintained before being deleted. A value of
         0 will prevent any history from being retained in the
         callHistoryTable, but will neither prevent callCompletion
         traps being generated nor affect other tables."                       Z"A table containing information about specific
         calls to a specific destination."                       0"The information regarding a single Connection."                       v"The number this call was connected to. If the number is
         not available, then it will have a length of zero."                       �"The subaddress this call was connected to. If the subaddress
         is undefined or not available, this will be a zero length
         string."                       �"This is the Id value of the peer table entry
         to which this call was made. If a peer table entry
         for this call does not exist, the value of this object
         will be zero."                       �"This is the ifIndex value of the peer table entry
         to which this call was made. If a peer table entry
         for this call does not exist, the value of this object
         will be zero."                       �"This is the ifIndex value of the logical interface through
         which this call was made. For ISDN media, this would be
         the ifIndex of the B channel which was used for this call."                      *"The encoded network cause value associated with this call.

         The value of this object will depend on the interface type
         as well as on the protocol and protocol version being
         used on this interface. Some references for possible cause
         values are given below."�"- Bellcore SR-NWT-001953, Generic Guidelines for
           ISDN Terminal Equipment On Basic Access Interfaces,
           chapter 5.2.5.8.
         - Bellcore SR-NWT-002343, ISDN Primary Rate Interface
           Generic Guidelines for Customer Premises Equipment,
           chapter 8.2.5.8.
         - ITU-T Q.931, Appendix I.
         - ITU-T X.25, CAUSE and DIAGNOSTIC field values.
         - German Telekom FTZ 1TR6, chapter 3.2.3.4.4.4."                    l"ASCII text describing the reason for call termination.

         This object exists because it would be impossible for
         a management station to store all possible cause values
         for all types of interfaces. It should be used only if
         a management station is unable to decode the value of
         dialCtlPeerStatsLastDisconnectCause."                       5"The value of sysUpTime when the call was connected."                       8"The value of sysUpTime when the call was disconnected."                       "The call origin."                       �"The number of charged units for this connection.
         For incoming calls or if charging information is
         not supplied by the switch, the value of this object
         will be zero."                       %"The information type for this call."                       T"The number of packets which were transmitted while this
         call was active."                       R"The number of bytes which were transmitted while this
         call was active."                       Q"The number of packets which were received while this
         call was active."                       O"The number of bytes which were received while this
         call was active."                              9"This trap/inform is sent to the manager whenever
         a successful call clears, or a failed call attempt
         is determined to have ultimately failed. In the
         event that call retry is active, then this is after
         all retry attempts have failed. However, only one such
         trap is sent in between successful call attempts;
         subsequent call attempts result in no trap.
         ifOperStatus will return the operational status of the
         virtual interface associated with the peer to whom
         this call was made to."                "This trap/inform is sent to the manager whenever
         a call setup message is received or sent.
         ifOperStatus will return the operational status of the
         virtual interface associated with the peer to whom
         this call was made to."                         V"The compliance statement for entities which
         implement the DIAL CONTROL MIB"                   J"A collection of objects providing the DIAL CONTROL
         capability."                 I"A collection of objects providing the active call
         capability."                 J"A collection of objects providing the Call History
         capability."                 ["The notifications which a Dial Control MIB entity is
             required to implement."                            