�-- =============================================================================
-- Copyright (c) 2004-2010 Hangzhou H3C Technologies. All rights reserved.
--
-- Description:
--   The file defines a MIB to provide wireless switch object and CAPWAP
--   tunnel information.
-- Reference:
-- Version: V1.9
-- History:
--   V1.0 created by shiyang (Richard)
--     Initial version 2006-05-10
--   V1.1 2007-04-27 modified by shiyang(Richard)
--        Add apCfgChange(6) for h3cDot11ACMtTrapTunlDwnInfo.
--        Delete h3cDot11ACPhysicalIndex,h3cDot11ACGlobalCountryCode,
--        h3cDot11ACCtrlTunnelSecSupport and h3cDot11ACDataTunnelSecSupport
--        nodes.
--   V1.2 2007-06-19 modified by Vikas K.
--        Add h3cDot11WLANAssocStatisInfo for h3cDot11ACObjectGroup.
--        Add h3cDot11MaxAPNumPermitted and h3cDot11MaxStationNumPermitted
--        nodes.
--   V1.3 2007-12-21 modified by wanghao (Kumar)
--        Add h3cDot11StationExDeAuthenSum and h3cDot11StationCurAssocSum
--        for h3cDot11WLANAssocStatisInfo.
--   V1.4 2008-07-09 modified by ChangHuifeng
--        Add h3cDot11ACMtBackupSwtTrap and h3cDot11ACMtTrapBackupSwitchInfo
--        for h3cDot11ACMtNotifyGroup.
--        Change description of h3cDot11ACMtTunnelSetupTrap.
--   V1.5 2008-12-03 modified by Wang Lu
--        Add new variable bindings h3cDot11ACMtTrapTnlAPName and
--        h3cDot11ACMtTrapTnlAPIPAddr to h3cDot11ACMtTunnelSetupTrap and
--        h3cDot11ACMtTunnelDownTrap.
--   V1.6 2009-05-07 modified by Wang Shaojie
--        Add new trap h3cDot11ACLoadBalanceTrap.
--        Add new variable bindings h3cDot11LoadBalanceType,
--        h3cDot11LoadBalanceThreshold for h3cDot11ACLoadBalanceTrap.
--        Add h3cDot11ACIFLoadInfoTable to h3cDot11ACIFLoadInfoTable.
--   V1.7 2009-07-29 modified by Heziqi
--        Add new variable bindings h3cDot11ACMtTrapAPIPv6Addr
--        to h3cDot11ACMtTunnelSetupTrap and h3cDot11ACMtTunnelDownTrap.
--        Add h3cDot11MasterAPCount, h3cDot11SlaveAPCount,
--        h3cDot11ConnectAutoAPCount and h3cDot11PersistentAPCount to
--        h3cDot11ACLoadInfo.
--   V1.8 2009-08-07 modified by Wang Shaojie, Qi Kai
--        Add new variable bindings h3cDot11ACMtTrapTunlDwnCount
--        to h3cDot11ACMtTrapVarObjects
--        Add h3cDot11ACIfStaNum, h3cDot11ACIfName to h3cDot11ACIFLoadInfoTable
--   V1.9 2009-12-01 modified by Wang Shaojie
--        Add h3cDot11ACStaFullTrap to h3cDot11ACMtTraps and variable bindings
--        h3cDot11ACMaxStaNum for h3cDot11ACStaFullTrap.
--        Add h3cDot11CtrlTunnelUpTimeTicks to h3cDot11CAPWAPTunnelTable
--        Add h3cDot11AcDownloadFrameCnt, h3cDot11AcUploadFrameCnt,
--        h3cDot11AcDownloadFrameBytes, h3cDot11AcUploadFrameBytes to
--        h3cDot11ACLoadInfo.
--        2010-06-10 added h3cDot11ACBASIfTable by jinyi
--        2010-08-04 modified by yin junjie
--        Add new table h3cDot11ACStaUserSecAuthStatis
--        Add h3cDot11ACStaUserAuthCurNumber, h3cDot11ACStaUserConnFailCnt,
--        h3cDot11ACStaUserAuthReqCnt, h3cDot11ACStaUserAuthSuccCnt,
--        h3cDot11ACStaUserAuthFailCnt to h3cDot11ACStaUserSecAuthStatis.
-- =============================================================================
                �"This MIB defines information as per wireless AC and tunnel between
        AP and AC.
        If NMS intends to get more detailed information for the AP and AC,
        it could refer entPhysicalIndex in the Entity MIB to get entity
        information.

        GLOSSARY

        IEEE 802.11
        Standard to encourage interoperability among
        wireless networking equipment.

        Access point (AP)
        Transmitter/receiver (transceiver) device
        that commonly connects and transports data
        between a wireless network and a wired network.

        Access control (AC)
        To control and manage multi-APs, it will bridge
        wireless and wired network.

        Radio
        The chip set to receive and send wireless signal.

        Fat AP
        Applied in the home, SOHO and so on, and it could
        independently work without help from AC.

        Fit AP
        Applied in the enterprise environment, it will work
        under the control and management from AC.

        Control And Provisioning of Wireless Access Points Protocol
        The short name of protocol is CAPWAP. AC will control
        and manage AP by CAPWAP tunnel protocol defined by IETF.
        Also, a data tunnel will be set up between AC and AP.

        Basic Service Set
        The IEEE 802.11 BSS of an AP comprises of the
        stations directly associating with the AP. It will
        be identified by BSSID." �"Platform Team H3C Technologies Co., Ltd.
         Hai-Dian District Beijing P.R. China
         http://www.h3c.com
         Zip: 100085" "201008041800Z" "200908071800Z" "200907291800Z" "200905072000Z" "200807091800Z" "200712211800Z" "200706191800Z" "200704272000Z" "200605101900Z" "Add new nodes." "Modified to add new nodes." "Modified to add new nodes." "Modified to add new nodes." "Modified to add new nodes." "Modified to add new nodes." *"Modified to add new table and new nodes." "Modified to fix some issue." *"The initial revision of this MIB module."       -- Aug 04, 2009 at 18:00 GMT
               V"Represents which MAC mode defined in the CAPWAP draft is in use
        for the AC."                       O"Represents the maximum number of AP connection permitted
        for one AC."                       T"Represents the maximum number of station connection
        permitted for one AC."                           @"Represents the total number of APs which are connecting to AC."                       c"Represents the total number of stations which are accessing the
        WLAN service through AC."                       0"Represents AP number information of interface."                       ="Each entry represents AP number information of an interface"                       #"Represents index of AC interface."                       5"Represents AP number connected to the AC interface."                       :"Represents Station number connected to the AC interface."                       ?"Represents InterfaceName AP number connected to AC interface."                       ^"Represents the total number of AP which have established the
        master tunnel with AC."                       ]"Represents the total number of AP which have established the
        slave tunnel with AC."                       D"Represents the total number of auto AP which are connecting to AC."                       /"Represents the total number of persistent AP."                       K"Represents the number of frames that AP sends to AC through LWAPP tunnel."                       K"Represents the number of frames that AC sends to AP through LWAPP tunnel."                       J"Represents the bytes of frames that AP sends to AC through LWAPP tunnel."                       J"Represents the bytes of frames that AC sends to AP through LWAPP tunnel."                           5"Represents the total number of station association."                       ="Represents the total number of station association failure."                       7"Represents the total number of station reassociation."                       d"Represents the total number of station association rejected on
        account of resource limit."                       z"Represents the total number of exceptional station deauthentication
        (Without sending a deauthentication to AP)."                       ="Represents the total number of current associated stations."                                   /"Represents the BAS information of interfaces."                       ;"Each entry represents the BAS information of an interface"                       $"The ifIndex of the BAS interface. "                       C"A textual string containing information about the BAS interface. "                       !"The type of the BAS interface. "                           C"Represents the current number of user authenticated with this AC."                       @"Represents the total number of user disconnected with this AC."                       H"Represents the total number of user authenticate request with this AC."                       K"Represents the total number of user authenticated successed with this AC."                       H"Represents the total number of user authenticated failed with this AC."                           h"The table will list all the APs which are connecting to the AC
        by the CAPWAP tunnel protocol."                       m"Each entry contains information of data tunnel and control
        tunnel of AP which is connecting to AC."                       m"To uniquely identify the CAPWAP tunnel set up between the AP
        identified by APID and a specific AC."                       H"Represents what security scheme is in use for
        control tunnel."                       f"Represents how long for control tunnel up. If the value is zero,
        then tunnel is not set up."                       E"Represents what security scheme is in use for
        data tunnel."                       c"Represents how long for data tunnel up.
        If the value is zero, then tunnel is not set up."                       f"Represents how long control tunnel is up.
         If the value is zero, then tunnel is not set up."                               �"This notification is sent by AC when CAPWAP tunnel becomes up.
        By this way, NMS will immediately know tunnel up event.
        It is unnecessary to identify whether it is control or data
        tunnel."                 �"This notification is sent by AC when CAPWAP tunnel becomes down.
        By this way, NMS will immediately know tunnel down event.
        It is unnecessary to identify whether it is control or data
        tunnel."                 a"This trap is sent by AC when AC switches from master to slave
        or from slave to master."                 ="This trap is sent by AC when load-balance is enabled on AC."                 8"This notification will be sent when STA is full on AC."                    +"Represents the reason for tunnel down.
        The following values are supported:
        tunnelTimeout(1),     - When AC detects the tunnel is broken,
        - it will notify NMS.
        keyUpdateFailure(2),  - rekey process is failed, tunnel will
        - be broken.
        apReset(3),           - Administrator reset AP.
        apCrash(4),           - AP reboot for system crash.
        apDeleted(5)          - Delete AP from AC and trigger
        - tunnel down.
        apCfgChange(6)        - The configuration for AP was changed."                       �"Represents the reason for tunnel up.
        The following values are supported:
        up(1)  - The AP joined AC.
        "                       �"Represents status which the AC switches to.
        The following values are supported:
        masterToSlave  - The AC switches from master to slave.
        slaveToMaster  - The AC switches from slave to master.
        "                       K"Represents name of the AP which sets up the tunnel with the AC.
        "                       Q"Represents IP address of the AP which sets up the tunnel with the AC.
        "                      C"Represents which kind load balance is enabled by AC.
         The following values are supported:
         traffic mode load-balancing: traffic snapshot is considered.
         session mode load-balancing: the number of users associated
                                      with the AP/radio is considered.
        "                       ;"Represents the value of load balance threshold.
        "                       R"Represents IPv6 address of the AP which sets up the tunnel with
        the AC."                       F"Reprsents how many times that the tunnel between AC and AP has down."                       )"Represents the max number of STA on AC."                      