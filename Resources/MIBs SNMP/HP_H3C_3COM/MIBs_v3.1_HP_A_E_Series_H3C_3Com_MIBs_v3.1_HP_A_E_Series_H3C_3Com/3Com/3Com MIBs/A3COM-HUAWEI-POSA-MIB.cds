	-- =================================================================
-- Copyright (c) 2004-2010 Hangzhou H3C Tech. Co., Ltd. All rights reserved.
--
-- Description: This MIB is to provide the definition of the POSA
--              (Point Of Sale Access) system.
-- Reference:
-- Version: V1.2
-- History:
-- V1.0 2008-03-12 Initial version, created by Lei Hao, Yang Xu
-- V1.1 2008-09-22 updated by yangxu
--      Modify the limitation(SIZE (4..7)) of h3cPosaMapDestCode
--      Modify the default value of h3cPosaFcmAnswerTimeout
--      Modify the limitation(0..65535) of h3cPosaAppHostPort
--      Modify the limitation(0..65535) of h3cPosaTerminalListenPort
--      Add new node h3cPosaTerminalTransAppID in h3cPosaTerminalTable
--      Rename h3cPosaAppDiscardedPkts to h3cPosaAppInDiscardedPkts
--      Add new node h3cPosaAppOutDiscardedPkts in h3cPosaAppStatTable
--      Rename h3cPosaTerminalDiscardedPkts to h3cPosaTerminalInDiscardedPkts
--      Add new node h3cPosaTerminalOutDiscardedPkts in h3cPosaTerminalStatTable
--      Modify the description of object h3cPosaAppHostPort,
--      h3cPosaFcmStatTimeoutCnts, h3cPosaFcmStatConnectFailCnts,
--      h3cPosaAppRecvPkts, h3cPosaAppSendPkts, h3cPosaAppErrPkts,
--      h3cPosaAppDistributeErrCnts, h3cPosaAppInDiscardedPkts,
--      h3cPosaTerminalRecvPkts, h3cPosaTerminalSendPkts,
--      h3cPosaTerminalErrPkts, h3cPosaTerminalMapErrCnts,
--      h3cPosaTerminalInDiscardedPkts.
-- V1.2 2010-04-08 updated by Cai Zibin, Tong Wei
--      Add h3cPosaFcmConfTable
--      Add h3cPosaTcpTermStatTable
--      Add h3cPosaBatchTerminalTable
--      Add h3cPosaCallerStatTable
--      Add new node h3cPosaTerminalHangUp, h3cPosaFcmLinkNegoFailed,
--      h3cPosaFcmPhyNegoFailed in h3cPosaTrapPrex
--      Add new node h3cPosaSrvStateChangeTrapEnable,
--      h3cPosaAppStateChangeTrapEnable, h3cPosaTerminalHangUpTrapEnable,
--      h3cPosaFcmLnkNegoFailTrapEnable, h3cPosaFcmPhyNegoFailTrapEnable,
--      in h3cPosaControl
--      h3cPosaAppName, h3cPosaCallerIDTransEnable, h3cPosaTpduChangeStrategy
--      in h3cPosaAppTable
--      h3cPosaTerminalName and h3cPosaTerminalCfgIfIndex in h3cPosaTerminalTable
--      h3cPosaMapSrcCode in h3cPosaMapTable
-- =================================================================
  P"The strategy to modify the address of the packet from terminals before
        delivering it to application server.  Now it supports 2 types.
        ChangeTpduSrc(1)  Replace the source address of the packet with POSID.
        ChangeTpduDest(2) Replace the destination address of the packet with
                          POSID."              �"The work mode of a POS application.  It has two value normal(1)
        and temporary(2).  This attribute is valid only when the service type
        is tcp(1).  If it works in temporary(2) mode, the TCP connection
        between router and application server is established
        when a POS trade begins and disconnected when a POS trade finishes.
        In normal(1) mode, the TCP connection is established
        when POS function is enabled and exists all along."              �"The current running state of the peer (application server or POS terminal)
        of the router.
        notset(1)     The peer is not configured correctly.
        down(2)       The interface connecting with the peer is down.
        up(3)         The interface connecting with the peer is up.
        kept(4)       The connection between router and the peer is
                      not established.
        linking(5)    The connection between router and the peer is
                      establishing.
        linked(6)     The connection between router and the peer is
                      established.
        multilink(7)  There are multiple connections between router and the peer.

        The status of down(2) and up(3) appear only when the router and the peer
        are connected with interface.
        The status about TCP connections appear when the router and the peer are
        connected with TCP/IP.
        "              �"The access type of a POS terminal.  Now it supports 3 types.
        fcm(1)  The POS terminal connects with router through FCM interface.
        flow(2) The POS terminal connects with router through SERIAL, ASYNC,
                AM (Analog Modem) or AUX interface.
        tcp(3)  The POS terminal connects with router through TCP/IP protocol.
                The default access type is fcm(2)."              u"The service type of a POS application.  It means the way
        in which the router connects with the application server.
        At present, it supports two service types, tcp(1) and flow(2).
        If the router connects with the server through SEARIAL/ASYNC
        interface, the service type is flow(1).  If through TCP/IP,
        the service type is tcp(1)."                                                     ["This MIB is to provide the definition of the POSA
        (Point Of Sale Access) system." �"PLAT Team Hangzhou H3C Technologies Co.,Ltd.
        Shang-Di Information Industry Base,
        Hai-Dian District Beijing P.R. China
        http://www.h3c.com
        Zip:100085" "200803120933Z" *"The initial revision of this MIB module."                   u"This attribute controls the starting or stoppage of POS access function.
        The defalut value is disabled(1)."                       �"The maximum answer time of a POS connection through a FCM (Fast
        Connection Modem) interface.
        The answer time is the interval from the POS terminal sending request
        to the Router giving its reply, in units of milliseconds."                       ]"The maximum time of a POS trade through a FCM interface,
        in units of milliseconds."                       d"The maximum idle time of a POS connection through the FCM interface,
        in units of seconds."                       b"This attribute controls whether the h3cPosaServerStatusChange trap will
        be sent or not."                       ^"This attribute controls whether the h3cPosaAppStateChange trap will
        be sent or not."                       ^"This attribute controls whether the h3cPosaTerminalHangUp trap will
        be sent or not."                       a"This attribute controls whether the h3cPosaFcmLinkNegoFailed trap will
        be sent or not."                       `"This attribute controls whether the h3cPosaFcmPhyNegoFailed trap will
        be sent or not."                           `"This table shows the configuration information and
        running status of POS application."                       `"This table shows the configuration information and
        running status of POS application."                       C"The identification of a POS application.  It ranges from 1 to 31."                       }"The service type of a POS application.  It means the way
        in which the router connects with the application server."                      B"This attribute is the ifindex through which the router connecting with
        the application server, if the service type of POS application is flow(2).
        It is invalid if the service type is tcp(1).
        At preasent, it supports 5 types of interface: FCM, SERIAL, ASYNC,
        AM (Analog Modem) and AUX." 	"ifindex"                     %"The work mode of a POS application."                       �"The IP address type of the application server.  And now it must be IPV4.
        It is invalid if the service type is flow(2)."                       �"The IP address of the application server.  And now it only supports IPV4.
        It is invalid if the service type is flow(2)."                       �"The listening port of the application server.  If the information of
        the application server is not specified, this object will return the
        value 0.
        It is invalid if the service type is flow(2)."                       "The source IP address type of the access router.  Now it must be ipv4.
        It is invalid if the service type is flow(2)."                       �"The source IP address of access router used in connecting with
        application server.  Now it only supports ipv4.
        It is invalid if the service type is flow(2)."                       �"The TCP keep alive interval of the connection between the router and
        the application server.  In unit of seconds.
        The default value is 2 seconds.
        It is valid only when the service type is tcp(1)."                       r"The maximum number of sending TCP keep alive packets.
        It is valid only when the service type is tcp(1)."                       �"The maximum interval that the router waits for the reply from
        application server after sending the request for establishing a TCP
        connection.  It is invalid if the service type is flow(2)."                       2"The current running state of application server."                       "Operation status."                       '"The description of a POS application."                       8"Enable or disable the caller-id transmission function."                       z"Set the strategy to modify the address of the packet from terminals
        before delivering it to application server."                       ]"This table shows the configuration information and
        running status of POS terminal."                       ]"This table shows the configuration information and
        running status of POS terminal."                       '"The identification of a POS terminal."                       $"The access type of a POS terminal."                       �"The ifindex of the interface through which connects the POS terminal
        and the router.  It is invalid if the access type is TCP." 	"ifindex"                    �"The identification of the application server to which all the packets
        from this POS terminal will be sent.
        If this object is set to 0, the destination application server to which
        a packet from this POS terminal will be sent is determined by its TPDU
        (Transport Protocol Data Unit) destination address.
        It is invalid if the access type is TCP."                       x"The listening port accepting the connection from POS terminals.
        It is valid only when the access type is TCP."                       /"The current running status of a POS terminal."                       "Operation status."                       $"The description of a POS terminal."                       �"The ifindex of the interface on which the terminal configuration is.
        If it is a physical interface, its value is equal to that of
        h3cPosaTerminalIfIndex." 	"ifindex"                     :"This table describe the application-mapping information."                       :"This table describe the application-mapping information."                      �"The destination code of the mapping item.  Generally, the destination
        code is a 4-character-string.  If the destination address in POS packet
        matches the code, the packet will be deliveried to the corresponding
        application server.  If any code can not be matched, the packet will be
        deliveried to the default server.  A special destination code, 'default',
        is for default mapping item."                       I"The identifier of POS application.  It is the index of h3cPosaAppTable."                       "Operation status."                      �"The source code of the mapping item.  Generally, the source code is a
        4-character-string.  If the source address in POS packet matches the
        code, the packet will be deliveried to the corresponding application
        server.  If any code can not be matched, the packet will be deliveried
        to the default server.  A special source code, 'default', is for
        default mapping item."                       ?"This table shows the statistics information of FCM interface."                       ?"This table shows the statistics information of FCM interface."                       "The index of FCM interface."                       9"The number of disconnections because of trade timeouts."                       I"The number of connection failures because of unsuccessful negotiations."                       ="This table shows the statistics information of application."                       ="This table shows the statistics information of application."                       ="The number of packets recieved from the application server."                       7"The number of packets sent to the application server."                       6"The number of inbound packets that contained errors."                       d"The number of packets that are discarded when no corresponding POS
        terminal can be found."                       ]"The number of inbound packets that are discarded when the incoming
        buffer is full."                       �"The number of outbound packets that are discarded because of link
        errors between the router and the application server."                       ="This table shows the statistics information of application."                       ="This table shows the statistics information of application."                       7"The number of packets recieved from the POS terminal."                       1"The number of packets sent to the POS terminal."                       6"The number of inbound packets that contained errors."                       E"The number of packets that are discarded because of mapping errors."                       ]"The number of inbound packets that are discarded when the incoming
        buffer is full."                       |"The number of outbound packets that are discarded because of link
        errors between the router and the POS terminal."                       ["The table of the configuration information relevant to
        a batch of POS terminals."                       N"The configuration information relevant to a batch of
        POS terminals."                       -"The first ID of the batch of POS terminals."                       "Operation status."                       \"This table shows the statistics information of terminal whose
        access type is tcp."                       \"This table shows the statistics information of terminal whose
        access type is tcp."                       "The index of entity."                       9"The type of Internet address.  And now it must be ipv4."                       �"The IP address or the subnet of the statistics terminal(s).
        When the vlaue is a subnet, the statistics of all the
        terminals in the subnet will be added up.  And now it only
        supports ipv4."                       a"The mask associated with the IP address or the subnet.  And
        now it only supports ipv4."                       :"The number of packets recieved from the POS terminal(s)."                       4"The number of packets sent to the POS terminal(s)."                       6"The number of inbound packets that contained errors."                       E"The number of packets that are discarded because of mapping errors."                       ]"The number of inbound packets that are discarded when the incoming
        buffer is full."                       "The number of outbound packets that are discarded because of link
        errors between the router and the POS terminal(s)."                       "Operation status."                       d"This table shows the configuration information of FCM (Fast Connection
        Modem) interfaces."                       d"This entry shows the configuration information of FCM (Fast Connection
        Modem) interfaces."                       "Delay time for hookoff."                       %"Silence time for modem negotiation."                       ."Scramble-binary1 time for modem negotiation."                       0"Unscramble-binary1 time for modem negotiation."                       ="RLSD (Received Line Signal Detect) off threshold for modem."                       <"RLSD (Received Line Signal Detect) on threshold for modem."                       "TX power for modem."                       "Answer tone level for modem."                       ["This table shows the statistics information of terminal according the
        caller-ID."                       ["This table shows the statistics information of terminal according the
        caller-ID."                       "The caller number."                       :"The number of packets recieved from the POS terminal(s)."                       4"The number of packets sent to the POS terminal(s)."                       6"The number of inbound packets that contained errors."                       E"The number of packets that are discarded because of mapping errors."                       ]"The number of inbound packets that are discarded when the incoming
        buffer is full."                       "The number of outbound packets that are discarded because of link
        errors between the router and the POS terminal(s)."                       "Operation status."                               E"This trap is generated when the POS function is started or stopped."                 Z"This trap is generated whenever the availability of application server
        changes."                 �"This trap is generated whenever the POS connection through a FCM (Fast
        Connection Modem) interface is hanged up by POS terminal."                 �"This trap is generated whenever the link layer negotiation is failed
        between the POS terminal and router through a FCM (Fast Connection
        Modem) interface."                 �"This trap is generated whenever the physical layer negotiation is failed
        between the POS terminal and router through a FCM (Fast Connection
        Modem) interface."                     �"This is a dummy MIB object referenced by the h3cPosaAppStateChange trap.
        This object shows the availability changing of corresponding application
        server."                                  