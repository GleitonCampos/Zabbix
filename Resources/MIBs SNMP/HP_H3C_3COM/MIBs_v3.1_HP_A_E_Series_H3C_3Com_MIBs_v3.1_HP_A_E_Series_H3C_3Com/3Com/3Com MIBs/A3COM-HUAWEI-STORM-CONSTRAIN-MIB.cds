�-- ==================================================================
-- Copyright (C) 2004 by Huawei 3Com Technologies. All rights reserved.
--
-- Description:  Huawei 3Com LAN Switch Storm-Constrain MIB
-- Reference:
-- Version: V1.1
-- History:
-- V1.0 2005-11-19 Created by XueCong
-- V1.1 2008-06-06 Modified the description of H3cStormConstrainUnit
--                 add h3cStormCtrlPortMode by jinyi
-- ==================================================================
  
"The unit of the flux.
         none: not define.
         packetsPerSecond: packets per second.
         ratio: unit is 1%. For example, if the value is 40, it means 40%.
         bytesPerSecond: bytes per second.
         kbitsPerSecond: kilobits per second."                                    �"The Storm-Constrain function is used to avoid the
         packet-storm on a port.  Three types of flux can be
         set observed respectively: broadcast, multicast and
         unicast.  If an observed flux exceeds its upper limit,
         this kind of flux will be recognized as over-upper-flux.
         This kind of flux will be considered as normal-flux
         until it falls below its lower limit.  If any type of
         observed flux is over-upper-flux, the port will change
         its status to controlled-status, that is to stop packet
         forwarding to avoid storm.  Only when all the observed
         fluxes are not over-upper-flux, will the port return to
         normal(forwarding) status." �"Platform Team Huawei 3Com Technologies Co., Ltd.
         Hai-Dian District Beijing P.R. China
         http://www.huawei-3com.com
         Zip:100085"                  �"This value is used to identify the type of trap.
         broadcast: trap message is generated for broadcast flux exceeds
                    upper limit or falls under lower limit on a port.
         multicast: trap message is generated for multicast flux exceeds
                    upper limit or falls under lower limit on a port.
         unicast  : trap message is generated for unicast flux exceeds
                    upper limit or falls under lower limit on a port."                      �"This value is used to figure the threshold of flux in
         trap message.
         For example, when the trap is generated for broadcast
         flux exceeds upper limit on a port, this value is
         equal to upper limit value configured.  And when the
         trap is generated for broadcast flux fell under lower
         limit, this value is equal to lower limit value configured."                           7"A table containing configurations of storm-constrain."                       9"Detailed information of storm-constrain configurations."                      "Status of the port:
         controlled: indicate that the port is in controlled status.
                     Port which is in this status will not forward some type
                     of packet.
         normal    : indicate that the port is in normal status."                       �"The unit of the broadcast flux.
         This value must be set together with h3cStormCtrlBroadcastUpper
         and h3cStormCtrlBroadcastLower."                       �"The upper-limit of incoming broadcast taffic at a port
         within 1 second interval.
         Its unit depends on h3cStormCtrlBroadcastUnit value."                       �"The lower-limit of incoming broadcast taffic at a port
         within 1 second interval.
         This value must be lower than h3cStormCtrlBroadcastUpper value.
         Its unit depends on h3cStormCtrlBroadcastUnit value."                       �"The unit of the multicast flux.
         This value must be set together with h3cStormCtrlMulticastUpper
         and h3cStormCtrlMulticastLower."                       �"The upper-limit of incoming multicast taffic at a port
         within 1 second interval.
         Its unit depends on h3cStormCtrlMulticastUnit value."                       �"The lower-limit of incoming multicast taffic at a port
         within 1 second interval.
         This value must be lower than h3cStormCtrlMulticastUpper value.
         Its unit depends on h3cStormCtrlMulticastUnit value."                       �"The unit of the unicast flux.
         This value must be set together with h3cStormCtrlUnicastUpper
         and h3cStormCtrlUnicastLower."                       �"The upper-limit of incoming unicast taffic at a port
         within 1 second interval.
         Its unit depends on h3cStormCtrlUnicastUnit value."                       �"The lower-limit of incoming unicast taffic at a port
         within 1 second interval.
         This value must be lower than h3cStormCtrlUnicastUpper value.
         Its unit depends on h3cStormCtrlUnicastUnit value."                       �"This object is responsible for managing the creation,
         deletion and modification of rows, which supports active
         status and CreatAndGo, destroy operation."                       %"The storm control mode of the port."                           g"This trap message is generated when any type of the
         flux exceeds its upper limit on a port."                 �"This trap message is generated when a flux which used
         to overflow its upper limit, falls below its lower
         limit on a port."                            