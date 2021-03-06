�-- ===========================================================
-- Copyright (c) 2004-2009 Hangzhou H3C Tech. Co., Ltd. All rights reserved.
--
-- Description:
-- Reference:
-- Version: V2.4
-- History:
-- V1.0 created by liyue.
--     Define MODULE-IDENTITY for h3cEpon
-- V1.1 2005-12-21 Adjusted the structure of some tables and the value of
--        some objects by liuhongxu
--        Redefined the scope of some objects
-- V1.2 2006-01-09 Updated file by liuhongxu and zoudian.
--        Added h3cEponOnuTypeManTable, h3cOltPortAlarmRegExcessEnabled,
--        h3cOnuBindType, h3cOnuPCBVersion, h3cOnuRtt, h3cOnuEEPROMVersion,
--        h3cOnuRegType, h3cOnuHostType, h3cEponOnuRegExcessTrap,
--        h3cEponOnuRegExcessRecoverTrap, h3cOnuSlaBandWidthStepVal.
--        Changed the description of h3cOnuSlaMaxBandWidth and h3cOnuSlaMinBandWidth.
--        Adjusted the format.
-- V1.3 2006-01-16 Updated file by lichunyan.
--        Added h3cOnuPacketManTable, h3cOnuProtocolTable, h3cOnuMulticastFilterStatus,
--        h3cOnuDot1xTable.
--        Changed the default value of h3cOnuSlaMaxBandWidth.
--        Adjusted the format of this mib.
-- V1.4 2006-06-08 Updated by chenzhaojie
--        Delete default values of h3cOnuSlaMinBandWidth and h3cOnuSlaMaxBandWidth
-- V1.5 2006-08-02 Updated by chenzhaojie
--        Add h3cOnuSlaDelay, h3cOnuDistance, h3cOnuPriorityQueueTable,
--        h3cOnuCountTable, h3cOnuPriorityQueueSizeMinVal, h3cOnuPriorityQueueSizeMaxVal,
--        h3cEponOnuPowerOffTrap, h3cEponOltSwitchoverTrap, h3cEponStatTable.
--        Change DESCRIPTION of h3cOnuSlaMinBandWidthMinVal, h3cOnuSlaMinBandWidthMaxVal.
-- V1.6 2006-09-06 Updated by chenzhaojie
--        Add h3cOnuPriorityQueueBandwidthMinVal, h3cOnuPriorityQueueBandwidthMaxVal,
--        h3cOnuPriorityQueueBurstsizeMinVal, h3cOnuPriorityQueueBurstsizeMaxVal.
--        Add h3cOnuQueueBandwidthTable.
-- V1.7 2007-05-21 Updated by chenzhaojie
--        Add h3cEponSysScalarGroup
--        Add h3cEponSysManTable ,h3cEponAutoUpdateTable,h3cEponOuiTable.
--        Add h3cEponOuiIndexNextTable, h3cEponMulticastControlTable.
--        Add h3cOltPortAlarmDFEEnabled to h3cOltPortAlarmThresholdTable.
--        Add h3cOnuDbaReportQueueSetNumber, h3cOnuRemoteFecStatus,h3cOnuPortBerStatus
--        h3cOnuReset, h3cOnuMulticastControlMode,h3cOnuAccessVlan,h3cOnuEncryptKey
--        to h3cOnuSysManTable
--        Add h3cOnuLlid to h3cOnuInfoTable.
--        Add h3cOnuIpAddressTable, h3cOnuChipSetInfoTable, h3cOnuCapabilityTable,
--        h3cOnuDbaReportTable.
--        Add h3cEponOltDFETrap, h3cEponOltDFERecoverTrap
-- V1.8 2007-10-13 Updated by liuhongxu, andapeng, lihaijun
--        Add h3cOltMaxRtt to h3cOltSysManTable.
--        Add h3cOnuUniUpDownTrapStatus, h3cOnuDhcpsnooping, h3cOnuPppoe,
--        h3cOnuIgmpSnoopingHostAgingT, h3cOnuIgmpSnoopingMaxRespT,
--        h3cOnuIgmpSnoopingRouterAgingT, h3cOnuIgmpSnoopingAggReportS,
--        h3cOnuIgmpSnoopingAggLeaveS, h3cOnuDhcpallocate, h3cOnuManageVID,
--        h3cOnuManageVlanIntfS.
--        Add h3cOnuCosToLocalPrecedenceTable.
--        Add h3cOnuFecStatus to h3cOnuSysManTable.
--        Add h3cOnuIpAddressGateway to h3cOnuIpAddressTable.
--        Changed the default value of h3cEponMonitorCycle.
-- V1.9 2008-1-15 Updated by fengjian, qinlei, lihaijun
--        Add h3cOnuSilentTable.
--        Add h3cOltUsingOnuTable.
--        Add h3cOnuFirmwareUpdateByTypeTable.
--        Add h3cOnuUpdateByTypeNextIndex
--        Add h3cOnuUpdateFileName to h3cOnuFirmwareUpdateTable.
--        Add h3cOnuUpdateResult values.
--        Add h3cOnuSlaFixedBandWidth and h3cOnuSlaPriorityClass to h3cOnuSlaManTable.
--        Add h3cEponOnuRegSilentMac.
--        Add h3cEponOnuSilenceTrap, h3cEponOnuSilenceRecoverTrap.
--        Add h3cEponOnuUpdateResultTrap to report onu update result.
-- V2.0 2008-3-17 Updated by zoudian
--        Add h3cOnuMcastCtrlHostAgingTime, h3cOnuMulticastFastLeaveEnable
--        and h3cOnuPortIsolateEnable to h3cOnuSysManTable.
--        Add h3cOnuIgspFastLeaveSupported and h3cOnuMCtrlFastLeaveSupported
--        to h3cOnuCapabilityTable.
--        Add h3cOnuSlaFixedPacketSize to h3cOnuSlaManTable.
-- V2.1 2008-07-25 updated by zhaodan and zoudian.
--        Add h3cEponOnuAutoBindTrap and h3cEponOperationResult.
--        Add h3cOnuFirmwareVersion and h3cOnuVendorId to h3cOnuInfoTable.
--        Change the description of h3cOnuDistance.
-- V2.2 2009-08-18 updated by zhaodan.
--        Add h3cEponOnuStpPortTable.
--        Add h3cEponOnuPortStpStateTrap to h3cEponTrapPrefix.
-- V2.3 2010-02-25 updated by zhaodan.
--        Add h3cEponOnuLaserState and h3cEponOnuLaserFailedTrap.
--        Add h3cOnuOpticalPowerReceivedByOlt to h3cOnuInfoTable.
--        Add h3cOltOpticalPowerTx and h3cOltOpticalPowerRx to h3cOltInfoTable.
--        Add h3cOnuPhysicalTable and h3cOnuSmlkTable.
--        Add h3cOnuSmlkSwitchoverTrap to h3cEponTrapPrefix.
-- V2.4 2010-12-02 updated by zhaodan.
--        Add h3cOnuRS485PropertiesTable, h3cOnuRS485SessionSummaryTable,
--            h3cOnuRS485SessionTable and h3cOnuRS485SessionErrInfoTable.
-- =================================================================
                                                                                                M"
        The objects in this MIB module are used to manage and
        display current configuration of Ethernet Passive Optical
        Network (EPON) port which are based on the Ethernet in
        the First Mile (EFM) Passive Optical Network(PON) as
        defined in IEEE Draft P802.3ah/D3.0 clause 60, 64, 65..
        " �"Platform Team H3C Technologies Co., Ltd.
         Hai-Dian District Beijing P.R. China
         http://www.h3c.com
         Zip: 100085"                  �"
        This value determines whether software performs
        self-authorization for each Optical Network Unit(ONU)
        registering to the network.  Setting it to false
        means for every ONU registering, software requires
        external authorization, and until it's done the
        ONU is not authenticated.  True value means software
        authorizes each ONU registering to the network
        automatically.
        true  - ONUs are always authorized.
        false - If 802.1x authorization is enable,
        the ONUs have to be authorized by
        the protocol.
        - If 802.1x authorization is disable,
        ONUs are always authorized.
        "                       �"
        The cycle of alarm thresholds checking.
        Applying to the following types:
        Bit Error Rate(BER) alarm, Frame Error Rate(FER),
        Logical Link Identity(LLID) mismatch alarm and so on.
        The unit is second.
        "                       �"
        Timeout waiting for a response from Optical Line Terminal(OLT)
        firmware after sending it a message.
        The unit is millisecond.
        "                       z"
        The times of messages sending timeouts, after
        which OLT will reset (applying to every OLT).
        "                       i"
        true(1)  - At least an EPON board exists.
        false(2) - No EPON board exists.
        "                       �"
        Stop or continue monitoring.
        true(1)  - Continue monitoring.
        false(2) - Stop monitoring.
        "                       �"
        Software error alarm behavior of all active OLTs.
        true(1)  - alarm enable.
        false(2) - alarm disable.
        "                       �"
        LoopBack alarm behavior of EPON ports.
        true(1)  - alarm enable.
        false(2) - alarm disable.
        "                       e"
        The lower limit of cycle which be confined to the
        h3cEponMonitorCycle.
        "                       e"
        The upper limit of cycle which be confined to the
        h3cEponMonitorCycle.
        "                       e"
        The lower limit of timeout which be confined to the
        h3cEponMsgTimeOut.
        "                       e"
        The upper limit of timeout which be confined to the
        h3cEponMsgTimeOut.
        "                       b"
        The lower limit of time which be confined to the
        h3cEponMsgLoseNum.
        "                       b"
        The upper limit of time which be confined to the
        h3cEponMsgLoseNum.
        "                           C"
        This table defines system related parameters.
        "                       @"
        The entry of the table h3cEponSysManTable.
        "                       B"
        Slot Index, the index of h3cEponSysManTable.
        "                       P"
        cmode - epon standard mode.
        hmode - private mode.
        "                      K"
        Automatic mode setting: when enabled - after
        new OLT is added, the OLT stack sets its encryption mode
        to 'triple churning' and configure the OLT to authorize
        ONU MAC addresses according to its table.
        enable  -enable automatic mode.
        disable -disable automatic mode.
        "                       �"
        Time out parameter for extended OAM discovery
        process message, ranging from 0 to 2550,
        measured in 100 milliseconds.
        "                       z"
        Encryption response timeout,
        ranging from 1 to 2550,
        measured in 100 milliseconds.
        "                       �"
        Encryption key update timer for all ONUs on slot,
        indicated by h3cEponSlotIndex,
        ranging from 1 to 255, measured in seconds.
        "                       �"
        enable  - auto bind ONU ID when the ONU registered in the EPON system.
        disable - need manual bind ONU ID when the ONU registered in the EPON system.
        "                       E"
        EPON auto update ONU application configuration.
        "                       D"
        The entry of the table h3cEponAutoUpdateTable.
        "                       �"
        The name of ONU application file,  the file name must be valid
        and include the path. It is a zero length string by default.
        "                      "
        The status of schedule update configuration.
        The h3cEponAutoUpdateFileName must be set before enable
        h3cEponAutoUpdateSchedStatus.
        enable - enable ONU schedule update.
        disable - disable ONU schedule update.
        "                      f"
        The schedule update timing configuration is related to
        the h3cEponAutoUpdateSchedType.
        auto update daily: the string format is hhmm
        auto update weekly: the string format is hhmmw
        'w' means update weekly, it ranges from 0 to 6:
        0 - Sunday.
        1 - Monday.
        2 - Tuesday.
        3 - Wednesday.
        4 - Thursday.
        5 - Friday.
        6 - Saturday.
        auto update in coming date : the string format is hhmmyyyymmdd.
        The configuration will take effect only if h3cEponAutoUpdateSchedStatus
        is enabled.
        "                       �"
        The update type of auto updating configuration.
        daily - update ONU application every day.
        weekly - update ONU application every week.
        comingdate - update ONU application on coming date.
        "                      "
        The status of real time update configuration.
        The h3cEponAutoUpdateFileName must be set before enable
        h3cEponAutoUpdateRealTimeStatus.
        enable - enable ONU real time update.
        disable - disable ONU real time update.
        "                       +"
        Next OUI index table.
        "                       F"
        The entry of the table h3cEponOuiIndexNextTable.
        "                       �"
        This object contains an appropriate value to be used for
        h3cEponOuiIndex when creating rows in the
        h3cEponOuiTable.
        "                       ;"
        List of OUI and OAM supported by OLT.
        "                       ="
        The entry of the table h3cEponOuiTable.
        "                       ."
        The index of this table.
        "                       �"
        OUI list supported by the extended OAM discovery process.
        The OUI is composed of six octets. The first six octets denote the first OUI ,
        the second six octets denote the second OUI, and the like.
        "                       Y"
        Version of OAM protocol defined by the organization denoted by OUI.
        "                       v"
        The status of this table entry. Only active,
        createAndGo and the destory are supported.
        "                       ="
        Multicast control global configuration.
        "                       J"
        The entry of the table h3cEponMulticastControlTable.
        "                       ."
        The index of this table.
        "                       �"
        The multicast address, each four octets represents a multicast address,
        the address section ranging from the first four octets to the second
        four octets, and the like.
        "                       v"
        The status of this table entry. Only active,
        createAndGo and the destory are supported.
        "                           �"
        The name of a binary file which is loaded to
        the OLT from an external source.  Note that the filename
        must contain the file path.
        "                       �"
        The filename of the ONU firmware to be updated.
        Note that the filename must contain the file path.
        "                           �"
        This table defines several OLT system parameters:
        (1)laser on time
        (2)laser off time
        (3)whether multiple copy broadcast
        (4)whether discard packet
        (5)self test
        (6)self test result
        "                       ?"
        The entry of the table h3cOltSysManTable.
        "                       w"
        The laser on time of the ONUs during the
        discovery process, measured in Time Quanta(TQ).
        "                       k"
        The laser off time of the ONUs during the
        discovery process, measured in TQ.
        "                      a"
        true/false filtering of tagged  multicast frames.
        The software avert tagged downstream frames with
        multicast or broadcast DA to the PON and not to the
        CPU, except for special multicast frames
        (link-constraint, IGMP control and ARP) that are
        passed to the CPU regardless of this feature.
        "                       �"
        Forward(false)/discard(true) any frames received from
        unlearned source address when the inside address
        table of the original ONU entry reach to the limit.
        "                       E"
        selftest(1): Test OLT to check whether it's OK.
        "                       �"
        The self test result of the specific OLT.
        other(1): The self test result is another reason.
        ok(2):    The self test result is OK.
        fail(3):  The self test result is fail.
        "                       >"
        Set the max Round Trip Time of this OLT.
        "                      "
        Primary status of the specified OLT.
        There will be one row in this table for each
        information in the system.
        (1)Software and hardware versions of the specified OLT
        (h3cOltFirmMajorVersion, h3cOltFirmMinorVersion,
        h3cOltHardMajorVersion, h3cOltHardMinorVersion)
        (2)Several physical capabilities of an OLT device.
        (h3cOltAgcLockTime, h3cOltAgcCdrTime)
        (3)The operation(activation) status of an OLT.
        (h3cOltMacAddress, h3cOltWorkMode)
        "                       ="
        The entry of the table h3cOltInfoTable.
        "                       z"
        OLT firmware major version.  If the object length is
        zero, it means the version is unknown.
        "                       z"
        OLT firmware minor version.  If the object length is
        zero, it means the version is unknown.
        "                       z"
        OLT hardware major version.  If the object length is
        zero, it means the version is unknown.
        "                       z"
        OLT hardware minor version.  If the object length is
        zero, it means the version is unknown.
        "                       �"
        PON upstream data Automatic Gain Control(AGC) lock time,
        measured in TQ,
        range: 1 - 2^15.
        0x7FFFFFFF: unknown value.
        "                       �"
        PON RX signal synchronization time,
        measured in TQ,
        range: 1 - 2^15.
        0x7FFFFFFF: unknown value
        "                       &"
        OLT MAC address.
        "                       �"
        The operation(activation) modes of an OLT.
        other(1)  - The OLT is in another mode.
        open(2)   - The OLT is open.
        reset(3)  - The OLT is reset.
        closed(4) - The OLT is closed.
        "                       g"
        The optical power transmitted by this OLT.
        It measured in 0.01 dBm unit.
        "                       j"
        The burst optical power received by this OLT.
        It measured in 0.01 dBm unit.
        "                       �"
        This table defines the primary parameters of the
        Dynamic Bandwidth Allocation(DBA) algorithm applying to the OLT.
        "                       ?"
        The entry of the table h3cOltDbaManTable.
        "                      �"
        Enable different types of the DBA algorithm.
        Start upstream dynamic bandwidth allocation algorithm,
        replacing former bandwidth allocation mechanism.
        internal(1) - OLT internal Service Level Agreement(SLA) based
        algorithm, always being activated.
        external(2) - DBA algorithm in a binary file which is loaded to
        the OLT from an external source.
        "                       3"
        Discovery length in TQ units.
        "                       t"
        How often should the OLT send discovery frames to
        the ONUs, measured in grant cycles.
        "                       9"
        The grant cycle length in TQ units.
        "                       -"
        DBA version of the OLT.
        "                       �"
        Update(1): Update the DBA algorithm with a binary
        file which is loaded to the OLT from an external source(flash).
        Config the MIB object module h3cEponDbaUpdateFileName.
        "                      U"
        The latest DBA update result.
        other: The DBA update result is another reason.
        ok:    The DBA update result is OK.
        fail:  The DBA update result is fail.
        fileNotExist: The DBA update failed because the file
        does not exist.
        notSetFilename: The DBA filename is not set.
        "                       C"
        The table defines the alarm threshold of OLT.
        "                       K"
        The entry of the table h3cOltPortAlarmThresholdTable.
        "                       q"
        Behavior of BER alarm.
        true(1)  - alarm enable.
        false(2) - alarm disable.
        "                       A"
        Traffic direction to monitor for BER alarm.
        "                       E"
        BER threshold exceed which the alarm is raised.
        "                       q"
        Behavior of FER alarm.
        true(1)  - alarm enable.
        false(2) - alarm disable.
        "                       A"
        Traffic direction to monitor for FER alarm.
        "                       Q"
        Frame error rate exceed threshold then the alarm is raised.
        "                       {"
        Behavior of LLID mismatch alarm.
        true(1)  - alarm enable.
        false(2) - alarm disable.
        "                       {"
        The minimal number of mismatched frames exceed threshold then
        LLID mismatch alarm is raised.
        "                       {"
        Behavior of remote stable alarm.
        true(1)  - alarm enable.
        false(2) - alarm disable.
        "                       z"
        Behavior of local stable alarm.
        true(1)  - alarm enable.
        false(2) - alarm disable.
        "                       z"
        Behavior of registration alarm.
        true(1)  - alarm enable.
        false(2) - alarm disable.
        "                       �"
        Behavior of Operations Administration and Maintenance(OAM)
        disconnection alarm.
        true(1)  - alarm enable.
        false(2) - alarm disable.
        "                       �"
        Behavior of encryption bad key alarm.
        true(1)  - alarm enable.
        false(2) - alarm disable.
        "                       }"
        Behavior of vendor specific alarm.
        true(1)  - alarm enable.
        false(2) - alarm disable.
        "                       �"
        Behavior of ONU registering over limitation alarm.
        true(1)  - alarm enable.
        false(2) - alarm disable.
        "                       z"
        Behavior of device fatal error alarm.
        true  - alarm enable.
        false - alarm disable.
        "                       ^"
        The lower limit of time which is confined to
        h3cOltLaserOnTime.
        "                       ^"
        The upper limit of time which is confined to
        h3cOltLaserOnTime.
        "                       _"
        The lower limit of time which is confined to
        h3cOltLaserOffTime.
        "                       _"
        The upper limit of time which is confined to
        h3cOltLaserOffTime.
        "                       u"
        The lower limit of the discovery length which is confined to
        h3cOltDbaDiscoveryLength.
        "                       u"
        The upper limit of the discovery length which is confined to
        h3cOltDbaDiscoveryLength.
        "                       w"
        The lower limit of the discovery length which is confined to
        h3cOltDbaDiscovryFrequency.
        "                       w"
        The upper limit of the discovery length which is confined to
        h3cOltDbaDiscovryFrequency.
        "                       g"
        The lower limit of the frames which is confined to
        h3cOltDbaCycleLength.
        "                       g"
        The upper limit of the frames which is confined to
        h3cOltDbaCycleLength.
        "                       w"
        The lower limit of the frames which is confined to
        h3cOltPortAlarmLlidMismatchThreshold.
        "                       w"
        The upper limit of the frames which is confined to
        h3cOltPortAlarmLlidMismatchThreshold.
        "                       m"
        The lower limit of threshold which is confined to
        h3cOltPortAlarmBerThreshold.
        "                       m"
        The upper limit of threshold which is confined to
        h3cOltPortAlarmBerThreshold.
        "                       m"
        The lower limit of threshold which is confined to
        h3cOltPortAlarmFerThreshold.
        "                       m"
        The upper limit of threshold which is confined to
        h3cOltPortAlarmFerThreshold.
        "                       S"
        This table is used for getting silent ONU information of OLT.
        "                       ?"
        The entry of the table h3cOnuSilentTable.
        "                       <"
        The MAC address of silent ONUs in OLT.
        "                       5"
        The aging time of a silent ONU.
        "                       u"
        The table containing configurations to manage ONU interface(s)
        based on OLT interface.
        "                       A"
        The entry of the table h3cOltUsingOnuTable.
        "                       �"
        The ONU interface number. This value is used to specify the ONU interface
        which the user wants to configure for an OLT interface.
        "                       7"
        The ifIndex of the ONU interface.
        "                       �"
        This object is responsible for managing the creation,
        deletion and modification of rows, which supports active
        status and CreatAndGo, destroy operation.
        "                          s"
        This table implements the following functions for ONUs:
        1. Encrypting all downstream/upstream and
        downstream directions traffic destined to and
        originated from a specific LLID
        (ONU in current implementation).
        2. Restart a process of ONU authentication, using
        the OLT (IEEE 802.1x) authenticator.
        "                       ?"
        The entry of the table h3cOnuSysManTable.
        "                      V"
        Start encrypting all downstream/upstream and downstream
        directions traffic destined to and originated from a
        specific LLID (ONU in current implementation).  ONU
        registration encryption key is used as an initial value.
        If the encryption key was updated after ONU
        registration, the last updated key is used.
        off(1):        - Stop encrypting.
        downlink(2):   - Start encrypting all downstream
        directions traffic.
        updownlink(3): - Start encrypting all downstream/upstream
        directions traffic.
        "                      �"
        Restart a process of ONU authentication.
        If 802.1x authentication is enabled, the OLT
        (IEEE 802.1x) authenticator is applied.
        Otherwise, use the default authentication.
        Until the reauthentication succeeds, the ONU remains
        its previous authorization mode.
        The reauthentication process includes a new
        authentication request sent to the authentication server.
        "                       u"
        true(1)  - Multicast-Filter enable on ONU.
        false(2) - Multicast-Filter disable on ONU.
        "                       N"
        The number of queue sets reported in MPCP report frames.
        "                      "
        Value that indicates status of the 1000BASE-PX PHY
        optional FEC Sublayer for forward error correction
        see [802.3ah] clause 65.2.
        enable - enable remote forward error correction.
        disable - disable remote forward error correction.
        "                       ~"
        enable - enable ONU port bit error rate alarm.
        disable - disable ONU port bit error rate alarm.
        "                       !"
        Reboot ONU.
        "                       �"
        igmpsnooping - the traditional IGMP snooping mode.
        multicastcontrol - the specific multicast control mode.
        "                       N"
        The VLAN ID assigned to untagged frames received on ONU.
        "                       �"
        The encryption key, used to encrypt all downstream
        traffic destined to and/or upstream traffic originating
        from a specific ONU. It is a zero length, or MD5 hashed string,
        by default, the string is empty.
        "                       �"
        true - A notification will be sent when UNI link status is change.
        false - Device will not sent notification when UNI link status is
        change.
        "                      ;"
        Value that indicates status of the 1000BASE-PX PHY
        optional FEC Sublayer for forward error correction
        (include remote onu and local OLT)
        see [802.3ah] clause 65.2
        enable - enable forward error correction.
        disable - disable forward error correction.
        "                       �"
        The host aging time of multicast control mode on ONU,
        ranging from 200 to 1000, measured in seconds.
        "                       �"
        true(1)  - Enable multicast fast leave attribute on all ethernet UNIs of the ONU.
        false(2) - Disable multicast fast leave attribute on all ethernet UNIs of the ONU.
        "                       �"
        true(1)  - Enable port isolate setting on all ethernet UNIs of the ONU.
        false(2) - Disable port isolate setting on all ethernet UNIs of the ONU.
        "                      �"
        LLID link test applying to the ONU only including delay
        measurement option.  The command tests a link to a single
        LLID over a period of time or once, using a variable
        number of measurement frames.  The length of the measurement
        frames is also parameterized.  The test uses a loopback
        mode of the ONU to return each measurement frame,
        loopback activation is done using randomly patterned
        OAM Protocol Data Unit(PDU) frames.
        "                       7"
        The entry of h3cOnuLinkTestEntry.
        "                       9"
        Exact number of measurement frames.
        "                      +"
        Measurement frames data size, measured in bytes.
        Not including Preamble, SFD, VLAN tag, and FCS.
        Frame size minimum value is 56 - if VLAN tag is
        enabled('VLAN enable' field is set to ENABLE),
        and 60 - if VLAN tag is disabled.  The actual
        measurement frames sent to the PON are always
        minimum 60 bytes long.  When VLAN tag is enabled,
        the actual measurement frames size including
        FCS may reach (1514+4+4=)1522 bytes.
        60(60 is VLAN tag disabled) - 1514 .
        "                      "
        true:Link test includes delay measurement,
        which corresponds to the difference between sent
        and received times(including granting delay and
        firmware processing time overheads).
        false:Link test not includes a delay measurement.
        "                       {"
        true:Enable VLAN tag in link test frames.
        false:Link test not includes frames with VLAN tag.
        "                       )"
        VLAN priority: 0-7.
        "                       &"
        VLAN ID: 1-4094.
        "                       S"
        The total number of frames sent during the link test process.
        "                       Z"
        The total number of frames return back during the link test process.
        "                       i"
        The total number of error frames return back during the
        link test process.
        "                      ("
        The minimum delay time in TQ units, which corresponds
        to the difference between sent and received times
        (including granting delay and firmware processing time
        overheads).  It's invalid if the field
        'h3cOnuLinkTestDelay' is set to be true.
        "                      ("
        The average delay time in TQ units, which corresponds
        to the difference between sent and received times
        (including granting delay and firmware processing time
        overheads).  It's invalid if the field
        'h3cOnuLinkTestDelay' is set to be true.
        "                      ("
        The maximum delay time in TQ units, which corresponds
        to the difference between sent and received times
        (including granting delay and firmware processing time
        overheads).  It's invalid if the field
        'h3cOnuLinkTestDelay' is set to be true.
        "                       �"
        Set bandwidth policy parameters(restrictions)for a LLID
        (only for the ONU).  Default policies are set to disable.
        Policy parameters will be erased upon LLID network disconnection.
        "                       >"
        The entry of table h3cOnuBandWidthTable.
        "                       �"
        true:Enable static bandwidth configuration policing.
        false:Disable static bandwidth configuration policing.
        "                       \"
        Maximum bandwidth allowed for the ONU,
        measured in Kbits/Sec.
        "                       �"
        Maximal number of bytes in a burst.
        The value is truncated to the nearest
        smaller 128 bytes multiple value,
        measured in bytes.
        "                       z"
        true:Enable high priority frames preference.
        false:Disable high priority frames preference.
        "                       j"
        true:Enable short frames preference.
        false:Disable short frames preference.
        "                       �"
        true:Enable static bandwidth configuration policing.
        false:Disable static bandwidth configuration policing.
        "                       \"
        Maximum bandwidth allowed for the ONU,
        measured in Kbits/Sec.
        "                       �"
        Maximal number of bytes in a burst.
        The value is truncated to the nearest
        smaller 128 bytes multiple value,
        measured in bytes.
        "                       z"
        true:Enable high priority frames preference.
        false:Disable high priority frames preference.
        "                       j"
        true:Enable short frames preference.
        false:Disable short frames preference.
        "                       �"
        Two types of DBA algorithm are supported in the ONU.
        The internal SLA based algorithm is always activated.
        This table defines the primary parameter about the
        internal SLA algorithm.
        "                       ;"
        The entry of table h3cOnuSlaManTable.
        "                      "
        Maximum bandwidth - measured in Kbit/s.
        The value of this object should be the multiple of
        the value of h3cOnuSlaBandWidthStepVal.
        The minimum bandwidth should not be larger than the maximum
        bandwidth.
        "                       �"
        Minimum bandwidth - measured in Kbit/s.
        The value of this object should be the multiple of
        the value of h3cOnuSlaBandWidthStepVal.
        The maximum bandwidth should be larger than the minimum bandwidth.
        "                       �"
        Granularity of bandwidth - measured in Kbit/s.
        The value of h3cOnuSlaMaxBandWidth and h3cOnuSlaMinBandWidth should
        be the multiple of the value of this object.
        "                       �"
        low  - low delay.
        high - high delay.
        The delay constraint of a specific ONU. Set to high may improve the
        bandwidth usage at the cost of delay.
        "                       �"
        Fixed bandwidth - measured in Kbit/s.
        The value of this object should be the multiple of
        the value of h3cOnuSlaBandWidthStepVal.
        "                       �"
        Precedence of this flow over others in case of contention.
        0 is the lowest priority and 7 is the highest priority.
        "                       �"
        Fixed packet size - measured in byte.
        The value of this object should be valid when h3cOnuSlaFixedBandWidth is configured.
        "                      "
        Primary status of the specified ONU.
        There will be one row in this table for each
        information in the system.
        (1)Software and hardware versions of the specified ONU
        (h3cOnuHardMajorVersion, h3cOnuHardMinorVersion,
        h3cOnuUniMacType)
        (2)Several physical capabilities of the ONU.
        (h3cOnuLaserOnTime, h3cOnuLaserOffTime,
        h3cOnuGrantFifoDep.)
        (3)The operation(activation) status of the ONU.
        (h3cOnuWorkMode)
        "                       7"
        The entry of the h3cOnuInfoTable.
        "                       z"
        ONU hardware major version.  If the object length is
        zero, it means the version is unknown.
        "                       z"
        ONU hardware minor version.  If the object length is
        zero, it means the version is unknown.
        "                       +"
        ONU software version.
        "                       D"
        ONU User Network Interface(UNI) port MAC type.
        "                       �"
        The ONU laser on time measured in TQ units.  If the object value is
        0x7FFFFFFF, it means h3cOnuLaserOnTime is unknown.
        "                       �"
        The ONU laser off time measured in TQ units.  If the object value is
        0x7FFFFFFF, it means h3cOnuLaserOffTime is unknown.
        "                       �"
        Maximal number of grant records an ONU can store,
        relevant to ONU only.
        range: 1 - 255.
        0x7FFFFFFF: unknown value.
        "                      �"
        The operation(activation) mode of an ONU.
        other(1)   - ONU is in another mode.
        on(2)      - ONU is registered and authorized to the
        network.  In this mode it works
        as a media converter.
        pending(3) - ONU has been registered to the PON, but
        not authorized to the network.
        off(4)     - ONU is not registered to the network.
        "                       &"
        ONU PCB version.
        "                       ?"
        The signal round-trip-time(RTT) received.
        "                       )"
        ONU EEPROM version.
        "                       *"
        ONU registered type.
        "                       $"
        ONU host type.
        "                       J"
        The distance between OLT and ONU, measured in meter.
        "                       n"
        The link layer identifier, which uniquely identifies the ONU
        of a specific OLT.
        "                       $"
        ONU vendor ID.
        "                       +"
        ONU firmware version.
        "                       �"
        The burst ONU optical power received by OLT,
        and when the ONU status is up the value is usable.
        It measured in 0.01 dBm unit.
        "                       Q"
        This table used for getting MAC address information of ONU.
        "                       B"
        The entry of the h3cEponOnuMacAddrInfoTable.
        "                       3"
        The index of ONUs in one OLT.
        "                      ="
        The flag of ONU status.
        1 - bound:The ONU is bound but not registered.
        2 - registered:The ONU is registered but not bound.
        3 - run:The ONU is registered and bound on one OLT.
        4 - regIncorrect:The ONU is bound on one OLT and registered on
        another OLT.
        "                       -"
        The MAC address of ONU.
        "                       g"
        This table implements the following functions for ONUs:
        Bind MAC of ONU.
        "                       D"
        The entry of the table h3cOnuBindMacAddrTable.
        "                      J"
        Bind the MAC of ONU.
        While the MAC is not bound, the ONU can not go into
        effect and configurations can not be set.
        Set 0-0-0 (MAC address) to the EPON device port will
        unbind the relationship with the original MAC and
        configurations will be set to default values.
        "                       w"
        Set the binding type with the ONU which is confined
        to the index of h3cEponOnuTypeDescr.
        "                       �"
        This table implements the following functions for ONUs:
        1. Update the ONU firmware.
        2. Result of update ONU firmware.
        "                       G"
        The entry of the table h3cOnuFirmwareUpdateTable.
        "                       �"
        update(1): Update the ONU firmware.
        Config the MIB object module h3cEponOnuUpdateFileName
        with the filename of ONU firmware first.
        "                      "
        The ONU firmware update result.
        updating  - The ONU is updating firmware right now.
        ok     - The ONU update result is OK.
        fail   - The ONU update result is fail.
        fileNotExist - The ONU update failed because the file does not exist.
        notSetFilename - The ONU firmware filename is not set.
        fileNotMatchONU - The ONU firmware does not match the ONU.
        timeout - The ONU responses timeout.
        otherError - The ONU update result is unknown.
        "                       �"
        The filename of the ONU firmware to be updated.
        Note that the filename must contain the file path.
        "                       ]"The lower limit of measurement frames which is confined to
        h3cOnuLinkTestFrameNum."                       ]"The upper limit of measurement frames which is confined to
        h3cOnuLinkTestFrameNum."                       e"
        The lower limit of maximum-bandwidth which is confined to
        h3cOnuSlaMaxBandWidth."                       e"
        The upper limit of maximum-bandwidth which is confined to
        h3cOnuSlaMaxBandWidth."                       e"
        The lower limit of minimum-bandwidth which is confined to
        h3cOnuSlaMinBandWidth."                       e"
        The upper limit of minimum-bandwidth which is confined to
        h3cOnuSlaMinBandWidth."                       V"
        This table is used for getting ONU bind type in current version.
        "                       >"
        The entry of the h3cEponOnuTypeManTable.
        "                       )"
        The ONU type index.
        "                       �"
        The ONU type description which can be used to bind ONU in current
        version.
        the value of h3cOnuBindType can be configured by the index of
        h3cEponOnuTypeDescr.
        "                       �"
        This table implements the following functions:
        (1)Manage packet priority trust mode.
        (2)Manage packet queue-scheduler mode.
        "                       <"
        The entry of the h3cOnuPacketManTable.
        "                       �"
        The QOS mode which is assigned on ONU.
        dscp - The service dscp of politic Priority.
        ipprecedence - The service IP precedence of politic Priority.
        cos - The service cos of politic Priority.
        "                       �"
        The packet queue-scheduler mode which is assigned on ONU.
        spq - strict priority queuing.
        wfq - specifies the weights for weighted round-robin queuing.
        "                       �"
        This table implements the following functions:
        (1)Manage STP status.
        (2)Manage IGMP-snooping.
        (3)Manage DHCP-snooping.
        "                       7"
        The entry of h3cOnuProtocolTable.
        "                       i"
        true(1)  - STP status enable on ONU.
        false(2) - STP status disable on ONU.
        "                       }"
        true(1)  - IGMP snooping status enable on ONU.
        false(2) - IGMP snooping status disable on ONU.
        "                       �"
        true(1)  - DHCP snooping Option 82 status enable on ONU.
        false(2) - DHCP snooping Option 82 status disable on ONU.
        "                       }"
        true(1)  - DHCP snooping status enable on ONU.
        false(2) - DHCP snooping status disable on ONU.
        "                       m"
        true(1)  - PPPOE status enable on ONU.
        false(2) - PPPOE status disable on ONU.
        "                       ="
        Set the host aging time of IGMP on ONU.
        "                       ?"
        Set the max response time of IGMP on ONU.
        "                       ?"
        Set the router aging time of IGMP on ONU.
        "                       �"
        true(1)  - Igmp snooping aggregation report status enable on ONU.
        false(2) - Igmp snooping aggregation report status disable on ONU.
        "                       �"
        true(1)  - Igmp snooping aggregation leave status enable on ONU.
        false(2) - Igmp snooping aggregation leave status disable on ONU.
        "                      1"
        This table implements the following functions:
        (1)Manage 802.1x account.
        (2)Manage 802.1x password.
        ONU will be authorized to send and receive frames when the
        account and the password are all right, otherwise this ONU
        will be unavailable.
        "                       8"
        The entry of the h3cOnuDot1xTable.
        "                       �"
        ONU 802.1X account.
        The object value cannot be set as 'a', 'al' or 'all'.
        The object should be set together with h3cOnuDot1xPassword.
        "                       n"
        ONU 802.1X password.
        The object should be set together with h3cOnuDot1xAccount.
        "                       Q"
        This table contains specific information of priority queue.
        "                       <"
        The entry of h3cOnuPriorityQueueTable.
        "                       6"
        The direction of priority queue.
        "                       5"
        The queue ID of priority queue.
        "                      �"
        The size of priority queue, measured in percent. The total length of
        all priority queues is a constant, by default, it is assigned to all
        of the priority queues evenly. The length of each priority queue may
        be changed by changing the value of h3cOnuPriorityQueueSize.
        The total size of the inbound or outbound priority queues should be
        not more than 100.
        "                       A"
        This table contains statistics of ONU port.
        "                       4"
        The entry of h3cOnuCountTable.
        "                       P"
        The total number of frames received with bad CRC checksum.
        "                       S"
        The total number of frames dropped because of buffer failure.
        "                           b"
        The lower limit of queue size which is confined to
        h3cOnuQueueSize.
        "                       b"
        The upper limit of queue size which is confined to
        h3cOnuQueueSize.
        "                       A"
        The lower limit of h3cOnuQueueMaxBandwidth.
        "                       A"
        The upper limit of h3cOnuQueueMaxBandwidth.
        "                       A"
        The lower limit of h3cOnuQueueMaxBurstsize.
        "                       A"
        The upper limit of h3cOnuQueueMaxBurstsize.
        "                       L"
        Offer a free index of h3cOnuFirmwareUpdateByTypeTable.
        "                       _"
        This table contains specific bandwidth information of ONU priority queue.
        "                       ="
        The entry of h3cOnuQueueBandwidthTable.
        "                       i"
        The maximum bandwidth of specific ONU priority queue,
        measured in 100Kbps.
        "                       j"
        The maximum burst size of specific ONU priority queue,
        measured in 64Bytes.
        "                       �"
        true - enable bandwidth policy
        false - disable bandwidth policy
        The bandwidth administrative status of specific ONU priority queue.
        "                       +"
        ONU IP address table.
        "                       8"
        The entry of h3cOnuIpAddressTable.
        "                       9"
        The IP address assigned to the ONU.
        "                       H"
        The mask of IP address denoted by h3cOnuIpAddress.
        "                       K"
        The gateway of IP address denoted by h3cOnuIpAddress.
        "                       �"
        true(1)  - ONU auto allocate IP address status enable.
        false(2) - ONU auto allocate IP address status disable.
        "                       L"
        The management VLAN of ONU denoted by h3cOnuManageVID.
        "                       ^"
        The management interface status of ONU denoted by h3cOnuManageVlanIntfS.
        "                       ="
        ONU vendor specific information of ONU.
        "                       :"
        The entry of h3cOnuChipSetInfoTable.
        "                       u"
        Chipset vendor ID, which identifies the ONU's PON chip vendor
        according JEDEC ID code.
        "                       U"
        Chip model, numbering(range from 0 to 0xFF) by the chip vendor.
        "                       $"
        Chip revision.
        "                       '"
        Chip design date.
        "                       ("
        Capability of ONU.
        "                       C"
        The entry of the table h3cOnuCapabilityTable.
        "                      "
        Services types supported by the ONU.
        These functional groups can be supported independently.
        geinterfacesupport - supporting (1)/not supporting(0)
        Gbit Ethernet GE interface.
        feinterfacesupport - supporting (1)/not supporting(0)
        100M Ethernet FE interface.(maximum rate is 100M, without GEinterface)
        voipservicesupport - supporting (1)/not supporting(0)VoIP service.
        tdmservicesupport - supporting (1)/not supporting(0)TDM CES service.
        "                       V"
        The current  gigabit ethernet ports number supported by the ONU.
        "                       R"
        the current fast ethernet ports number supported by the ONU.
        "                       H"
        The current POTS ports number supported by the ONU
        "                       G"
        The current E1 ports number supported by the ONU.
        "                       I"
        The number of upstream queues supported by the ONU.
        "                       P"
        The number of maximum upstream queues per port of the ONU.
        "                       K"
        The number of downstream queues supported by the ONU.
        "                       R"
        The number of maximum downstream queues per port of the ONU.
        "                       {"
        true(1) - ONU supports a reserve battery.
        false(2) - ONU does not support a reserve battery.
        "                       �"
        true(1) -  ONU supports fast leave in igsp mode.
        false(2) - ONU does not support fast leave in igsp mode.
        "                       �"
        true(1) -  ONU supports fast leave in multicast control mode.
        false(2) - ONU does not support fast leave in multicast control mode.
        "                       �"
        This table defines the information of DBA(dynamic bandwidth allocation)
        report threshold contained in the MPCP report frames.
        "                       B"
        The entry of the table h3cOnuDbaReportTable.
        "                       ."
        The DBA report queue ID.
        "                      "
        The threshold of the DBA report queue.
        the following is the queue ID and
        the related default threshold setting.
        1 - 0
        2 - 0
        3 - 0
        4 - 65535
        5 - 65535
        6 - 0
        7 - 0
        8 - 0
        "                       �"
        enable  -threshold configuration is active for the queue.
        disable -threshold configuration is not active for the queue.
        "                       ."Table of map of the COS to local-precedence."                       B"Configuration information of map of the COS to local precedence."                       2"Index of the map, obtains from packet cos value."                       "Value of local precedence."                       "Table of ONU STP ports."                       -"Configuration information of ONU STP ports."                       "The index of the STP ports."                       #"The description of the STP ports."                       _"The current state of the port (i.e. disabled, discarding,
         learning and forwarding)."                       N"
        This table is used for getting ONU physical information.
        "                       ;"
        The entry of the h3cOnuPhysicalTable.
        "                       4"
        The bridge MAC address of ONU.
        "                       <"
        The MAC address of ONU first PON port.
        "                       ?"
        The register state of ONU first PON port.
        "                       ="
        The MAC address of ONU second PON port.
        "                       @"
        The register state of ONU second PON port.
        "                       J"
        This table is used for getting ONU SMLK information.
        "                       7"
        The entry of the h3cOnuSmlkTable.
        "                       /"
        The SMLK group ID of ONU.
        "                       E"
        The role of ONU first PON port in a SMLK group.
        "                       T"
        The transmitting status of ONU first PON port in a SMLK group.
        "                       F"
        The role of ONU second PON port in a SMLK group.
        "                       U"
        The transmitting status of ONU second PON port in a SMLK group.
        "                       "Property table."                       "The entry of property table."                       "The index of serial port."                       "The port baud rate."                       ."The port number of data bits in a character."                       +"The port sense of a character parity bit."                       "The port number of stop bits."                       �"The port type of input flow control.
             'none' indicates no flow control at this level.
             'hardware' indicates using hardware signals.
             'xonOrxoff' indicates using software function."                       M"The number of output octets about the port.
             The unit is byte."                       L"The number of input octets about the port.
             The unit is byte."                       S"The number of output error octets about the port.
             The unit is byte."                       R"The number of input error octets about the port.
             The unit is byte."                       �"Reset the counters to zero, including h3cOnuRS485TXOctets,
             h3cOnuRS485RXOctets, h3cOnuRS485TXErrOctets and
             h3cOnuRS485RXErrOctets."                       "Session summary table."                       %"The entry of session summary table."                       S"The max session number of every serial port
             which can be supported."                       �"The next valid index used for creating a new session raw.
             When there is no valid index left, it will return 0.
            "                       "RS485 raw session table.  Data received from RS485 will be sent
            to the destination by raw sockets.
            "                       "The entry of session table."                       "Raw session index."                       �"The type of a session.
             A session can use UDP socket, TCP socket as a client,
             or TCP socket as a server."                       w"This object indicates the transport type of the
             address contained in h3cOnuRS485SessionRemoteIP object."                       �"The IP of remote landing.
            When session type is 'udp', this is the peer IP.
            When session type is 'tcpClient', this is the server IP.
            When session type is 'tcpServer', this is invalid.
            "                       �"The port of remote landing.
            When session type is 'udp', this is the peer port.
            When session type is 'tcpClient', this is the server port.
            When session type is 'tcpServer', this is invalid.
            "                      "Local socket port.
            When session type is 'udp', this is local UDP socket port.
            When session type is 'tcpClient', this is invalid.
            When session type is 'tcpServer', this is the local port which
            will be listened.
            "                       �"The status used for creating,
            modifying, and deleting instances of
            the columnar objects in raw session table."                       x"Error information table.  When failed to create a session,
             error information can be got from this table."                       '"The entry of error information table."                       �"Error information string.  When a response with 'noCreeation' for
        row creation in table h3cOnuRS485SessionTable,
        the error reason can be got from this object."                           E"
        This table is used for batch operation by slot.
        "                       H"
        The entry of the h3cEponBatchOperationBySlotTable.
        "                       +"
        The EPON board index.
        "                      �"
        The types of batch operation by slot:
        1  - resetUnknown, the object value is not set.
        9  - updateDba, update OLT DBA algorithm.
        Config the MIB object module h3cEponDbaUpdateFileName.
        10 - updateONU, update ONU firmware.
        Config the MIB object module h3cEponOnuUpdateFileName
        with the filename of ONU firmware first.
        "                       ."
        Execute batch operation.
        "                      �"
        The result of batch operation.
        0xFFFF - other, general error.
        1 - working, operation is not completed.
        2 - successful, completed successfully.
        3 - failed because the DBA source file does not exist.
        4 - failed because the ONU firmware file does not exist.
        5 - failed because of not set the filename of DBA source.
        6 - failed because of not set the filename of ONU firmware.
        7 - failed because of not set slottype.
        "                       D"
        This table is used for batch operation by OLT.
        "                       G"
        The entry of the h3cEponBatchOperationByOLTTable.
        "                      A"
        The types of batch operation by OLT(operation for all ONUs in the
        OLT):
        1 -- resetUnknown, the object value is not set.
        5 -- updateONU, update ONU firmware.
        configure the MIB object module h3cEponOnuUpdateFileName
        with the filename of ONU firmware first.
        "                       ."
        Execute batch operation.
        "                      �"
        The result of batch operation:
        0xFFFF -- other, gernal error.
        1 -- working, operation is not completed.
        2 -- successful, operation completed successfully.
        4 -- failed because the ONU firmware file does not exist.
        6 -- failed because of not set the filename of ONU firmware.
        7 -- failed because of not set olttype.
        "                       C"
        This table is used to update ONU by ONU type.
        "                       G"
        The entry of the h3cOnuFirmwareUpdateByTypeTable.
        "                       G"
        The type and file relationship table entry index.
        "                       '"
        The type of ONUs.
        "                       B"
        The file to be updated for the type of ONUs.
        "                       r"
        The status of this table entry.
        Only createAndGo and destroy actions are supported.
        "                           ."
        OLT software error code.
        "                       /"
        Alarm code of the vendor.
        "                       6"
        The MAC of ONU registered error.
        "                       S"
        The type of event that generated this entry in the event log.
        "                       w"
        Whether this event occurred locally, or was received from the
        OAM peer via Ethernet OAM.
        "                       G"
        The index of port which generate loop back event.
        "                       p"
        A textual string containing information about the
        port generated loop back event.
        "                       T"
        the amount of mismatched frames about the LLID mismatch alarm.
        "                       %"
        error bit rate.
        "                       ("
        error frames rate.
        "                       ,"
        The MAC of silent ONU.
        "                       3"
        The result of EPON operation.
        "                       -"
        The state of ONU laser.
        "                               ~"
        A h3cEponPortAlarmBerTrap notification is sent when
        a BER threshold crossing event is detected.
        "                 �"
        A h3cEponPortAlarmFerTrap notification is sent when
        a frame error rate threshold crossing event is detected.
        "                 �"
        A h3cEponErrorLLIDFrameTrap notification is sent when a
        LLID mismatched frames rate threshold crossing event is detected.
        "                 x"
        A h3cEponLoopBackEnableTrap notification is sent when
        the loop back command is committed.
        "                 o"
        A h3cEponOnuRegistrationErrTrap notification is sent when a
        ONU register failed.
        "                 w"
        A h3cEponOamDisconnectionTrap notification is sent when
        LLID's OAM link is disconnected.
        "                 t"
        A h3cEponEncryptionKeyErrTrap notification is sent when
        LLID's encryption key is bad.
        "                 �"
        A h3cEponRemoteStableTrap notification is sent when
        remote Data Terminal Equipment(DTE) has not seen or
        is unsatisfied with local state information.
        "                 �"
        A h3cEponLocalStableTrap notification is sent when
        DTE has not seen or is unsatisfied with remote state
        information.
        "                 �"
        A h3cEponOamVendorSpecificTrap notification is sent when
        system vendor specific OAM alarm raised.
        "                 s"
        A h3cEponSoftwareErrTrap notification is sent when
        a PAS-SOFT internal error occurs.
        "                 �"
        A h3cEponPortAlarmBerRecoverTrap notification is sent when
        a BER threshold crossing event is detected and then recovered.
        "                 �"
        A h3cEponPortAlarmFerRecoverTrap notification is sent when
        a frame error rate threshold crossing event is detected and then
        recoverd.
        "                 �"
        A h3cEponErrorLLIDFrameRecoverTrap notification is sent when a
        LLID mismatched frames rate threshold crossing event is detected
        and then recoverd.
        "                 �"
        A h3cEponLoopBackEnableRecoverTrap notification is sent when
        the loop back is detected and then recoverd.
        "                 �"
        A h3cEponOnuRegistrationErrRecoverTrap notification is sent when an
        ONU register failed and then register successful again.
        "                 �"
        A h3cEponOamDisconnectionRecoverTrap notification is sent when
        LLID's OAM link is disconnected and then connected.
        "                 �"
        A h3cEponEncryptionKeyErrRecoverTrap notification is sent when
        LLID's encryption key is bad and then right.
        "                 �"
        A h3cEponRemoteStableRecoverTrap notification is sent when
        remote DTE has not seen or is unsatisfied with local
        state information and then is realized.
        "                 �"
        A h3cEponLocalStableRecoverTrap notification is sent when
        DTE has not seen or is unsatisfied with remote state
        information and then is realized.
        "                 �"
        A h3cEponOamVendorSpecificRecoverTrap notification is sent when
        system vendor specific OAM alarm is detected and then recovered.
        "                 �"
        A h3cEponSoftwareErrRecoverTrap notification is sent when
        a PAS-SOFT internal error is detected and then recovered.
        "                 �"
        A h3cDot3OamThresholdRecoverEvent notification is sent when
        h3cDot3OamThresholdEvent is detected and then recoverd.
        "                 �"
        A h3cDot3OamNonThresholdRecoverEvent notification is sent when
        h3cDot3OamNonThresholdEvent is detected and then recoverd.
        "                 �"
        A h3cEponOnuRegExcessTrap notification is sent when the
        number of registered ONUs exceeds the limit.
        "                 �"
        A h3cEponOnuRegExcessRecoverTrap notification is sent when
        h3cEponOnuRegExcessTrap is detected and then recoverd.
        "                 Z"
        A h3cEponOnuPowerOffTrap notification is sent when ONU is power off.
        "                 n"
        A h3cEponOltSwithoverTrap notification is sent when OLT switchover
        is detected.
        "                 �"
        A h3cEponOltDFETrap notification is sent when there was
        a serious problem(device fatal error) on OLT.
        "                 �"
        A h3cEponOltDFERecoverTrap notification is sent when
        device fatal error is detected and then recoverd.
        "                 |"
        The h3cEponOnuSilenceTrap notification is sent when an
        unbound ONU try to register to an OLT.
        "                 �"
        The h3cEponOnuSilenceRecoverTrap notification is sent when
        a silent ONU is bound in the OLT or the aging onu mac
        address is timeout.
        "                 ~"
        A h3cEponUpdateResultTrap notification is sent when
        an ONU reported its firmware update result.
        "                 v"
        A h3cEponOnuAutoBindTrap notification is sent
        when a silent ONU is bound automatically.
        "                 �"
        A h3cEponOnuPortStpStateTrap notification is sent when
        a port turns into another state in STP environment.
        "                 �"
        A h3cEponOnuLaserFailedTrap notification is sent when
        an ONU has trouble with laser, such as laser constantly turned on,
        signal degradation or optics EOL (End of Life).
        "                 w"
        A h3cOnuSmlkSwitchoverTrap notification is sent when
        an ONU SMLK switchover is detected.
        "                     R"
        This table contains line code error statistics of epon port.
        "                       4"
        The entry of h3cEponStatTable.
        "                       O"
        The frame error rate of epon port, measured in 1e-9 unit.
        "                       M"
        The bit error rate of epon port, measured in 1e-9 unit.
        "                          