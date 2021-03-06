�-- =========================================================================
-- Copyright (C) 2001,2002 by  HUAWEI TECHNOLOGIES. All rights reserved.
--
-- Description:This file describes the huawei mib implementation of mid and low-end router system,
--             include:memory,configuration,flash,loghost and so on.
-- Reference:Huawei-3com enterprise MIB
-- Version: V1.1
-- History:
-- 	V1.0 6th Mar 2004
--    Initial version
--  V1.1 2004-12-16 Changed by zhoujianjun
--    Change SYNTAX of vLANMibRouterMaxPktProcessCount from Counter to Unsigned32.
-- =========================================================================
         !"Router packet statistics table."                       $"Entry of vLANMibRoutertCountTable."                       9"Interface Index(es) of trunk port(s) present on router."                       "Number of packets discarded."                        "Number of packets transmitted."                       " "                       ""Per vid router statistics table."                       ("Entry of vLANMibRoutertVlanCountTable."                       	"Vlan id"                       ("Number of packets transmitted to vlan."                       !"Number of packets sent by vlan."                       " "                       3"Per vid max router packet processing count table."                       #"Entry of vLANMibRouterMaxPkTable."                       
"Vlan id."                       m"Max packet processing count. If set to zero then router will process, default number of packets per second."                       "Sub interface table."                       "Entry of vLANMibSubIfTable."                       3"Interface Index(es) of port(s) present on router."                       "Encapsulation type."                       	"Vlan id"                                  