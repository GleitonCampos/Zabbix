-- =================================================================
-- Copyright (c) 2004-2011 Hangzhou H3C Tech. Co., Ltd. All rights reserved.
--
-- Description: Network Time Protocol (NTP) Version 3, is used to synchronize
--              timekeeping among a set of distributed time servers and clients.
-- Reference:
-- Version: V1.4
-- History:
-- V1.0   <sunhaipeng>,<2003-03-19>,<initial>
-- V1.1   jinyi,2004-12-02,
--        Fix syntax bugs and adjust format of the whole file.
-- V1.2  sunkai,2006-03-23
--       Modified SYNTAX of hwNTPPeerKeyId.
-- V1.3  2010-03-05
--       Added hwNTPServerIP.
-- V1.4  2011-01-27
--       Added hwNTPSysPollSec, hwNTPSysClockSec. Modified hwNTPServerIP.
-- =================================================================
                                     7"This MIB provides mechanisms to monitor a NTP server." �"Platform Team Hangzhou H3C Tech. Co., Ltd.
                 Hai-Dian District Beijing P.R. China
                 http://www.h3c.com
                 Zip:100085" "200303150000Z" *"The initial revision of this MIB module."                      �"Leap Indicator (LI): This is a two-bit code warning of an impending
            leap second to be inserted/deleted in the last minute of the current
            day, with bit 0 and bit 1, respectively, coded as follows:
            00, no warning
            01, last minute has 61 seconds
            10, last minute has 59 seconds)
            11, alarm condition (clock not synchronized)."                      "This is an eight-bit integer indicating the stratum level
            of the local clock, with values defined as follows:
            0, unspecified
            1, primary reference (e.g.,, radio clock)
            2-255, secondary reference (via NTP)"                      �"Precision : This is a signed integer indicating the
            precision of the various clocks, in seconds to the nearest
            power of two. The value must be rounded to the next larger
            power of two; for instance, a 50-Hz (20 ms) or 60-Hz (16.67ms)
            power-frequency clock would be assigned the value -5 (31.25 ms),
            while a 1000-Hz (1 ms) crystal-controlled clock would be assigned
            the value -9 (1.95 ms)."                      P"Root Delay : This is a signed fixed-point number indicating
            the total roundtrip delay to the primary reference source
            at the root of the synchronization subnet, in seconds. Note
            that this variable can take on both positive and negative
            values, depending on clock precision and skew."                      "Root Dispersion : This is a signed fixed-point number
            indicating the maximum error relative to the primary
            reference source at the root of the synchronization
            subnet, in seconds. Only positive values greater than
            zero are possible."                      z"Reference Clock Identifier : This is a 32-bit code
            identifying the particular reference clock. In the
            case of stratum 0 (unspecified) or stratum 1 (primary
            reference source), this is a four-octet, left-justified,
            zero-padded ASCII string.
            Stratum, Code, Meaning
            0,       DCN,  DCN routing protocol
            0,       TSP,  TSP time protocol
            1,       ATOM, Atomic clock (calibrated)
            1,       WWVB, WWVB LF (band 5) radio
            1,       GOES, GOES UHF (band 9) satellite
            1,       WWV,  WWV HF (band 7) radio"                       �"Reference Timestamp : This is the local time, in
            timestamp format, when the local clock was last
            updated. If the local clock has never been synchronized,
            the value is zero."                       �"Poll Interval : This is a signed integer indicating
            the minimum interval between transmitted messages,
            in seconds as a power of two. For instance, a value
            of six indicates a minimum interval of 64 seconds."                      "This is a selector identifying the current synchronization
            source. Usually this will be a pointer to a structure
            containing the peer variables. The special value NULL indicates
            There is no currently valid synchronization source."                       8"This is a integer indicating the state of local clock."                       ?"The offset of two clocks is the time difference between them."                       y"Real clocks exhibit some variation in skew (second derivative of
            offset with time), which is called drift."                       /"This is a string indicating the system error."                       �"This is the current local time, in timestamp
            format. Local time is derived from the hardware clock of the particular
            machine and increments at intervals depending on the design used."                       o"This is a indicating that stability of a clock is how well
            it can maintain a constant frequency."                       B"This is a integer indicating that system support authentication."                       �"PollSec Interval : This is a integer indicating the minimum
            interval between transmitted messages.  For instance, a value of
            six indicates a minimum interval of 6 seconds."                       �"This is the current local time, in integer format.
            Local time is derived from the hardware clock of the particular
            machine and increments at intervals depending on the design used."                      "The NTP server ip address.  It must be a unicast address,
            rather than a broadcast address, a multicast address or
            the IP address of the local clock.  To delete a configured
            NTP server ip address, please set hwNTPServerIP to 0."                               �"This table provides information on the peers with
            which the local NTP server has associations.  The peers
            are also NTP servers but running on different hosts."                      "Each peers' entry provides NTP information retrieved
            from a particular peer NTP server.  Each peer is
            identified by a unique association identifier.
            Entries are automatically created when the user
            configures the NTP server to be associated with remote
            peers.  Similarly entries are deleted when the user
            removes the peer association from the NTP server.
            Entries can also be created by the management station
            by setting values for the following objects:
            hwNTPPeerRemAdr and making the hwNTPPeerRowStatus as
            'active'.  At the least, the management station has
            to set a value for hwNTPPeerRemAdr to make the
            row active."                       �"This is a bit indicating that the association was created
            from configuration information and should not be demobilized
            if the peer becomes unreachable."                       >"This is a bit indicating that system support authentication."                       O"This is a bit indicating that massage pass authentication which is authentic."                       �"The IP address of the peer. When creating a new
            association, a value for this object should be set
            before the row is made active."                       >"The UDP port number on which the peer receives NTP messages."                       c"The IP address of the local host.  Multi-homing can
             be supported using this object."                       D"The UDP port number on which the local host receives NTP messages."                      V"This is a two-bit code warning of an impending leap
            second to be inserted in the NTP timescale.  The bits
            are set before 23:59 on the day of insertion and reset
            after 00:00 on the following day.  This causes the
            number of seconds (rollover interval) in the day of
            insertion to be increased or decreased by one.  The two
            bits are coded as below,
            00, no warning
            01, last minute has 61 seconds
            10, last minute has 59 seconds
            11, alarm condition (clock not synchronized)"                      
