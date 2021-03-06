}-- =========================================================================
-- Copyright (C) 2008 by H3C Technologies. All rights reserved.
--
-- Description:This file describes various common MIB objects implemented by both
--             Routers and Switches for use.
-- Reference:
-- Version: V2.2
-- History:
-- V1.0 26th Nov 2003
--      Separated from a3Comm8040.mib
-- V1.1 9th Dec 2003
--      a3comoemrouter.mib added
-- V1.2 23rd Jan 2004
--      merged in common node defns from a3Comoemrouter.mib
-- V1.3 24th Feb 2004
--      module imported from A3COM-HUAWEI-OID-MIB which is the root MIB MODULE for huawei-3com.
--      delete MODULE-IDENTITY import declaration
-- V1.4 16th Aug 2004
--      Add a trap node 'hwRebootSendTrap' into hwSystemNotification
-- V2.0 2004-10-12 updated by gaolong
--      Import from SNMPv2-SMI and SNMPv2-TC instead from RFC1212 and RFC1155-SMI
--      Change ACCESS clauses to MAX-ACCESS
--      Change STATUS clauses from mandatory to current
-- V2.1 2008-11-11 add node hwSysBootType by lifengguang
-- V2.2 2009-05-05 add hwSysStatisticPeriod, hwSysSamplePeriod,
--      hwSysTrapResendPeriod, hwSysTrapCollectionPeriod, hwSysColdStartTrap,
--      hwSysWarmStartTrap, hwSysSnmpPort, hwSysSnmpTrapPort, hwSysNetID,
--      hwSysLastSampleTime by jinyi
-- =========================================================================
                                         "Write config to router."                       �"Decide whether start ftp-server.enable(1) indicates to start ftp-server;
            disable(2) indicates to stop ftp-server."                       "Reboot router."                           ""send a trap about write success."                 ""send a trap about write failure."                 �"When users restart the device with command
            'reboot', this trap will be sent two seconds
             before the device reboots."                 "A system cold start trap."                 "A system warm start trap."                 "Software version."                       |"The boot type of the system whether the last device reboot was by
            CLI (warm start) or power off (cold start)."                           W"The statistic period. The device collects statistics
             within the period."                       e"The sampling period. The device takes samples periodically
             for statistics collection."                       ^"The trap resending period. If the value is zero, the trap
             will not be re-sent."                       _"The trap collecting period. If the value is zero, the trap
             will not be re-sent."                       H"UDP port for SNMP protocol entity to receive messages except Trap-PDU."                       ,"UDP port for Trap-PDU to receive messages."                       "The system Net ID."                       +"The last sample local time of the system."                              