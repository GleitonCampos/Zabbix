|-- ============================================================================
-- Copyright (C) 2003 by  HUAWEI 3Com TECHNOLOGIES. All rights reserved.
--
-- Description: Huawei-3com Internetwork Packet Exchange MIB
-- Reference:
-- Version: V1.0
-- History:
-- V1.0     created by wanglu.
-- ============================================================================
   '"A simple status value for the object."                                    �"This mib defines management information used on products
        which support ipx protocol. It includes 4 parts:
            1.ipx interface configuration group - This group
        contains configurable management information and statistic
        information on each interface.
            2.rip group - Rip means route information protocol. This
        group contains configurable management information and
        route status and route statistic information.
            3.sap group - Sap means service access group. This group
        contains all service information.
            4.ipx statistics group - This group includes ipx statistic
        information on all interfaces." �"Mib Team
        Platform Team Huawei 3Com Technologies Co.,Ltd.
        Hai-Dian District Beijing P.R. China
        http://www.huawei-3com.com
        Zip:100085"                   8"This object is used to enable or disable ipx globally."                       J"Table of configurable management information on each
        interface."                       ]"An entry in the table, containing management information
        about a single interface."                       c"This variable uniquely identifies the interface
        to which the configurations are applied." 	"ifIndex"                     C"The network number of the IPX address of this
        interface."                       7"The node number of the IPX address of this interface."                      k"This node is used to set the split horizon status.
        Its default value is 'enabled'. In this case, the interface
        which receives a message can't send this message from the
        same interface. This function can avoid route loop. But it
        is unused for point to point link. If it is set to
        'disabled', split horizon is disable."                      $"This object is used to set this interface's delay time.
        It is counted by ticks which is 1/18 second. By default,
        the ethernet interface's delay time is 1 tick,
        asynchronous serial interface's delay time is 30 ticks,
        WAN interface's delay time is 6 ticks."                       �"When this variable is set to 'enabled', updating change is
        on. And sap and rip will send updating packets periodically
        to avoid broadcast storm. Whereas updating change is
        off."                       R"This variable is used to define the max length of RIP
        updating packets."                      K"This node is used to define the encapsulating form of
        IPX packets. 'dot2' indicates the form is 802.2, while 'dot3'
        means 802.3. And 'snap' indicates the form is ethernet-snap.
        It takes effect only on ethernet interface, and the default
        value is 'dot3', while 'unkown' for other types of port."                       �"This node is used to configure whether the current interface
        can forward broadcasting packets which IPX type is 20 used 
        for NetBIOS."                       k"The status of sap on the current interface. It is enabled
        when ipx is enabled on this interface."                       T"This variable is used to define the max length of SAP
        refreshing packets."                       j"This object is used to enable or disable the current
        interface to response the IPX GNS request."                       �"The status of this row. To create a row, user can 
        select 'createAndGo'. If the row is created successfully, 
        this object will became 'active'. To delete one row, 
        user can select 'destory' and the row will be deleted."                           �"This node is used to calculate Rip aging time of route
        information.
        The absolute aging time =
        (h3cIpxRouteMultiplier * h3cIpxRouteUpdateTimer)."                       O"This node is used to set rip updating time which is based
        on seconds"                       >"This object determines whether static route can be imported."                       �"This object defines the max equivalent paths to the same
        destination. If the newly defined value is smaller than the
        current value, the routes out of the new value will be set
        inactive."                       �"This object defines the max dynamic routes to the same
        destination. If the newly defined value is smaller than the
        current value, the routes will not be deleted until they age
        out or are deleted manually."                       �"This table contains all dynamic and direct ipx route information
        of this system. The information of this table is read only."                       0"Each entry includes a dynamic or direct route."                       *"This object uniquely identifies a route."                       o"The destination network number of this route information,
        and its value ranges from 1 to 0xfffffffe."                       "The next hop of this route."                       ."The protocol type of this route information."                       �"The preference of this route information. The direct route's
        preference is 0, and it can't be modified. Dynamic route's
        default preference is 100."                       E"The time, in ticks, that the packet takes to reach the destination."                       t"The object indicates the number of hops that the packet must be 
        passed through to reach the destination."                       s"The aging time of this route information. The aging time of
        static and interface route information is 0."                       ."The out interface of this route information."                       O"This table contains all static ipx route information of
        this system."                       3"Each entry includes one static route information."                      �"The index of Static Route Table. This object and
        h3cIpxStaticRouteNextHop uniquely identify a static route.
        The destination network number of this static route
        information,and its value ranges from 1 to 0xfffffffe.
        Note that the broadcast network number is 0xffffffff
        and is not allowed in IPX. The network number of
        0xfffffffe would be considered to be the network
        number of default route."                       ^"The sub-index of Static Route Table. The next hop of
        this static route information."                       o"The preference of this route information. Static route's
        preference is 60, and it can be configured."                       \"The out interface of this route. This interface can be serial
         or pos interface. "                       d"The time, in ticks that the packet takes to reach the destination 
        with the static route."                       _"This object indicates how many hops are needed to arrive
        at the destination network."                       ""The status of this static route."                       �"The status of this row. To create a row, user can 
        select 'createAndGo'. If the row is created successfully, 
        this object will became 'active'. To delete one row, 
        user can select 'destory' and the row will be deleted."                       3"A table includes all statistic route information."                       4"An entry records a statistic information of route."                       {"The protocol type of the route information. The value of
        'total' is the total amount of all kinds of IPX routes."                       6"The route amount of the corresponding protocol type."                       ="The active route amount of the corresponding protocol type."                       <"The added route amount of the corresponding protocol type."                       U"The deleted but not freed route amount of the corresponding
        protocol type."                       <"The freed route amount of the corresponding protocol type."                           �"This node is used to calculate aging time of service
        information.
        The absolute aging time =
        (h3cIpxSapMultiplier * h3cIpxSapUpdateTimer)."                       ["This node is used to set service packet updating time which
        is based on seconds."                      �"This object is used to set whether the system will reply to the
        GNS request with the Round-Robin way. By default, the system will
        response to the GNS request with the servers known to the device
        in turn, preventing from the nearest server's over loading. With
        value of disabled, in this way, the system will response to the
        request with the nearest server(who has smallest hop in system's 
        service information table)."                      %"This object is used to configure maximum number of servers of a type.
        If the newly defined value is smaller than the previous value, the
        information out of the value will not be deleted. If the queue reaches 
        to the maximum number, no new information can be added."                       q"This table inlcudes all dynamic service information.
        The dynamic service information can be read only."                       "One entry records one service"                       8"This object uniquely identifies a service information."                       "The name of the service."                       "The service type."                       C"The IPX network number portion of the IPX address of the service."                       @"The IPX node number portion of the IPX address of the service."                       6"The socket portion of the IPX address of the service"                       '"The service preference of the service"                       )"The hops from the device to the server."                       /"Interface from which the service is receieved"                       �"This table inlcudes all static service information.
        This table supports to creation and deletione of a static service,
        but not supports to modification"                       "An entry records one service"                       $"The index of static service table."                       R"The sub-index of static service table. The name of
                the service."                       {"The sub-index of static service table. The IPX network
                number portion of the IPX address of the service."                       Q"The IPX node number portion of the IPX address of the
                service."                       7"The socket portion of the IPX address of the service."                       '"The service preference of the server."                       )"The hops from the device to the server."                       h"The status of the service that you created. The value of
        this object is determined by system."                       �"The status of this row. To create a row, user can 
        select 'createAndGo'. If the row is created successfully, 
        this object will became 'active'. To delete one row, 
        user can select 'destory' and the row will be deleted."                               '"The total number of packets received."                       w"The number of received packets filled by device when forwarding 
                or delivering up to upper protocol."                       ?"The number of received packets discarded due to length error."                       ?"The number of received packets discarded due to format error."                       a"The number of received packets which's value of field Hops
                is greater than 16."                       W"The number of received packets of which hops portion
                is equal to 16."                       >"The number of received packets discarded due to other error."                      
