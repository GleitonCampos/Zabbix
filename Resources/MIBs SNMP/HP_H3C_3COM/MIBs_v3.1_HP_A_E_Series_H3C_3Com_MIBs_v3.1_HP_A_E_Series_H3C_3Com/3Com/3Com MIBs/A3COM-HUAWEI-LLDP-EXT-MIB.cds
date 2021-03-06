�-- ============================================================================
-- Copyright (C) 2009 by H3C Technologies. All rights reserved.
--
-- Description: There are three standard MIB definitions, "LLDP-MIB", "LLDP-EXT-
--     DOT1-MIB", "LLDP-EXT-DOT3-MIB", define almost all MIB objects of LLDP.
--     This document defines more MIB objects privately For LLDP implementation.
--      1)LLDP default global status is disabled, a management object needed to
--        enable it.
--      2)LLDP needs to be compliable with CDP (Non standard IEEE link layer di-
--        scovery protocol). A management object needed to enable or disable co-
--        mpliance.
--      3)For compliance with CDP, port based control management object is need-
--        ed.
--
-- Reference:
-- Version: V1.0
-- History:
-- V1.0 created by qizhenglin 2009-03-20
-- ============================================================================
                         &"LLDP extended management infomation." �"Platform Team H3C Technologies Co.,Ltd.
        Hai-Dian District Beijing P.R. China
        http://www.h3c.com
        Zip:100085
        " "200903210000Z" ""                       E"The global administratively desired status of the local LLDP agent."                       ?"The global administratively desired status of CDP Compliance."                       8"The port-based table that controls extended functions."                       �"LLDP extended configuration information for a particular port. This co-
        nfiguration parameter controls compliance with other non-standard link 
        layer discovery protocol such as CDP."                       ]"The index value used to identify the port component associated with th-
         is entry."                      �"The administratively desired CDP Compliance status of the local LLDP a-
        gent. If the associated h3clldpPortConfigCDPComplianceStatus object has 
        a value of 'txAndRx', then the LLDP agent will receive CDP frames on th-
        is port, and will transmit CDP frames only after receive a CDP frames. 
        If the associated lldpPortConfigAdminStatus object has a value of 'disa-
        bled', LLDP agent will not transmit or receive CDP frames on this port."                              