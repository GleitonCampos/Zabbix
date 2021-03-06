�--    ============================================================================
-- Copyright (C) 2003 by  HUAWEI-3COM TECHNOLOGIES.  All rights reserved.
-- Description:  This mib file is used for configuration of NAT.
--                include :1.NAT pool
--                         2.NAT out bound
--                         3.NAT inside server
--                         4.NAT agetime
--                         5.NAT blacklist
--                         6.NAT statistics information
--                         7.NAT DNS
-- Reference:
-- Version: V1.2
-- History:
-- V1.0 2004/09/17 created by xiaoshuchao
-- V1.1 2005/06/01 Modified by liguanmin
--      Modify the value range of the node h3cNATOutboundPoolIdx
-- V1.2 2007/05/22 Modified by tangjiafeng
--      Modify the value range of the node h3cNATSessionPeerPort
-- ============================================================================
                                         �"This MIB contains objects to manage configuration of NAT.
                                There are no constraints on this MIB." "http://www.huawei-3com.com" "200501201518Z" *"The initial revision of this MIB module."       $-- September 17, 2004 at 01:00 GMT
              L"The number of NAT board in which administrator wants to
                                clear data of the session. In router, the value is 255
                                because no NAT board in it. This node only supports 'set' operation.
                                The return value of 'get' operation is meaningless."                          X"The maximal connection amount.  If the connection amount exceeds the
                                value, the IP address will be added into blacklist.  The IP address
                                will not be removed from blacklist until the connection amount is
                                less than the minimal connection amount."                        "The minimal connection amount."                      Z"The maximal connection rate(in second).  If the connection rate exceed the
                                value, the IP address will be added into blacklist.  The IP address
                                will not be removed from blacklist until the connection rate is
                                less than the minimal connection rate."                       )"The minimal connection rate(in second)."                       �"The maximal special connection rate(in second).  When administrator
                                wants to control the speed of connection, he can selects the connection
                                speed rate or special connection rate."                       1"The minimal special connection rate(in second)."                           2"Enable or disable the connection amount control."                       0"Enable or disable the connection rate control."                           �"There are two kinds of aging time in NP.  One is fast and the other is
                                slow.  Administrator can select one or other.  The defalult is fast."                          +"NAT address pool table : The address in the pool is
                                the IP address in the global network. The pool can span
                                255 IP addresses.All address pools configured by administrator
                                are recorded in this table."                       &"The entry of NAT address pool table."                       �"Index of the address pool: The index uniquely indicates
                                the address pool in the system, and its range is from 1 to 320. "                       }"The start IP address of address pool:
                                It must be less than or equal to the end IP address."                       }"The end IP address of address pool:
                                It must be more than or equal to the start IP address."                      U"The number of NAT board to which the address pool is bound.
                                The address translation is processed by this NAT board .
                                The relation between address pool and slotNo is n:1.
                                When the address pool is not bound to the NAT board,the value is 255. "                      "The counter of reference.  A address pool can be associated with
                                more than one ACL and the counter of reference is recorded in this
                                field.  When the address pool is not associated with ACL, the value is 0."                      "Only support 'destroy' and 'createAndGo'.
                                If h3cNATPoolIdx, h3cNATPoolStartIpAddr and
                                h3cNATPoolEndIpAddr were provided correctly,
                                its value is changed 'active'."                      s"NAT out bound table: through associating ACL number,
                                address pool with NAT board, administrator can designate
                                which inside IP address can be translated to global IP
                                address in the pool and the translation is processed by
                                which NAT board."                       #"The entry of NAT out bound table."                       �"The number of ACL(Access Control List).  When the packet accords with
                                the rule in the ACL, its source IP address will be translated to IP
                                address in Address pool."                      )"The index of address pool in h3cNATPoolInfoTable.
                                when administrator doesn't use the address pool and
                                use the IP address of the interface as the address of
                                global network, the value is 2147483647."                       �"Whether to use no pat manner.  The translation of no pat
                                is that the translation doesn't use the port information of packet."                       S"The number of NAT board.  In router, the value is 255 because no NAT board in it."                      "Only support 'destroy' and 'createAndGo'.
                                If h3cNATOutboundAclNo or h3cNATOutboundAclNo
                                and h3cNATOutboundPoolIdx were provided correctly,
                                its value is changed 'active'."                      �"NAT inside Server Table.  Administrator can configure server in the
                                private network which can provide service for people in the public network.
                                The translation map is :
                                (InsideIP     , InsidePort--> GlobalIP, GlobalPort    )
                                (InsideIP + 1 , InsidePort--> GlobalIP, GlobalPort + 1)
                                (InsideIP + 2 , InsidePort--> GlobalIP, GlobalPort + 2)
                                ...
                                ...
                                ...
                                (InsideIP+n(=InsideIP2),InsidePort--> GlobalIP,GlobalPort+n(=GlobalPort2))
                                "                       '"The entry of NAT inside server table."                       <"The type of protocol: icmp(1), tcp(6), udp(17) and others."                       )"The global IP address of Inside Server."                       �"The start global port of Inside Server.
                                When the port need not be configured, the value is 0."                      D"The end global port of Inside Server.  When administrator doesn't
                                configure a series of inside server, the value is 0.
                                If the value is not zero, the value of (GlobalPort2-GlobalPort)
                                must be equal to (InsideIP2 - InsideIP)."                       0"The start private IP address of Inside Server."                       �"The end private IP address of Inside Server.  When administrator doesn't
                                configure a series of inside server, the value is 0.0.0.0."                       $"The private port of Inside Server."                       S"The number of NAT board.  In router, the value is 255 because no NAT board in it."                       "The VPN index of server."                       ""Number of basic or advanced acl."                      $"Only support 'destroy' and 'createAndGo'.
                                If h3cNATServerProType, h3cNATServerGlobalIP, h3cNATServerGlobalPort
                                and h3cNATServerInsideIP were provided correctly,
                                its value is changed 'active'."                       �"NAT Time out Table. When a connection is established,
                                if there are not any actives in this connection between
                                the time, it will be disconnected."                       ""The entry of NAT Time out Table."                       "The type of protocol."                       "The time of time out."                      L"NAT blacklist function Enable Table.  In this table, administrator can decide
                                whether to start the function of blacklist in the NAT board.
                                When the function of blacklist can't be set for a NAT board,
                                the number of NAT board is 256."                       *"The entry of NAT blacklist Enable Table."                       �"The number of NAT board.
                                When the function of blacklist can't be set for a NAT board,
                                the value is 255."                       )"Start or stop of function of balcklist."                       �"The table of connection control of special IP address.  In this table, administrator can decide to
                                adopt which manner to control the connection which IP address is the
                                special IP address."                       E"The entry of the table of connection control of special IP address."                       8"The special IP address.  The IP is private IP address."                       U"The maximal connection amount.  It must be more than the minimal connection amount."                       U"The minimal connection amount.  It must be less than the maximal connection amount."                       5"Whether to use the special connection rate control."                      &"Only support 'destroy' and 'createAndGo'.
                                 If h3cNATBLIPConnectHighValue, h3cNATBLIPConnectLowValue
                                 and h3cNATBLIPUseSpecialConnectRate were provided correctly,
                                 its value is changed 'active'."                       t"The management table of blacklist.
                                The table doesn't support 'getnext' operation."                       -"The entry of management table of blacklist."                       '"The IP address of entry of blacklist."                       "The number of NAT board."                       "The connection amount."                      9"The state of connection rate:
                                red(1)   : the connection rate is above the upper limit.
                                yellow(2): the connection rate is between the upper and lower limit.
                                green(3) : the conneciton rate is below the lower limit."                       1"The statistics information table of NAT module."                       :"The entry of statistics information table of NAT module."                       S"The number of NAT board.  In router, the value is 255 because no NAT board in it."                       '"Active PAT session count In software."                       !"Active PAT session count In NP."                       "Active NO-PAT session count."                       "Active SERVER session count."                       $"Active address pool session count."                        "The number of used port in NP."                       ""The number of good packet in NP."                       !"The number of bad packet in NP."                       "Active STATIC session count."                       '"Active fragment packet session count."                       0"Active session table count hash by private IP."                       "Buffered Nat LOG table count."                      �"The nat session information table.  There is the address translation information in the table.
                                The sketch map of connection is
                                pc1(private Net)------------------>NAT Device ------------------>Server(public Net)
                                InsideIP, InsidePort---->translating to GlobalIP, GlobalPort------>PeerIP, PeerPort.
                                "                       )"The entry of session information table."                       #"The row number of the hash table."                       "The protocol type of session."                       "The global IP of session. "                       "The global port of session."                       "The Inside IP of session."                       "The Inside port of session."                       "The peer IP of session."                       "The peer port of session."                       "The VPN index of session."                       "The TTL of session."                       "The status of session."                       "The Left time of session."                       !"Static Nat configuration table."                       "Configure static Nat."                       "Inside ip address."                       "Global Ip address."                       �"Only support 'destroy' and 'createAndGo'.
                                If h3cNATStaticInsideIp and h3cNATStaticGlobalIp were provided correctly,
                                its value is changed 'active'."                       %"Active the static Nat on interface."                       %"Active the static Nat on interface."                       �"Enable/disable the static Nat on the interface(h3cNatStaticEnableIfIndex).
                                disable  (0)
                                enable   (1)
                                                            "                       +"This table is used to set mapping of DNS."                       !"The entry of h3cNATDnsMapTable."                       "Domain name."                       "Global IP address."                       " Global port number."                       e"TCP   Transmission Control Protocol.
                                UDP   User Datagram Protocol."                       �"Its value is the time that the device uses
                                from startup to last use 'Dns Map'record.
                                If the value is 0,the device never use this
                                record."                      �"Only support 'destroy' and 'createAndGo'.
                                If h3cNATDnsMapDomainName, h3cNATDnsMapGlobalIp
                                and h3cNATDnsMapGlobalPortor h3cNATDnsMapDomainName,
                                h3cNATDnsMapGlobalIp, h3cNATDnsMapGlobalPort and
                                h3cNATDnsMapProtocolType were provided correctly,
                                its value is changed 'active'."                                  