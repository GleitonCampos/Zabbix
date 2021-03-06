                                                                               R"This is the MIB module for objects used to
                 manage SDLC devices."/"        Wayne Clark

                 Postal: cisco Systems, Inc.
                         3100 Smoketree Ct.
                         Suite 1000
                         Raleigh, NC 27604
                         US

                    Tel: +1 919 878 6958

                 E-Mail: wclark@cisco.com"                      U"This table contains objects that can be
                        changed to manage an SDLC port.    Changing one
                        of these parameters may take effect in the
                        operating port immediately or may wait until
                        the interface is restarted depending on the
                        details of the implementation.

                        Most of the objects in this read-write table
                        have corresponding read-only objects in the
                        sdlcPortOperTable that return the current
                        operating value.

                        The operating values may be different from
                        these configured values if  a configured
                        parameter was changed after the interface was
                        started."                       /"A list of configured values for an SDLC port."                      "An octet string that defines the physical port
                        to which this interface is assigned.  It has
                        implementation-specific significance. Its value
                        shall be unique within the administered
                        system.  It must contain only ASCII printable
                        characters.  Should an implementation choose to
                        accept a write operation  for this object, it
                        causes the logical port definition associated
                        with the table instance to be moved to  a
                        different physical port.  A write operation
                        shall not take effect until the port is cycled
                        inactive."                      x"This object describes the role that the link
                        station shall assume the next time a connection
                        is established.

                        Even though this is defined as a port object,
                        it is a link station attribute in the sense
                        that a role is per link station.  However, it
                        is not possible to vary link station roles on a
                        particular port.  For example, if an SDLC port
                        is configured to primary, all link stations on
                        that port must be primary."                      /"This parameter defines whether the SDLC port
                        is to connect to a leased or switched line.  A
                        write operation to this administrative  value
                        shall not take effect until the SDLC port has
                        been cycled inactive."                      �"This parameter defines whether the SDLC port is
                        capable of operating in either a point-to-point
                        or multipoint topology.

                        sdlcPortAdminTopology == multipoint implies the
                        port can also operate in a point-to-point
                        topology.  sdlcPortAdminTopology ==
                        pointToPoint does not imply the port can
                        operate in a multipoint topology.

                        A write operation to this administrative value
                        shall not take effect until the SDLC port has
                        been cycled inactive."                      �"This parameter controls the initial value of
                        the administrative status, ifAdminStatus, of
                        this SDLC port at port start-up.  Depending
                        on the implementation, a write operation to
                        this administrative object may not take effect
                        until the SDLC port has been cycled inactive."                      @"This parameter defines the period of time (in
                        1/100ths of a second) that the port will allow a
                        switched line to remain inactive before
                        disconnecting.  A switched line is considered
                        to be inactive if there are no I-Frames being
                        transferred.  A value of zero indicates no
                        timeout.  Depending on the implementation, a
                        write operation to this administered value may
                        not take effect until the port is cycled
                        inactive.

                        This object only has meaning for SDLC ports
                        where sdlcPortAdminType == switched

                        The object descriptor contains the name of an
                        NCP configuration parameter, ACTIVTO.  Please
                        note that the value of this object represents
                        1/100ths of a second while the NCP ACTIVTO is
                        represented in seconds."                      ^"This object defines the minimum elapsed time
                        (in 1/100ths of a second) between any two
                        traversals of the poll list for a primary SDLC
                        port.  Depending on the implementation, a write
                        operation to this administered value  may not
                        take effect until the port is cycled inactive.

                        The object descriptor contains the name of an
                        NCP configuration parameter, PAUSE.  Please
                        note that the value of this object represents
                        1/100ths of a second while the NCP PAUSE is
                        represented in 1/10ths of a second.

                        This object only has meaning for SDLC ports
                        where sdlcPortAdminRole == primary "                      �"This object defines the number of times the
                        active poll list will be traversed before
                        polling a station on the slow poll list for a
                        primary, multipoint SDLC port.  Depending  on
                        the implementation, a write operation to this
                        administered value  may not take effect until
                        the port is cycled inactive.

                        This object only has meaning for SDLC ports
                        where
                            sdlcPortAdminRole == primary
                        and
                            sdlcPortAdminTopology == multipoint "                      u"This object describes the elapsed time (in
                        1/100ths of a second) between polls for failed
                        secondary link station addresses.  Depending
                        on the implementation, a write operation to
                        this administered value  may not take effect
                        until the port is cycled inactive.

                        This object only has meaning for SDLC ports
                        where
                            sdlcPortAdminRole == primary
                        and
                            sdlcPortAdminTopology == multipoint "                       �"This table contains current SDLC port
                        parameters.  Many of these objects have
                        corresponding objects in the sdlcPortAdminTable."                       L"Currently set parameters for a specific SDLC
                        port."                       �"An octet string that describes the physical
                        port to which this interface is currently
                        attached.  It has  implementation-specific
                        significance."                      "This object describes the role that the link
                        station has assumed on this connection.

                        Even though this is defined as a port object,
                        it is a link station attribute in the sense
                        that a role is per link station.  However, it
                        is not possible to vary link station roles on a
                        particular port.  For example, if an SDLC port
                        is configured to primary, all link stations on
                        that port must be primary.

                        The value of sdlcPortOperRole is undefined(3)
                        whenever the link station role has not yet been
                        established by the mode setting command."                       �"This parameter defines whether the SDLC port
                        is currently operating as though connected to a
                        leased or switched line."                       �"This parameter defines whether the SDLC port is
                        currently operating in a point-to-point or
                        multipoint topology."                       �"This parameter describes the initial value of
                        the administrative status, ifAdminStatus, of
                        this SDLC port at last port start-up."                      �"This parameter defines the period of time (in
                        100ths of a second) that the port will allow a
                        switched line to remain inactive before
                        disconnecting.  A switched line is considered
                        to be inactive if there are no I-Frames being
                        transferred.

                        The object descriptor contains the name of an
                        NCP configuration parameter, ACTIVTO.  Please
                        note that the value of this object represents
                        1/100ths of a second while the NCP ACTIVTO is
                        represented in seconds.
                        A value of zero indicates no timeout."                      �"This object describes the current minimum
                        elapsed time (in 1/100ths of a second) between
                        any two traversals of the poll list for a
                        primary SDLC port.

                        The object descriptor contains the name of an
                        NCP configuration parameter, PAUSE.  Please
                        note that the value of this object represents
                        1/100ths of a second while the NCP PAUSE is
                        represented in 1/10ths of a second.

                        This object only has meaning for SDLC ports
                        where
                            sdlcPortAdminRole == primary "                      �"This object defines the exact method that is in
                        effect for periodically polling failed secondary
                        link station addresses.

                        If sdlcPortOperSlowPollMethod == servlim, then
                        sdlcPortOperSERVLIM defines the actual polling
                        characteristics.

                        If sdlcPortOperSlowPollMethod == pollpause,
                        then sdlcPortOperSlowPollTimer defines the
                        actual polling characteristics.

                        If sdlcPortOperSlowPollMethod == other, then
                        the polling characteristics are modeled in
                        vendor-specific objects.

                        This object only has meaning for SDLC ports
                        where
                            sdlcPortOperRole == primary
                        and
                            sdlcPortOperTopology == multipoint "                      �"This object describes the number of times the
                        active poll list is currently being traversed
                        before polling a station on the slow poll list
                        for a primary, multipoint SDLC port.

                        This object only has meaning for SDLC ports
                        where
                            sdlcPortOperRole == primary
                        and
                            sdlcPortOperTopology == multipoint "                      �"This object describes the elapsed time (in
                        1/100ths of a second) between polls for failed
                        secondary link station addresses.

                        This object only has meaning for SDLC ports
                        where
                            sdlcPortOperRole == primary
                        and
                            sdlcPortOperTopology == multipoint "                       �"This object describes the value of sysUpTime
                         when this port definition was last modified.
                         If the port has not been modified, then this
                         value shall be zero."                       �"This object describes the value of sysUpTime
                        when this SDLC port last failed.  If the port
                        has not failed, then this value shall be zero."                       �"This enumerated object describes the cause of
                        the last failure of this SDLC port.  If the
                        port has not failed, then this object has a
                        value of undefined(1)."                       `"Each entry in this table contains statistics
                        for a specific SDLC port."                       ("A list of statistics for an SDLC port."                       �"This object reflects the total number of times
                        this port has failed due to its physical media
                        since port startup.  At port startup time,
                        this object must be initialized to zero."                       �"This object reflects the total number of
                        frames received by this port with invalid link
                        station addresses."                      )"This object reflects the total number of
                        frames received by this port which were
                        delivered intact by the physical layer but were
                        too short to be legal.

                        Ignoring the frame check sequence (FCS), a
                        frame is considered to be too short if it
                        is less than 2 bytes for sdlcLSOperMODULO of
                        eight, or if it is less than 3 bytes for
                        sdlcLSOperMODULO of onetwentyeight."                       �"This object reflects the total number of polls
                         received by this port since the port was
                         created."                       w"This object reflects the total number of polls
                         sent by this port since the port was created."                       �"This object reflects the total number of poll
                         responses received by this port since the port
                         was created."                       �"This object reflects the total number of poll
                         responses sent by this port since the port was
                         created."                      !"This object reflects the total number of
                         times that the local SDLC link stations on
                         this port have entered a busy state (RNR).
                         This object is initialized to zero when the
                         port is created."                      4"This object reflects the total number of
                         times that the adjacent (i.e., remote) SDLC
                         link stations on this port have entered a busy
                         state (RNR).  This object is initialized to
                         zero when the port is created."                       �"This object reflects the total number of
                         I-Frames that have been received by SDLC link
                         stations on this port.  This object is
                         initialized to zero when the port is created."                       �"This object reflects the total number of
                         I-Frames that have been transmitted by SDLC
                         link stations on this port.  This object is
                         initialized to zero when the port is created."                      l"This object reflects the total octets
                         received from adjacent SDLC link stations on
                         this port.  This object covers the address,
                         control, and information field of I-Frames
                         only.  This object is initialized to zero when
                         the port is created."                      m"This object reflects the total octets
                         transmitted to adjacent SDLC link stations on
                         this port.  This object covers the address,
                         control, and information field of I-Frames
                         only.  This object is initialized to zero when
                         the port is created."                      �"This object reflects the total number of
                         times that the SDLC link stations on this port
                         have deactivated the link as a result of
                         having received a protocol violation from the
                         adjacent link station.  This object is
                         initialized to zero when the port is created."                      ="This object reflects the total number of
                         times that the SDLC link stations on this port
                         have deactivated the link as a result of no
                         activity on the link.  This object is
                         initialized to zero when the port is created."                      A"This object reflects the total number of
                         times that the SDLC link stations on this port
                         have deactivated the link as a result of its
                         RNRLIMIT timer expiring.  This object is
                         initialized to zero when the port is created."                      _"This object reflects the total number of
                         times that the SDLC link stations on this port
                         have deactivated the link as a result of a
                         retry sequence being exhausted.  This object
                         is initialized to zero when the port is
                         created."                      $"This object reflects the total number of
                         I-Frames retransmitted by remote link stations
                         for all SDLC link stations on this port.  This
                         object is initialized to zero when the port is
                         created."                       �"This object reflects the total number of
                         I-Frames retransmitted by all local SDLC link
                         stations on this port.  This object is
                         initialized to zero when the port is created."                          �"This table contains objects that can be
                        changed to manage an SDLC link station.
                        Changing one of these parameters may take
                        effect in the operating link immediately or may
                        wait until the link is restarted depending on
                        the details of the implementation.

                        The entries in sdlcLSAdminTable can be created
                        either by an agent or a management station. The
                        management station can create an entry in
                        sdlcLSAdminTable by setting the appropriate
                        value in sdlcLSAdminRowStatus.

                        Most of the objects in this read-create table
                        have corresponding read-only objects in the
                        sdlcLSOperTable that reflect the current
                        operating value.

                        The operating values may be different from
                        these configured values if changed by XID
                        negotiation or if a configured parameter was
                        changed after the link was started."                       P"A list of configured values for an SDLC link
                         station."                       �"This value is the poll address of the
                         secondary link station for this SDLC link.  It
                         uniquely identifies the SDLC link station
                         within a single SDLC port."                       �"An octet string that defines the local name of
                        the SDLC link station.  This field may be sent
                        in the XID3 control vector 0x0E, type 0xF7."                       �"This object controls the desired state of the
                        SDLC station.  The managed system shall attempt
                        to keep the operational state, sdlcLSOperState,
                        consistent with this value."                       �"This parameter controls the desired state,
                        sdlcLSAdminState, of the SDLC link station at
                        link station start-up."                      t"This object contains the maximum PDU size that
                        the local link station thinks it can send to
                        the adjacent link station before having
                        received any XID from the ALS.  After the
                        maximum PDU size that the ALS can receive is
                        known (via XID exchange) that value is
                        reflected in sdlcLSOperMAXDATASend and takes
                        precedence over this object.

                        This value includes the Transmission Header
                        (TH) and the Request Header (RH)."                      e"This object contains the maximum PDU size that
                        the local link station can receive from the
                        adjacent link station.  This value is sent in
                        the XID to the ALS.

                        This value includes the Transmission Header
                        (TH) and the Request Header (RH)."                      ^"This object controls the reply timeout (in
                        1/100ths of a second) for an SDLC link
                        station.  If the link station does not receive
                        a response to a poll or message before the
                        specified time expires then the appropriate
                        error recovery shall be initiated.

                        The object descriptor contains the name of an
                        NCP configuration parameter, REPLYTO.  Please
                        note that the value of this object represents
                        1/100ths of a second while the NCP REPLYTO is
                        represented in 1/10ths of a second.

                        Depending on the implementation, a write
                        operation to this administered value  may not
                        change the operational value, sdlcLSOperREPLYTO,
                        until the link station is cycled inactive.

                        This object only has meaning for SDLC ports
                        where sdlcPortAdminRole == primary "                      "This object controls the maximum number of
                        unacknowledged I-frames which an SDLC link
                        station may receive.  This should range from 1
                        to (sdlcLSAdminMODULO - 1).  This value is sent
                        in the XID to the ALS.

                        A write operation to this administered value
                        will not change the operational value,
                        sdlcLSOperMAXIN, until the link station is
                        cycled inactive."                      �"This object controls the maximum number of
                        consecutive unacknowledged I-frames which an
                        SDLC link station shall send without an
                        acknowledgement.  This shall range from 1 to
                        (sdlcLSAdminMODULO - 1).

                        For link stations on switched SDLC lines,
                        certain implementions may choose to override
                        this administered value with the value
                        received in the XID exchange.

                        Depending on the implementation, a write
                        operation to this administered value may not
                        change the operational value,
                        sdlcLSOperMAXOUT, until the link station is
                        cycled inactive.

                        An implementation can support only modulo 8,
                        only modulo 128, or both."                      X"This object controls the modulus for an SDLC
                        link station.  This modulus determines the size
                        of the rotating acknowledgement window used the
                        SDLC link station pair.

                        A write operation to this administered value
                        will not change the operational value,
                        sdlcLSOperMODULO, until the link station is
                        cycled inactive.

                        An implementation can support only modulo 8,
                        only modulo 128, or both."                      �"This object controls number of retries in a
                        retry sequence for the local SDLC link
                        station.  A retry sequence is a series of
                        retransmitted frames ( data or control) for
                        which no positive acknowledgement is received.

                        The number of times that the retry sequence is
                        to be repeated is controlled by the object:
                        sdlcLSAdminRETRIESn.  The interval between retry
                        sequences is controlled by the object:
                        sdlcLSAdminRETRIESt.

                        A value of zero indicates no retries. If the
                        value of sdlcLSAdminRETRIESm is zero, then the
                        values of sdlcLSAdminRETRIESt and
                        sdlcLSAdminRETRIESn should also be zero.

                        Depending on the implementation, a write
                        operation to this administered value  may not
                        change the operational value,
                        sdlcLSOperRETRIESm, until the link station is
                        cycled inactive."                      -"This object controls the interval (in 1/100ths
                        of a second) between retry sequences for the
                        local SDLC link station if multiple retry
                        sequences are specified .  A retry sequence is
                        a series of retransmitted frames ( data or
                        control) for which no positive acknowledgement
                        is received.

                        The number of repeated retries sequences is
                        controlled by the object: sdlcLSAdminRETRIESn.
                        The retries per sequence is controlled by the
                        object:  sdlcLSAdminRETRIESm.

                        The object descriptor contains the name of an
                        NCP configuration parameter, RETRIESt.  Please
                        note that the value of this object represents
                        1/100ths of a second while the NCP RETRIESt is
                        represented in seconds.

                        Depending on the implementation, a write
                        operation to this administered value  may not
                        change the operational value,
                        sdlcLSOperRETRIESt, until the link station is
                        cycled inactive."                      z"This object controls the number of times that
                        a retry sequence is repeated for the local SDLC
                        link station.  A retry sequence is a series of
                        retransmitted frames ( data or control) for
                        which no positive acknowledgement is received.

                        The interval between retry sequences is
                        controlled by the object: sdlcLSAdminRETRIESn.
                        The retries per sequence is controlled by the
                        object:  sdlcLSAdminRETRIESm.

                        Depending on the implementation, a write
                        operation to this administered value  may not
                        change the operational value,
                        sdlcLSOperRETRIESn, until the link station is
                        cycled inactive."                      	"This object controls the length of time (in
                        1/100ths of a second) that an SDLC link station
                        will allow its adjacent link station to remain
                        in a busy (RNR) state before declaring it
                        inoperative.

                        A value of sdlcLSAdminRNRLIMIT == 0 means there
                        is no limit.

                        The object descriptor contains the name of an
                        NCP configuration parameter, RNRLIMIT.  Please
                        note that the value of this object represents
                        1/100ths of a second while the NCP RNRLIMIT is
                        represented in minutes.

                        Depending on the implementation, a write
                        operation to this administered value  may not
                        change the operational value,
                        sdlcLSOperRNRLIMIT, until the link station is
                        cycled inactive."                      �"This object controls whether communications
                        mode with the adjacent link station is
                        two-way-alternate (half) or two-way-simultaneous
                        (full).

                        A write operation to this administered value
                        will not change the operational value,
                        sdlcLSOperDATMODE, until the link station is
                        cycled inactive."                      ."This object describes the group poll address
                        for this link station instance.  If group poll
                        is not in effect for this link station
                        instance, the value for sdlcLSAdminGPoll should
                        be zero.

                        Depending on the implementation, a write
                        operation to this administered value may not
                        change the operational value, sdlcLSOperGPoll,
                        until the link station is cycled inactive."                      U"This object controls the support for
                        transmission and receipt of SIM and RIM control
                        frames for this link station.  The value of
                        this object controls the setting of the
                        transmit-receive capability sent in the XID
                        field."                      E"This object controls the transmit-receive
                        capabilities for this SDLC link station.  The
                        value of this object establishes the value of
                        the transmit-receive capability indicator sent
                        in the XID image to the adjacent link station."                      �"This object is used by a management station to
                        create or delete the row entry in
                        sdlcLSAdminTable following the RowStatus
                        textual convention.

                        Upon successful creation of the row, an agent
                        automatically creates a corresponding entry in
                        the sdlcLSOperTable with sdlcLSOperState equal
                        to 'discontacted (1)'."                       �"This table contains current SDLC link
                          parameters.  Many of these objects have
                          corresponding objects in the
                          sdlcLSAdminTable."                       X"A list of status and control values for an
                         SDLC link station."                       �"An octet string that defines the name of the
                         remote SDLC link station.  This field is
                         received in the XID3 control vector 0x0E, type
                         0xF7."                      0"This object reflects the current role that the
                        link station is assuming.

                        The value of sdlcLSOperRole is undefined(3)
                        whenever the link station role has not yet been
                        established by the mode setting command."                       �"This object describes the operational state of
                        the SDLC link station.  The managed system
                        shall attempt to keep this value consistent
                        with the administered state, sdlcLSAdminState"                      "This object contains the actual maximum PDU
                        size that the local link station can send to
                        the adjacent link station.  This object is
                        established from the value received in the XID
                        from the adjacent link station.  If no XID
                        is received, then this value is implementation
                        dependent (for instance, it could be the value
                        of sdlcLSAdminMAXDATASend).
                        This value includes the Transmission Header
                        (TH) and the Request Header (RH)."                      Q"This object reflects the current reply timeout
                        (in 1/100ths of a second) for an SDLC link
                        station.  If the link station does not receive
                        a response to a poll or message before the
                        specified time expires then the appropriate
                        error recovery shall be initiated.

                        The object descriptor contains the name of an
                        NCP configuration parameter, REPLYTO.  Please
                        note that the value of this object represents
                        1/100ths of a second while the NCP REPLYTO is
                        represented in 1/10ths of a second.

                        This object only has meaning for SDLC ports
                        where sdlcPortOperRole == primary "                       �"This object reflects the current maximum
                        number of unacknowledged I-frames which an SDLC
                        link station may receive.  This shall range
                        from 1 to (sdlcLSOperMODULO - 1)."                      �"This object controls the maximum number of
                        consecutive unacknowledged I-frames which an
                        SDLC link station shall send without an
                        acknowledgement.  This shall range from 1 to
                        (sdlcLSAdminMODULO - 1).
                        This value may controlled by the administered
                        MAXOUT, sdlcLSAdminMAXOUT, or by the MAXIN value
                        received during the XID exchange."                       �"This object reflects the current modulus for
                        an SDLC link station.  This modulus determines
                        the size of rotating acknowledgement window
                        used by the SDLC link station pair."                      �"This object controls number of retries in a
                        retry sequence for an SDLC link station.  A
                        retry sequence is a series of retransmitted
                        frames ( data or control) for which no positive
                        acknowledgement is received.

                        The current number of times that the retry
                        sequence is to be repeated is reflected by the
                        object:  sdlcLSOperRETRIESn.  The current
                        interval between retry sequences is reflected
                        by the object:  sdlcLSOperRETRIESt."                      $"This object reflects the current interval (in
                        1/100ths of a second) between retry sequences
                        for an SDLC link station if multiple retry
                        sequences are specified.  A retry sequence is a
                        series of retransmitted frames ( data or
                        control) for which no positive acknowledgement
                        is received.

                        The object descriptor contains the name of an
                        NCP configuration parameter, RETRIESt.  Please
                        note that the value of this object represents
                        1/100ths of a second while the NCP RETRIESt is
                        represented in seconds.

                        The current number of repeated retries
                        sequences is reflected by the object:
                        sdlcLSOperRETRIESn.  The current retries per
                        sequence is reflected by the object:
                        sdlcLSOperRETRIESm."                      r"This object reflects the current number of
                        times that a retry sequence is repeated for an
                        SDLC link station.  A retry sequence is a
                        series of retransmitted frames ( data or
                        control) for which no positive acknowledgement
                        is received.

                        The current interval between retry sequences is
                        reflected by the object: sdlcLSOperRETRIESn.
                        The current retries per sequence is reflected
                        by the object:  sdlcLSOperRETRIESm."                      �"This object reflects the current length of
                        time (in 1/100ths of a second) that an SDLC
                        link station will allow its adjacent link
                        station to remain in a busy (RNR) state before
                        declaring it inoperative.

                        The object descriptor contains the name of an
                        NCP configuration parameter, RNRLIMIT.  Please
                        note that the value of this object represents
                        1/100ths of a second while the NCP RNRLIMIT is
                        represented in minutes.

                        A value of sdlcLSOperRNRLIMIT == 0 means there
                        is no limit."                       �"This object reflects whether the current
                        communications mode with the adjacent link
                        station is two-way-alternate (half) or
                        two-way-simultaneous (full)."                       �"This object describes the value of sysUpTime
                         when this link station definition was last
                         modified.  If the link station has not been
                         modified, then this value shall be zero."                       �"This object describes the value of sysUpTime
                         when this SDLC link station last failed.  If
                         the link station has not failed, then this
                         value shall be zero."                       �"This enumerated object reflects the cause of
                        the last failure of this SDLC link station.  If
                        the link station has not failed, then this
                        object will have a value of undefined(1)."                      7"This object reflects the last control octet or
                        octets (depending on modulus) received by this
                        SDLC link station at the time of the last
                        failure.  If the link station has not failed,
                        then this value has no meaning."                      2"This object reflects the last control octet or
                        octets (depending on modulus) sent by this SDLC
                        link station at the time of the last failure.
                        If the link station has not failed, then this
                        value has no meaning."                      "This object reflects the information field of
                        the FRMR frame if the last failure for this
                        SDLC link station was as a result of an invalid
                        frame.  Otherwise, this field has no meaning."                      +"This object reflects the number of times that
                        the REPLYTO timer had expired for an SDLC link
                        station at the time of the last failure. If the
                        link station has not failed, then this value
                        has no meaning."                       u"This object identifies whether the echo bit is
                         in effect for this particular link station."                       p"This object describes the group poll address
                        in effect for this link station instance."                      9"This object reflects the support for
                        transmission and receipt of SIM and RIM control
                        frames for the adjacent link station.  The
                        value of this object is set from the XID field
                        received from the adjacent link station."                      b"This object reflects the transmit-receive
                        capabilities for the adjacent SDLC link
                        station.  The value of this object is the value
                        of the transmit-receive capability indicator
                        received in the XID image from the adjacent
                        link station."                       h"Each entry in this table contains statistics
                        for a specific SDLC link station."                       0"A list of statistics for an SDLC link station."                      /"This object reflects the total basic link
                        units (BLUs; frames) received from an adjacent
                        SDLC link station since link station startup.
                        At link station startup time, this object must
                        be initialized to zero."                      2"This object reflects the total basic link
                        units (BLUs; frames), transmitted to an
                        adjacent SDLC link station since link station
                        startup.  At link station startup time, this
                        object must be initialized to zero."                      �"This object reflects the total octets received
                        from an adjacent SDLC link station since link
                        station startup.  This object covers the
                        address, control, and information field of
                        I-Frames only.  At link station startup time,
                        this object must be initialized to zero."                      �"This object reflects the total octets
                        transmitted to an adjacent SDLC link station
                        since link station startup.  This object covers
                        the address, control, and information field of
                        I-Frames only.  At link station startup time,
                        this object must be initialized to zero."                       �"This object reflects the total polls received
                        from an adjacent SDLC link station since link
                        station startup.  At link station startup time,
                        this object must be initialized to zero."                       �"This object reflects the total polls sent to
                        an adjacent SDLC link station since link
                        station startup.  At link station startup time,
                        this object must be initialized to zero."                      �"This object reflects the total number of poll
                        responses sent to the adjacent SDLC link
                        station since link station startup.  This value
                        includes I-frames that are sent in response to
                        a poll.

                        At link station startup time, this object must
                        be initialized to zero."                      �"This object reflects the total number of poll
                        responses received from the adjacent SDLC link
                        station since station startup.  This value
                        includes I-frames that are received in response
                        to a poll.

                        At link station startup time, this object must
                        be initialized to zero."                      3"This object reflects the total number of times
                        that the local SDLC link station has entered a
                        busy state (RNR) since link station startup.
                        At link station startup time, this object must
                        be initialized to zero."                      @"This object reflects the total number of times
                        that an adjacent ( remote) SDLC link station
                        has entered a busy state (RNR) since link
                        station startup.  At link station startup time,
                        this object must be initialized to zero."                      "This object reflects the total I-frames
                        received from an adjacent SDLC link station
                        since link station startup.  At link station
                        startup time, this object must be initialized
                        to zero."                      "This object reflects the total I-frames
                        transmitted to an adjacent SDLC link station
                        since link station startup.  At link station
                        startup time, this object must be initialized
                        to zero."                       �"This object reflects the total UI-frames
                        received from an adjacent SDLC link station
                        since link station startup."                       �"This object reflects the total UI-frames
                       transmitted to an adjacent SDLC link station
                       since link station startup."                       �"This object reflects the total XID frames
                        received from an adjacent SDLC link station
                        since link station startup."                       �"This object reflects the total XID frames
                        transmitted to an adjacent SDLC link station
                        since link station startup."                       �"This object reflects the total TEST frames,
                        commands or responses, received from an
                        adjacent SDLC link station since link station
                        startup."                       �"This object reflects the total TEST frames,
                        commands or responses, transmitted to an
                        adjacent SDLC link station since link station
                        startup."                       �"This object reflects the total REJ frames
                        received from an adjacent SDLC link station
                        since link station startup."                       �"This object reflects the total REJ frames
                        transmitted to an adjacent SDLC link station
                        since link station startup."                       �"This object reflects the total frame reject
                        (FRMR) frames received from an adjacent SDLC
                        link station since link station startup."                       �"This object reflects the total frame reject
                        (FRMR) frames transmitted to an adjacent SDLC
                        link station since link station startup."                       �"This object reflects the total set
                        initialization mode (SIM) frames received from
                        an adjacent SDLC link station since link station
                        startup."                      6"This object reflects the total set
                        initialization mode (SIM) frames transmitted to
                        an adjacent SDLC link station since link station
                        startup.  At link station startup time, this
                        object must be initialized to zero."                      9"This object reflects the total request
                        initialization mode (RIM) frames received from
                        an adjacent SDLC link station since link station
                        startup.  At link station startup time, this
                        object must be initialized to zero."                      :"This object reflects the total request
                        initialization mode (RIM) frames transmitted to
                        an adjacent SDLC link station since link station
                        startup.  At link station startup time, this
                        object must be initialized to zero."                      9"This object reflects the total number of
                         disconnect (DISC) requests received from an
                         adjacent SDLC link station since link station
                         startup.  At link station startup time, this
                         object must be initialized to zero."                      9"This object reflects the total number of
                         disconnect (DISC) requests transmited to an
                         adjacent SDLC link station since link station
                         startup.  At link station startup time, this
                         object must be initialized to zero."                      a"This object reflects the total number of
                         unnumbered acknowledgements (UA) requests
                         received from an adjacent SDLC link station
                         since link station startup.  At link station
                         startup time, this object must be initialized
                         to zero."                      a"This object reflects the total number of
                         unnumbered acknowledgements (UA) requests
                         transmited to an adjacent SDLC link station
                         since link station startup.  At link station
                         startup time, this object must be initialized
                         to zero."                      <"This object reflects the total number of
                         disconnect mode (DM) requests received from an
                         adjacent SDLC link station since link station
                         startup.  At link station startup time, this
                         object must be initialized to zero."                      <"This object reflects the total number of
                         disconnect mode (DM) requests transmited to an
                         adjacent SDLC link station since link station
                         startup.  At link station startup time, this
                         object must be initialized to zero."                      f"This object reflects the total number of
                         set normal response mode (SNRM/SNRME) requests
                         received from an adjacent SDLC link station
                         since link station startup.  At link station
                         startup time, this object must be initialized
                         to zero."                      f"This object reflects the total number of
                         set normal response mode (SNRM/SNRME) requests
                         transmited to an adjacent SDLC link station
                         since link station startup.  At link station
                         startup time, this object must be initialized
                         to zero."                      �"This object reflects the total occurrences,
                        since link station startup, where this SDLC
                        link station has inactivated the link as a
                        result of receiving a frame from its adjacent
                        link station which was in violation of the
                        protocol.  At link station startup time, this
                        object must be initialized to zero."                      B"This object reflects the total occurrences,
                        since startup, where this SDLC link station has
                        inactivated the link as a result of no activity
                        on the link.  At link station startup time,
                        this object must be initialized to zero."                      ^"This object reflects the total occurrences,
                        since startup, where this SDLC link station has
                        inactivated the link as a result of its
                        RNRLIMIT timer expiring.  At link station
                        startup time, this object must be initialized
                        to zero."                      c"This object reflects the total occurrences,
                        since startup, where this SDLC link station has
                        inactivated the link as a result of a retry
                        sequence being exhausted.  At link station
                        startup time, this object must be initialized
                        to zero."                      +"This object reflects the total number of
                         information frames retransmitted by the remote
                         link station because the N(s) received from
                         that link station indicated that one or more
                         information frames sent by that station were
                         lost.  This event causes the first missing
                         information frame of a window and all
                         subsequent information frames to be
                         retransmitted.  At link station startup time,
                         this object must be initialized to zero.

                         Management: If the value of
                         sdlcLSStatsRetransmitsIn grows over time, then
                         the quality of the serial line is in
                         question.  You might want to look at
                         decreasing the value for
                         sdlcLSAdminMAXDATASend to compensate for the
                         lower quality line."                      "This object reflects the total number of
                         information frames retransmitted to a remote
                         link station because the N(r) received from
                         that link station indicated that one or more
                         information frames sent to that station were
                         lost. This event causes the first missing
                         information frame of a window and all
                         subsequent information frames to be
                         retransmitted.  At link station startup time,
                         this object must be initialized to zero.

                         Management: If the value of
                         sdlcLSStatsRetransmitsOut grows over time,
                         then the quality of the serial line is in
                         question.  You might want to look at
                         decreasing the value for sdlcLSAdminMAXDATASend
                         to compensate for the lower quality line."                           u"This trap indicates that the state of an SDLC
                         port has transitioned to active or inactive."                 �"This trap indicates that the state of an SDLC
                         link station has transitioned to contacted or
                         discontacted."                         L"The core compliance statement for all SDLC
                         nodes."   "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required."             �"The compliance statement for all nodes that
                         are performing the role of a Primary link
                         station."   "Write access is not required." "Write access is not required."             �"The compliance statement for all nodes that
                         are performing the role of a primary link
                         station on a multipoint line."   "Write access is not required." "Write access is not required."                     �"The sdlcCorePortAdminGroup defines objects
                         which are common to the PortAdmin group of all
                         compliant link stations."                 �"The sdlcCorePortOperGroup defines objects
                         which are common to the PortOper group of all
                         compliant link stations."                 �"The sdlcCorePortStatsGroup defines objects
                         which are common to the PortStats group of all
                         compliant link stations."                 �"The sdlcCorePortAdminGroup defines objects
                         which are common to the PortAdmin group of all
                         compliant link stations."                 �"The sdlcCorePortOperGroup defines objects
                         which are common to the PortOper group of all
                         compliant link stations."                 �"The sdlcCorePortStatsGroup defines objects
                         which are common to the PortStats group of all
                         compliant link stations."                     �"The sdlcPrimaryGroup defines objects which
                         are common to all compliant primary link
                         stations."                 �"The sdlcPrimaryMultipointGroup defines objects
                         which are common to all compliant primary link
                         stations that are in a multipoint topology."                        