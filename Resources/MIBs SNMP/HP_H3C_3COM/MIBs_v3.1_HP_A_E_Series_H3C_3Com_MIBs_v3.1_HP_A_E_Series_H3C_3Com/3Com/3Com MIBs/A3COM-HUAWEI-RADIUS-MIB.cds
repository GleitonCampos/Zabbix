.-- =================================================================
-- Copyright (c) 2004-2011 Hangzhou H3C Tech. Co., Ltd.  All rights reserved.
--
-- Description:
--
-- A configuration management and statistical MIB, includes configuration of
-- RADIUS Server, and statistics about accounting server which complements
-- the IETF standard MIB as described in RFC2620.  In addition, there are four
-- traps supported to notify client the RADIUS Server's down and up state.
--
-- Reference: RFC2866, RADIUS-AUTH-CLIENT-MIB, RADIUS-ACC-CLIENT-MIB
-- Version: V2.0
-- History:
--  V1.0 Initial version 2004-07-13
--  V1.1 2004-10-12 updated by gaolong
--       Set size of DisplayString from 0 to 255.
--  V1.2 2005-03-10 updated by xulei
--       Modified description of this MIB
--       Modified MAX-ACCESS of nodes in h3cRdInfoTable
--       Modified description of nodes in h3cRdInfoTable
--       Added nodes of h3cRdInfoTable
--       Added h3cRdAccInfoTable
--       Added h3cRadiusAccServerTable
--       Added Traps
--  V1.3 2005-05-08 updated by xulei
--       Modified MAX-ACCESS of h3cRdPrimAccState and h3cRdSecAccState
--  V1.4 2005-06-03 updated by xulei
--       Modified SYNTAX and DESCRIPTION of h3cRdAccPacketUnit
--  V1.5 2008-05-19 updated by yangxu
--       Added nodes of h3cRdAccInfoTable
--       Added node of h3cRdAcctOnEnable
--       Added node of h3cRdAcctOnSendTimes
--       Added node of h3cRdAcctOnSendInterval
--  V1.6 2008-07-18 updated by d04528
--       Added nodes of h3cRadiusAuthenticating
--       Added node of h3cRadiusAuthClient
--       Added node of h3cRadiusAuthServerTable
--       Added node of h3cRadiusAuthServerEntry
--       Added node of h3cRadiusAuthFailureTimes
--       Added node of h3cRadiusAuthTimeoutTimes
--       Added node of h3cRadiusAuthRejectTimes
--  V1.7 2009-04-30 update by h02978
--       Added node of h3cRdSecKey
--       Added node of h3cRdSecAccKey
--       Added node of h3cRadiusAuthServerUpTrap
--       Added node of h3cRadiusAccServerUpTrap
--  V1.8 2009-08-05 update by h02978
--       Added node of h3cRadiusAuthErrThreshold
--       Added node of h3cRadiusAuthErrTrap
--  V1.9 2010-03-29 Modifyed by x04730
--       Modify SYNTAX of h3cRdAccRealTime
--       2010-07-14 Modifyed by x04730
--       Modify SYNTAX of h3cRdQuietTime
--       Modify SYNTAX of h3cRdAccQuietTime
--       2010-08-26 update by y06401
--       Added h3cRadiusSchAuthTable
--       Added h3cRadiusSchAccTable
--  V2.0 2010-03-29 Modifyed by y07111
--       Added nodes of h3cRadiusStatistic
--       Added node of h3cRadiusStatAccReq
--       Added node of h3cRadiusStatAccAck
--       Added node of h3cRadiusStatLogoutReq
--       Added node of h3cRadiusStatLogoutAck
-- =================================================================
                                                             �"The A3COM-HUAWEI-RADIUS-MIB contains objects to
        Manage configuration and Monitor running state
        for RADIUS feature." �"Platform Team Hangzhou H3C Tech. Co., Ltd.
        Hai-Dian District Beijing P.R. China
        http://www.h3c.com
        Zip:100085
        "       !-- August 26, 2010 at 00:00 GMT
           ?"The (conceptual) table listing RADIUS authentication servers."                       H"An entry (conceptual row) representing a RADIUS authentication server."                       W"The name of the RADIUS authentication group referred to in this table
        entry."                       9"The IP address of primary RADIUS authentication server."                       }"The UDP port the client is using to send requests to
        primary RADIUS authentication server.  Default value is 1812."                       �"The state of the primary RADIUS authentication server.
        1 (active) The primary authentication server is in active state.
        2 (block)  The primary authentication server is in block state."                       ;"The IP address of secondary RADIUS authentication server."                       "The UDP port the client is using to send requests to
        secondary RADIUS authentication server.  Default value is 1812."                       �"The state of the secondary RADIUS authentication server.
        1 (active) The secondary authentication server is in active state.
        2 (block)  The secondary authentication server is in block state."                       �"The secret shared between the RADIUS client and RADIUS
        authentication server used in encoding and decoding
        sensitive data.  Length is 1 - 16 characters."                       �"The number of attempts the client will make when trying to send
        requests to a server before it will consider the attempt failed.
        Default value is 3."                       |"The timeout value the client will use when sending requests to a server.
        The unit is second.  Default value is 3."                       X"The IP addresses type (IPv4 or IPv6) of primary RADIUS authentication
        server."                       9"The IP address of primary RADIUS authentication server."                       Z"The IP addresses type (IPv4 or IPv6) of secondary RADIUS authentication
        server."                       ;"The IP address of secondary RADIUS authentication server."                      ."Specify the type of RADIUS server.
        1 (standard) - Server based on RFC protocol(s).
        2 (iphotel) - Server for IP-Hotel or 201+ system.
        3 (portal) - Server for iTellin Portal system.
        4 (extended) - Server based on RADIUS extensions.
        Default type is standard."                       �"The time for server returning active.  The unit is minute.
         When the value is 0, the server state retains active. Default value is 5."                       �"Specify the user-name format that is sent to RADIUS server.
        1 (withoutdomain) - send the user-name without domain.
        2 (withdomain) - send the user-name with domain.
        Default format is withdomain."                      p"This object is responsible for managing the creation, deletion and
        modification of rows, which support active status and CreateAndGo,
        Destroy operation.  To create a new row, h3cRdGroupName must be specified.
        To destroy an existent row, the h3cRdGroupName MUST NOT be referred by
        h3cDomainTable in h3cDomainRadiusGroupName column."                       �"The secret shared between the RADIUS client and the secondary RADIUS
        authentication server used in encoding and decoding
        sensitive data.  Length is 1 - 16 characters."                       ;"The (conceptual) table listing RADIUS accounting servers."                       D"An entry (conceptual row) representing a RADIUS accounting server."                       ?"The name of the RADIUS group referred to in this table entry."                       K"The IP addresses type (IPv4 or IPv6) of primary RADIUS accounting server."                       5"The IP address of primary RADIUS accounting server."                       y"The UDP port the client is using to send requests to primary
        RADIUS accounting server.  Default value is 1813."                       �"The state of the primary RADIUS accounting server.
        1 (active) The primary accounting server is in active state.
        2 (block)  The primary accounting server is in block state."                       V"The IP addresses type (IPv4 or IPv6) of secondary RADIUS accounting
        server."                       7"The IP address of secondary RADIUS accounting server."                       {"The UDP port the client is using to send requests to secondary
        RADIUS accounting server.  Default value is 1813."                       �"The state of the secondary RADIUS accounting server.
        1 (active) The secondary accounting server is in active state.
        2 (block)  The secondary accounting server is in block state."                       �"The secret shared between the RADIUS client and RADIUS
        accounting server used in encoding and decoding sensitive data.
        Length is 1 - 16 characters."                       �"The number of attempt the client will make when trying to send
        requests to a server before it will consider the attempt failed.
        Default value is 3."                       |"The timeout value the client will use when sending requests to a server.
        The unit is second.  Default value is 3."                      ."Specify the type of RADIUS server.
        1 (standard) - Server based on RFC protocol(s).
        2 (iphotel) - Server for IP-Hotel or 201+ system.
        3 (portal) - Server for iTellin Portal system.
        4 (extended) - Server based on RADIUS extensions.
        Default type is standard."                       �"The time for server returning active.  The unit is minute.
         When the value is 0, the server state retains active. Default value is 5."                      �"Defines the action that authentication should take if
        authentication succeeds but the associated accounting start
        fails.
        1 (ignore) - treat as authentication success; ignore
            accounting start failure.
        2 (reject) - treat as authentication failed if
            corresponding accounting start fails.
        Default value is 1(reject)."                       �"Interval of realtime-accounting packets.  The unit is minute.
        The time must be a multiple of 3.  when the value is 0, the
        device doesn't send realtime-accounting packet.  Default value is 12."                       �"The number of attempt the client will make when trying to send
        realtime-accounting packet to accounting server before it will
        consider the attempt failed.  Default value is 5."                      "The control of whether save stop-accounting packet in local buffer
        and resend later when the accounting server doesn't respond.  When
        SaveStopPktEnable is set to false, the value of AccStopRetry will be
        ignored.  Default value is true."                       �"The number of attempt the client will make when trying to send
        stop-accounting packet to accounting server.  Default value is 500."                      �"Specify data flow format that is sent to RADIUS server.  The value
        SHOULD be set the same as the value of corresponding server.
        1 (byte) -  Specify 'byte' as the unit of data flow.
        2 (kiloByte) - Specify 'kilo-byte' as the unit of data flow.
        3 (megaByte) - Specify 'mega-byte' as the unit of data flow.
        4 (gigaByte) - Specify 'giga-byte' as the unit of data flow.
        Default value is 1."                      �"Specify packet format that is sent to RADIUS server.  The value
        SHOULD be set the same as the value of corresponding server.
        1 (onePacket)  - Specify 'one-packet' as the unit of packet.
        2 (kiloPacket) - Specify 'kilo-packet' as the unit of packet.
        3 (megaPacket) - Specify 'mega-packet' as the unit of packet.
        4 (gigaPacket) - Specify 'giga-packet' as the unit of packet.
        Default value is 1."                      v"This object is responsible for managing the creation, deletion and
        modification of rows, which support active status and CreateAndGo,
        Destroy operation.  To create a new row, h3cRdAccGroupName must be specified.
        To destroy an existent row, the h3cRdAccGroupName MUST NOT be referred by
        h3cDomainTable in h3cDomainRadiusGroupName column."                      g"The control of Accounting-On function.  The Accounting-On function is
        used by the client to mark the start of accounting (for example, upon
        booting) by sending Accounting-On packets and to mark the end of
        accounting (for example, just before a scheduled reboot) by sending
        Accounting-Off packets.  Default value is false."                       �"The number of Accounting-On packets the client will send before it
        considers the accounting server failed.  Default value is 15."                       V"Interval of Accounting-On packets.  The unit is second.
        Default value is 3."                       �"The secret shared between the RADIUS client and the secondary RADIUS
        accounting server used in encoding and decoding sensitive data.
        Length is 1 - 16 characters."                           �"The threshold of authentication failure trap.  A trap will be sent
            when the percent of the unsuccessful authentication exceeds this threshold."                               n"The (conceptual) table listing the RADIUS accounting
        servers with which the client shares a secret."                       q"An entry (conceptual row) representing a RADIUS accounting
        server with which a client shares a secret."                       M"The number of RADIUS accounting start request sent to this
        server."                       T"The number of RADIUS accounting start response received
        from this server."                       O"The number of RADIUS interim accounting request sent to
        this server."                       V"The number of RADIUS interim accounting response received
        from this server."                       S"The number of RADIUS stop accounting request sent to
        this RADIUS server."                       S"The number of RADIUS stop accounting response received
        from this server."                           ~"This trap is generated when the authentication RADIUS server
        doesn't respond client's requests for specified times."                 z"This trap is generated when the accounting RADIUS server
        doesn't respond client's requests for specified times."                     �"This trap is generated when the device finds that the state of
        RADIUS authentication server becomes reachable from unreachable."                 �"This trap is generated when the device finds that the state of
        RADIUS accounting server becomes reachable from unreachable."                 �"This trap is generated when the device finds that the percent of
        unsuccessful authentication exceeds a threshold, and the threshold
        is the value of node h3cRadiusAuthErrThreshold."                         r"The (conceptual) table listing the RADIUS authenticating
        servers with which the client shares a secret."                       u"An entry (conceptual row) representing a RADIUS authenticating
        server with which a client shares a secret."                       <"The number of RADIUS authenticating failed to this server."                       ="The number of RADIUS authenticating timeout to this server."                       >"The number of RADIUS authenticating rejected to this server."                                   ?"The (conceptual) table listing RADIUS authentication servers."                       G"An entry (conceptual row) representing RADIUS authentication servers."                       U"The name of the RADIUS authentication server group referred to in this table entry."                       9"The IP address of primary RADIUS authenticaiton server."                       }"The UDP port the client is using to send requests to primary
        RADIUS authentication server.  Default value is 1812."                       �"The secret shared between the RADIUS client and the primary RADIUS
        authentication server used in encoding and decoding sensitive data."                       ;"The IP address of secondary RADIUS authenticaiton server."                       "The UDP port the client is using to send requests to secondary
        RADIUS authentication server.  Default value is 1812."                       �"The secret shared between the RADIUS client and the secondary RADIUS
        authentication server used in encoding and decoding sensitive data."                      "This object is responsible for managing the creation, deletion and
        modification of rows, which support active status and CreateAndGo,
        Destroy operation.
        To create a new row, h3cRadiusSchAuthGroupName must be specified,
        and this action will create a corresponding domain that
        h3cDomainRadiusGroupName is the same as h3cRadiusSchAuthGroupName.
        To destroy an existent row, the h3cRadiusSchAuthGroupName MUST NOT be
        referred by h3cDomainTable in h3cDomainRadiusGroupName column."                       ;"The (conceptual) table listing RADIUS accounting servers."                       C"An entry (conceptual row) representing RADIUS accounting servers."                       Q"The name of the RADIUS accounting server group referred to in this table entry."                       5"The IP address of primary RADIUS accounting server."                       y"The UDP port the client is using to send requests to primary
        RADIUS accounting server.  Default value is 1812."                       �"The secret shared between the RADIUS client and the primary RADIUS
        accounting server used in encoding and decoding sensitive data."                       7"The IP address of secondary RADIUS accounting server."                       {"The UDP port the client is using to send requests to secondary
        RADIUS accounting server.  Default value is 1812."                       �"The secret shared between the RADIUS client and the secondary RADIUS
        accounting server used in encoding and decoding sensitive data."                      "This object is responsible for managing the creation, deletion and
        modification of rows, which support active status and CreateAndGo,
        Destroy operation.
        To create a new row, h3cRadiusSchAccGroupName must be specified,
        and this action will create a corresponding domain that
        h3cDomainRadiusGroupName is the same as h3cRadiusSchAccGroupName.
        To destroy an existent row, the h3cRadiusSchAccGroupName MUST NOT be
        referred by h3cDomainTable in h3cDomainRadiusGroupName column."                               N"It shows the number of radius account request to the
        radius server."                       R"It shows the number of radius account response from the
         radius server."                       ="It shows the number of logout request to the radius server."                       @"It shows the number of logout response from the radius server."                                  