"The number of received packets which destination is the
                local device. Note that this would include the IPX NetBIOS
                propagation packets and those broadcast packets just to
                the network on which local device resides."                       �"The number of received packets with which can't be dealt.
                One possible reason for discarding such a packet would be
                receiving a packet of an unknown or unsupported protocol."                       ~"The number of received packets to be forwarded in the case that
                the entity was not their final destination."                       >"The number of sent packets that the device generated itself."                       q"The number of packets discarded due to no route to the
                destination was found in routing table."                       �"The number of packets to be discarded when sending out.
                Note that this counter would not include the packet(s)
                discarded due to no route."                       '"The total number of RIP packets sent."                       +"The total number of RIP packets received."                       1"The total number of RIP response packets sent. "                       4"The total number of RIP response packets received."                       3"The total number of RIP request packets received."                       5"The total number of RIP request packets dealt with."                       /"The total number of RIP request packets sent."                       7"The total number of periodic update RIP packets sent."                       ;"The total number of SAP general request packets received."                       <"The total number of SAP specific request packets received."                       7"The total number of SAP GNS request packets received."                       8"The total number of SAP general response packets sent."                       9"The total number of SAP specific response packets sent."                       4"The total number of SAP GNS response packets sent."                       7"The total number of SAP periodic update packets sent."                       1"The total number of SAP error packets received."                           ;"The table of the statistic information on each interface."                       #"The entry of the statistic table."                       W"The index of the table's entry. According to the 
                interface's index." 	"ifIndex"                     :"The network number of the IPX address of this interface."                       7"The node number of the IPX address of this interface."                       8"The total number of packets received on the interface."                       4"The total number of packets sent on the interface."                       6"The total number of bytes received on the interface."                       2"The total number of bytes sent on the interface."                       <"The total number of RIP packets received on the interface."                       8"The total number of RIP packets sent on the interface."                       ="The total number of RIP packets discarded on the interface."                       ^"The total number of RIP specific request packets received
                on the interface."                       ["The total number of RIP specific response packets sent
                on the interface."                       ^"The total number of RIP general request packets received
                 on the interface."                       Z"The total number of RIP general response packets sent
                on the interface."                       <"The total number of SAP packets received on the interface."                       8"The total number of SAP packets sent on the interface."                       ="The total number of SAP packets discarded on the interface."                       ["The total number of SAP GNS response packets received
                 on the interface."                       V"The total number of SAP GNS response packets sent on
                the interface."                              