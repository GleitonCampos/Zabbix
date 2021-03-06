]-- ============================================================================
-- Copyright (C) 2003 by  HUAWEI-3COM TECHNOLOGIES.  All rights reserved.
--
-- Description:
-- Reference:
-- Version: V1.00
-- History:
-- V1.00 Created by Zhouzhihua, 2004.11.12
-- ============================================================================
                        �"This MIB contains objects to manage the configuration and status
            information of network traffic statistics.  It classifies the IP
            packets by source IP address, source port, destination IP address,
            destination port, protocol, ToS and input interface, counts the
            octets and packets, and sends the statistic information to the
            specific collector.
            " �"L3+ Team Huawei-3Com Technologies Co.,Ltd.
            Bing-jiang District Hangzhou P.R.China
            http://www.huawei-3com.com
            Zip:310053
            " "200409211415Z" *"The initial revision of this MIB module."       #-- November 07, 2004 at 13:53 GMT
               y"The stream will be aged when the active time of this stream
            exceeds this value.  This object is in minute."                       {"The stream will be aged when the inactive time of this stream
            exceeds this value.  This object is in second."                      ""The version of the exported packet, which describes the format
            of the exported packet.
            It should export version 5 and version 8 when this object is 5,
            but it should export version 9 only when the value of this object
            is 9.
            "                       W"The number of autonomous system (AS).
            This object can be origin or peer."                       T"This object specifies the refresh rate in number of
            exported packets."                       4"This object specifies the timeout rate in minutes."                       �"This object describes the interface index at the exported packet.
             It can be interface index or vlan id according to the product."                       r"This table describes the board which can enable network traffic
            statistics at the switch or router."                       %"The entry of h3cNSProcessSlotEntry."                       w"This object describes all boards which can processes network
            traffic statistics at the switch or router."                       A"This table describes the configuration of the exported packets."                       &"The entry of h3cNSExportConfigTable."                      	"The aggregation type.

            v5Statistics type counts IP packets which have same source
            IP address, destination IP address, source port, destination port,
            protocol, ToS, input interface, output interface.

            AS type counts IP packets which have same source AS, destination AS,
            input interface and output interface.

            destinationPrefix type counts IP packets which have same destination
            AS, output interface, destination mask and destination prefix.

            sourcePrefix type counts IP packets which have same source AS, input
            interface, source mask and source prefix.

            protocolPort type counts IP packets which have same protocol, source
            port and destination port.

            prefix type counts IP packets which have same source AS, destination
            AS, input interface, output interface, source mask, source prefix,
            destination mask, destination prefix.

            tosAS type counts IP packets which have same tos, source AS, destination
            AS, input interface and output interface.

            tosDestinationPrefix type counts IP packets which have same tos,
            destination AS, output interface, destination mask and destination prefix.

            tosProtocolPort type counts IP packets which have same tos, protocol,
            source port and destination port.

            tosSourcePrefix type counts IP packets which have same tos, source AS,
            input interface, source mask and source prefix.

            tosPrefix type counts IP packets which have same tos, source AS,
            destination AS, input interface, output interface, source mask, source
            prefix, destination mask, destination prefix.

            prefixPort type counts IP packets which have same tos, input interface,
            output interface, source mask, source prefix, destination mask, destination
            prefix, source port and destination port."                       "The destination IP address of the exported packet.
             This destination IP address is a NSC (NS Collector) address."                       l"The destination port of the exported packets.
             This destination port is a NSC listening port."                       0"The source IP address of the exported packets."                       2"The state of aggregation is enabled or disabled."                       ?"This table describes the Information of the exported packets."                       +"The entry of h3cNSExportInformationTable."                       /"This object is equal to h3cNSAggregationType."                       +"This object is equal to h3cNSProcessSlot."                       *"This object counts the exported streams."                       *"This object counts the exported packets."                       �"This object counts the exported packets which failed to send.
             The error may be unreachable destination IP address."                       ."This table describes current configurations."                       %"The entry of h3cNSAggregationTable."                       E"The IP packet will be counted when it is passing through this slot."                       |"The IP packet will be statistics when it through this interface.
             This object is equal to ifIndex at ifTable."                       +"This object is equal to h3cNSProcessSlot."                       �"This object describes which packets will be counted.
             It may be inbound or outbound packets through this interface."                       !"The number of number-acl group."                       "The name of name-acl group."                       "The rule of acl group."                       n"SNMP Row Status Variable.
             Writable objects in the table may be written in any RowStatus state."                       >"This table describes current information of network traffic."                       %"The entry of h3cNSAggregationTable."                       +"This object is equal to h3cNSProcessSlot."                       ,"This object counts current active streams."                       +"This object counts all statistic streams."                       +"This object counts all statistic packets."                       *"This object counts all statistic octets."                       1"This object counts current active MPLS streams."                       0"This object counts all statistic MPLS streams."                       0"This object counts all statistic MPLS packets."                       :"This object counts all statistic octets of MPLS packets."                       p"Reset all streams.  The default value is disabled,
             and set this value to enabled when resetting."                       *"The system up time when stream is reset."                              