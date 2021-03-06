a-- =================================================================
-- Copyright (c) 2004-2009 Hangzhou H3C Tech. Co., Ltd. All rights reserved.
--
-- Description:
-- Reference:
-- Version: V1.0
-- History:
-- V1.0 created by zhanghaiyang.
--    Initial version of the MIB
-- =================================================================
                                         k"The objects in this MIB module are used to manage RS485 interfaces,
        and manage sessions on them." �"Platform Team H3C Technologies Co., Ltd.
        Hai-Dian District Beijing P.R. China
        http://www.h3c.com
        Zip: 100085"       -- October 21, 2009
           "Propertie table."                       "Propertie entry."                       �"The next valid index of raw sessions, from 1 to 64,
        which session has been created.

        When there is no valid index left, it will return 0."                       "The port's baud rate."                       0"The port's number of data bits in a character."                       -"The port's sense of a character parity bit."                       !"The port's number of stop bits."                       �"The port's type of input flow control.  'none'
             indicates no flow control at this level.
             'hardware' indicates use of hardware signals.
             'xonOrxoff' indicates use of software function."                       /"The number of output characters for the port."                       ."The number of input characters for the port."                       5"The number of output error characters for the port."                       4"The number of input error characters for the port."                       �"Reset the counters to zero, inlucding h3cRS485TXCharacters,
            h3cRS485RXCharacters, h3cRS485TXErrCharacters and
            h3cRS485RXErrCharacters."                               5"The max number of raw sessions what we can support."                       m"RS485 raw session table.  Data recieved from rs485 will be sent to
        the destination by raw sockets."                       h"Parameters of a session, including remote IP address, remote port,
            local port, and so on."                       "Raw session index."                       w"The type of a session.  A session can use UDP socket,
            TCP socket as a client, or TCP socket as a server."                       t"This object indicates the transport type of the
             address contained in h3cRS485SessionRemoteIP object."                      "The IP of remote entry.

            When session type is 'udp', this is the IP of the peer.

            When session type is 'tcpClient', this is the IP of the server .

            When session type is 'tcpServer', this is invalid,
            it will return 0.
            "                       "The port of remote entry.

            When session type is 'udp', this is port of the peer.

            When session type is 'tcpClient', this is the port of the server.

            When session type is 'tcpServer', this is invalid,
            it will return 0.
            "                      :"Local socket port.

            When session type is 'udp', this is local UDP socket port.

            When session type is 'tcpClient', this is invalid,
            it will return 0.

            When session type is 'tcpServer', this is the local port which
            will be listened.
            "                       �"The status column used for creating,
            modifying, and deleting instances of
            the columnar objects in raw session table."                       z"Error infomation table.  It is fail to create a session, management
        station can get infomation from this table."                       "Error infomaition."                       �"Error infomation string.  When a response with 'noCreeation' for
        row creation in table h3cRS485RawSessionTable,
        the management station should display this string to users,
        thus users can konw the reason."                                  