�"This is an integer indicating the association mode,
            with values coded as follows,
            0, unspecified
            1, symmetric active - A host operating in this mode
                    sends periodic messages regardless of the
                    reach ability state or stratum of its peer.  By
                    operating in this mode the host announces its
                    willingness to synchronize and be synchronized
                    by the peer
            2, symmetric passive - This type of association is
                    ordinarily created upon arrival of a message
                    from a peer operating in the symmetric active
                    mode and persists only as long as the peer is
                    reachable and operating at a stratum level
                    less than or equal to the host; otherwise, the
                    association is dissolved.  However, the
                    association will always persist until at least
                    one message has been sent in reply.  By
                    operating in this mode the host announces its
                    willingness to synchronize and be synchronized
                    by the peer
            3, client -  A host operating in this mode sends
                    periodic messages regardless of the
                    reach ability state or stratum of its peer.  By
                    operating in this mode the host, usually a LAN
                    workstation, announces its willingness to be
                    synchronized by, but not to synchronize the peer
            4, server - This type of association is ordinarily
                    created upon arrival of a client request message
                    and exists only in order to reply to that
                    request, after which the association is
                    dissolved.  By operating in this mode the host,
                    usually a LAN time server, announces its
                    willingness to synchronize, but not to be
                    synchronized by the peer
            5, broadcast - A host operating in this mode sends
                    periodic messages regardless of the
                    reach ability state or stratum of the peers.
                    By operating in this mode the host, usually a
                    LAN time server operating on a high-speed
                    broadcast medium, announces its willingness to
                    synchronize all of the peers, but not to be
                    synchronized by any of them
            6, reserved for NTP control messages
            7, reserved for private use
            8, broadcastclient
            9, multicastclient"                       �"This is a integer indicating the stratum level
            of the local clock, with values defined as follows:
            0, unspecified
            1, primary reference (e.g.,, radio clock)
            2-255, secondary reference (via NTP)"                       6"The interval at which the peer polls the local host."                       6"The interval at which the local host polls the peer."                      �"This is a signed integer indicating the precision of
            the peer clock, in seconds to the nearest power of two.
            The value must be rounded to the next larger power of
            two; for instance, a 50-Hz (20 ms) or 60-Hz (16.67 ms)
            power-frequency clock would be assigned the value -5 (31.25 ms),
            while a 1000-Hz (1 ms) crystal-controlled clock would be assigned
            the value -9 (1.95 ms)."                      C"This is a signed fixed-point number indicating
            the total roundtrip delay to the primary reference source
            at the root of the synchronization subnet, in seconds. Note
            that this variable can take on both positive and negative
            values, depending on clock precision and skew."                      "This is a signed fixed-point number indicating
            the maximum error of the peer clock relative to
            the primary reference source at the root of the
            synchronization subnet.  Only positive values
            greater than zero are possible."                      �"The reference identifier of the peer.
            This is a 32-bit code identifying the particular reference clock.
            In the case of stratum 0 (unspecified) or stratum 1 (primary
            reference source), this is a four-octet, left-justified,
            zero-padded ASCII string.
            Stratum, Code, Meaning
            0,       DCN,  DCN routing protocol
            0,       TSP,  TSP time protocol
            1,       ATOM, Atomic clock (calibrated)
            1,       WWVB, WWVB LF (band 5) radio
            1,       GOES, GOES UHF (band 9) satellite
            1,       WWV,  WWV HF (band 7) radio"                       �"This is the local time at the peer, in timestamp format,
            when the local clock was last updated.  If the local clock has
            never been synchronized, the value is zero."                       �"This is the local time, in timestamp format,
            at the peer when it's latest NTP message was sent.
            If the peer becomes unreachable the value is set to zero"                       �"This is the local time, in timestamp format,
            when the latest NTP message from the peer arrived.
            If the peer becomes unreachable the value is set to zero."                       i"This is the local time, in timestamp format,
            at which the NTP message departed the sender."                      *"This is a shift register of NTP.WINDOW bits used to
            determine the reach ability status of the peer,
            with bits entering from the least significant (rightmost) end.
            A peer is considered reachable if at least
            one bit in this register is set to one"                       �"This is an integer counter indicating the valid samples
            remaining in the filter register. It is used to
            determine the reach ability state and when the
            poll interval should be increased or decreased."                       �"This is an integer counter used to control the
            interval of transmitted NTP messages from the local host to the peer."                      d"This is a signed fixed-point number indicating
            the roundtrip delay of the peer clock relative to
            the local clock over the network path between them,
            in seconds. Note that this variable can take on
            both positive and negative values, depending on
            clock precision and skew-error accumulation."                       �"This is a signed, fixed-point number indicating the offset
            of the peer clock relative to the local clock, in seconds."                       4"This is an indicating that peer of sample Variance"                       �"This is a signed fixed-point number indicating the
            maximum error of the peer clock relative to the local
            clock over the network path between them, in seconds.
            Only positive values greater than zero are possible."                       ~"This is an unsigned integer identifying the cryptographic
            key used to generate the message-authentication code."                      "Round-trip delay of the peer clock relative to the
            local clock over the network path between them, in
            seconds.  This variable can take on both positive
            and negative values, depending on clock precision
            and skew-error accumulation."                       F"The offset of the peer clock relative to the local clock in seconds."                       �"The maximum error of the peer clock relative to the
            local clock over the network path between them, in
            seconds.  Only positive values greater than zero are
            possible."                      |"This is an integer indicating the association mode,
            with values coded as follows,
            0, unspecified
            1, symmetric active - A host operating in this mode
                    sends periodic messages regardless of the
                    reach ability state or stratum of its peer.  By
                    operating in this mode the host announces its
                    willingness to synchronize and be synchronized
                    by the peer
            2, symmetric passive - This type of association is
                    ordinarily created upon arrival of a message
                    from a peer operating in the symmetric active
                    mode and persists only as long as the peer is
                    reachable and operating at a stratum level
                    less than or equal to the host; otherwise, the
                    association is dissolved.  However, the
                    association will always persist until at least
                    one message has been sent in reply.  By
                    operating in this mode the host announces its
                    willingness to synchronize and be synchronized
                    by the peer
            3, client -  A host operating in this mode sends
                    periodic messages regardless of the
                    reach ability state or stratum of its peer.  By
                    operating in this mode the host, usually a LAN
                    workstation, announces its willingness to be
                    synchronized by, but not to synchronize the peer
            4, server - This type of association is ordinarily
                    created upon arrival of a client request message
                    and exists only in order to reply to that
                    request, after which the association is
                    dissolved.  By operating in this mode the host,
                    usually a LAN time server, announces its
                    willingness to synchronize, but not to be
                    synchronized by the peer
            5, broadcast - A host operating in this mode sends
                    periodic messages regardless of the
                    reach ability state or stratum of the peers.
                    By operating in this mode the host, usually a
                    LAN time server operating on a high-speed
                    broadcast medium, announces its willingness to
                    synchronize all of the peers, but not to be
                    synchronized by any of them
            6, reserved for NTP control messages
            7, reserved for private use
            8, broadcastclient
            9, multicastclient
            When creating a new peer association, if no value
            is specified for this object, it defaults to
            'symmetricActive'."                       ""The number of received massages."                       "The number of send massages."                       %"The information about the massage. "                       �"The status object for this row. When a management
            station is creating a new row, it should set the
            value for cntpPeersPeerAddress at least, before the
            row can be made 'active'."                                  