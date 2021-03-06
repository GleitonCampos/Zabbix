S-- =================================================================
-- Copyright (c) 2004-2011 Hangzhou H3C Tech. Co., Ltd.  All rights reserved.
--
-- Description: description of entity extend properties.
-- Reference:
-- History V2.7
-- V1.0 Created by weixinzhe, Thursday, April 22, 2004 at 18:26:02
-- V1.1 modified by yelinhui, add h3cEntityExtMacAddress
-- V1.2 modified by panxidong, add h3cEntityExtErrorStatus
-- V1.3 2004-10-12 updated by gaolong
--      Remove BITS from IMPORTS
-- V1.4 2005-02-25 modified by longyin
--      Add error status stackPortBlocked(22) and stackPortFailed(23)
--      for h3cEntityExtErrorStatus
-- V1.5 2006-05-16 modified by wangsihai
--      Add error status sensorError(81) in h3cEntityExtErrorStatus
-- V1.6 2006-07-03 modified by lifengguang
--      Add h3cEntityExtManuTable
-- V1.7 2007-09-21 modified by lifengguang
--      Add notification object h3cEntityExtSFPAlarmOn and h3cEntityExtSFPAlarmOff
--      Add h3cEntityExtPowerTable
-- V1.8 2007-11-19 modified by jinyi
--      Add h3cEntityExtCpuMaxUsage
-- V1.9 2008-02-27 modified by lifengguang
--      Add Trap nodes: h3cEntityExtSFPPhony
-- V2.0 2008-07-11 modified by lisong
--      Add h3cProcessTable
--      Add notification object h3cEntityInsert and h3cEntityRemove
-- V2.1 2008-07-14 modified by lifengguang
--      Add error status hardwareFaulty(91) in h3cEntityExtErrorStatus
--      Add Trap nodes: h3cEntityExtForcedPowerOff and h3cEntityExtForcedPowerOn
--      Add Trap nodes: h3cEntityExtFaultAlarmOn and h3cEntityExtFaultAlarmOff
-- V2.2 2008-10-24 modified by lifengguang
--      Add nodes h3cEntityExtLowerTemperatureThreshold and
--      h3cEntityExtShutdownTemperatureThreshold in h3cEntityExtStateTable
--      Add trap nodes h3cEntityExtResourceLack and h3cEntityExtResourceEnough
--      in h3cEntityExtTrapsPrefix
--      Add trap nodes h3cEntityExtTemperatureLower, h3cEntityExtTemperatureTooUp
--      and h3cEntityExtTemperatureNormal in h3cEntityExtTrapsPrefix
-- V2.3 2009-04-07 Added trap nodes h3cEntityExternalAlarmOccur and
--      h3cEntityExternalAlarmRecover
-- v2.4 2009-05-05 Added h3cEntityExtCpuAvgUsage, h3cEntityExtMemAvgUsage,
--      h3cEntityExtPhyMemSize, h3cEntityExtMemType, h3cEntityExtPhyCpuFrequency,
--      h3cEntityExtFirstUsedDate,
--      h3cEntityExtCpuUsageThresholdRecover, h3cEntityExtMemUsageThresholdRecover
-- V2.5 2010-08-09
--      Added h3cEntityExtShutdownLowerTemperatureThreshold,
--      h3cEntityExtCriticalLowerTemperatureThreshold,
--      h3cEntityExtCritLowerTempThresholdNotification and
--      h3cEntityExtTemperatureTooLow by zhanglei 06807.
--      Added h3cEntityExtMemAllocatedFailed, h3cEntityExtECCParityAlarm,
--      h3cEntityExtTrapDescription, h3cEntityExtECCParityAlarmStatus
--      by zhangqingjun 02357.
--      Modified description of h3cEntityExtPhyMemSize by haoyan 06611.
-- V2.6 2010-12-06
--      Added h3cEntityExtFanDirectionNotPreferred, h3cEntityExtFanDirectionNotAccord
--      by lifengguang 03035.
-- V2.7 2011-04-06
--      Added h3cEntityExtSFPInvalid, h3cEntityExtSFPInvalidNow and
--      h3cEntityExtSFPInvalidInDays by songhao 02718.
--      Changed SYNTAX of h3cEntityExtMemSize and h3cEntityExtPhyMemSize
--      from Integer32 to Unsigned32 by songhao 02718.
-- =================================================================
 �"ITU Recommendation X.731, 'Information Technology - Open
            Systems Interconnection - System Management: State
            Management Function', 1992" �" Represents the possible values of operational states.
            A value of disabled means the resource is totally
            inoperable. A value of enabled means the resource
            is partially or fully operable."             �"ITU Recommendation X.731, 'Information Technology - Open
            Systems Interconnection - System Management: State
            Management Function', 1992"�"The administrative state for this object, and it is possible to
            set the state when needed.
            A value of locked means the resource is administratively prohibited
            from use. A value of shuttingDown means that usage is
            administratively limited to current instances of use.
            A value of unlocked means the resource is not administratively
            prohibited from use."             �"ITU Recommendation X.731, 'Information Technology - Open
            Systems Interconnection - System Management: State
            Management Function', 1992"" Represents the possible values of standby status.

                  A value of hotStandby means the resource is not providing
                  service, but is will be immediately able to take over the
                  role of the resource to be backed-up, without the need for
                  initialization activity, and will contain the same
                  information as the resource to be backed up. A value of
                  coldStandy means that the resource is to back-up another
                  resource, but will not be immediately able to take over
                  the role of a resource to be backed up, and will require
                  some initialization activity. A value of providingService
                  means the resource is providing service."             �"ITU Recommendation X.731, 'Information Technology - Open
            Systems Interconnection - System Management: State
            Management Function', 1992"+"Represents the possible values of alarm status.
            When no bits of this attribute are set, then none of the
            status conditions described below are present. When the
            value of under repair is set, the resource is currently
            being repaired.

            When the value of critical is set, one or more critical
            alarms are active against the resource. When the value of
            major is set, one or more major alarms are active against
            the resource. When the value of minor is set, one or more
            minor alarms are active against the resource. When the
            value of warning is set, one or more warning alarms are
            active against the resource. When the value of
            indeterminate is set, one or more  alarms of indeterminate
            severity are active against the resource.
            When the value of alarm outstanding is set, one or more
            alarms is active against the resource. The fault may or may
            not be disabling."                                                                     Z"The private MIB file includes the general extent
            information of the device." �"Platform Team H3C Technologies Co., Ltd.
             Hai-Dian District Beijing P.R. China
             http://www.h3c.com
             Zip: 100085"                      3"This table contains one row per physical entity, There is
            always at least one row for an 'overall' physical entity.
            The information in each row may be not include all the object
            in this table, because of the entity need not some of the
            information here."                       5"The information about a particular physical entity."                       m"The index of h3cEntityExtStateTable.
            This index is identical to entPhysicalIndex in ENTITY-MIB"                       +"The administrative state for this object."                       $"The operate state for this object."                       g"This object is used for monitoring standby status.
            Not all entities support this object."                       �"The alarm status for this entity. It does not include
            the severity of alarms raised on child components. In
            this condition, there will be a alarm light on the entity,
            the object should have the same status with it."                       �"The CPU usage for this entity. Generally, the CPU usage
            will calculate the overall CPU usage on the entity, and it
            is not sensible with the number of CPU on the entity."                       v"The threshold for the CPU usage. When the CPU usage exceeds
            the threshold, a notification will be sent."                       f"The memory usage for the entity. This object indicates what
            percent of memory are used."                       |"The threshold for the Memory usage, When the memory usage
            exceeds the threshold, a notification will be sent."                       $"The size of memory for the entity."                       �"The uptime for the entity. The meaning of uptime is
            when the entity is up, and the value of the object
            will add 1 seconds while the entity is running."                       !"The temperature for the entity."                       z"The threshold for the temperature. When the temperature
            exceeds the threshold, a notification will be sent."                       "The voltage for the entity."                       �"The low-threshold for the voltage.
            When voltage is lower than low-threshold, a notification will be
            sent."                       �"The high-threshold for the voltage.
            When voltage greater than high-threshold, a notification will be
            sent."                       �" The threshold for the critical Temperature. When temperature
            exceeds the critical temperature, a notification will be sent."                       "MAC Address of the entity."                      
;"Indicate the error state of this entity object. Now it only
            supports Port, general power supply, RPS power supply and
            board/Subcard. It may have one of these values.
            The following four values  can be used for all kinds of entities.

            notSupported(1) means this entity can not support this function.
            normal(2) means the statement of this entity is normal. for ports,
            it doesn't differentiate 10M/s, 100M/s, 1000M/s, duplex and
            half-duplex. For fan, power supply and board-Subcard, it means
            their states are normal.
            postFailure(3)  means the entity fails to POST.
            entityAbsent(4) means the entity is absent now.


            The following values is depended on the entity .

            For Port entities, it may have the following  values. If its POST
            is failure,
            then the value of the instance will be postFailure(3), otherwise
            the value will be normal(2).

            If enable power supply over Ethernet on this port is failure,
            the value of this instance will be poeError(11), otherwise it will
            be normal(2).

            For stack port, if it connects to another stack port normally, and
            these two units merge into one stack, then the value of this
            instance will be normal(2).
            If something wrong occurs and the unit can not merge into stack,
            the value of this instance will be stackPortFailed(23).  If the
            stack port forms resilient daisy chain with another stack port
            on the other unit, the value of this instance will be
            stackPortBlocked(22).


            For SFP ports, if it fail to receive, the value of this instance
            will be sfpRecvError(31), if it fail to send, the value is
            sfpSendError(32), if it fail to send and receive, the value is
            sfpBothError(33), otherwise it will be normal(2).

            fanError(41) means that the fan stops working.

            psuError(51) means that the Power Supply Unit is in the state of
            fault.

            rpsError(61) means the RPS is in the state of fault.

            moduleFaulty(71) means the Module is in the state of fault.

            sensorError(81) means the sensor is in the state of fault.

            hardwareFaulty(91) means the hardware of specified entity is in the state of fault.

            NMS must be compatible with the states which may be added
            in the future."                       ="The maximal CPU usage for the entity in the period of time."                       "The threshold for the lower Temperature. When temperature runs
            under the threshold, a notification will be sent."                       �"The threshold for the shutdown Temperature. When temperature
            exceeds the threshold, a notification will be sent and the entity
            will be shutdown."                       F"The memory size of entity. This is the physical attribute of entity."                       6"The CPU frequency of entity. Unit of measure is MHZ."                       $"The first used date of the entity."                       ;"The average CPU usage for the entity in a period of time."                       >"The average memory usage for the entity in a period of time."                       "The memory type of entity."                       �"The threshold for the critical Temperature.  When temperature
            exceeds the critical lower temperature, a notification will be sent."                       �"The threshold for the shutdown Temperature.  When temperature
            exceeds the lower threshold, a notification will be sent and the entity
            will be shutdown."                           1"The table about device manufacture information."                       U"The device manufacture information about a particular physical
            entity."                       m"The index of h3cEntityExtManuTable.
            This index is identical to entPhysicalIndex in ENTITY-MIB."                      �"Manufacture serial number.
            The manufacture serial number of the entity such as chassis,
            module, and so on.  It is got from the device when manufacturing.
            For low level box-device, the manufacture serial number is the
            device-number of System Control Board(SCB for short), it is written
            into the SCB directly; for middle level or high level frame-device,
            the manufacture serial number is the device-numbers of SCB and
            Service Board, because the SCB, Service Board and chassis are
            separate to sale and the device-number of chassis can not be
            written into board."                       �"Device version information.
            The device version information of the entity such as chassis,
            module, and so on.  It consists of software version information
            and hardware version information."                       �"Device BOM code.
            The device BOM code of the entity such as chassis, module, and so
            on.  It is the component code of ERP system, which can be
            disassembled from device-number."                       �"MAC address count.
            The count of MAC addresses of the entity, such as chassis, module,
            or port, and so on."                           �"This table describes the power information of all the physical
            entity on the device, such as the fans, the subcards, the boards,
            etc."                       B"The entity power information about a particular physical entity."                       n"The index of h3cEntityExtPowerTable.
            This index is identical to entPhysicalIndex in ENTITY-MIB."                       :"The nominal power of the entity expressed in milliWatts."                       A"The measured usage power of the entity expressed in milliWatts."                      "The average power consumed by the entity expressed in milliWatts.
            Writing a value of zero to this object resets its value to zero.
            Writing any other value to this object has no effect on its value
            and an error is returned."                      "The peak power consumed by the entity expressed in milliWatts.
            Writing a value of zero to this object resets its value to zero.
            Writing any other value to this object has no effect on its value
            and an error is returned."                           ]"The Table describes the information about a particular process,
            namely a task."                       <"The information about a particular process, namely a task."                       Y"This object indicates the identifier of process, namely task ID
            in system."                       )"This object indicates the process name."                       �"This object provides a general idea of how busy a process caused
            the processor to be over a 5 minute period.  The ratio is calculated
            by the overall CPU usage caused by the process."                              )"The h3cEntityExtTemperatureThresholdNotification
            indicates the temperature exceeded the threshold.
            In this condition, user should check the status and the
            environment of the entity, sometimes it happens because
            of the failure of air-condition."                 �"The h3cEntityExtVoltageLowThresholdNotification indicates
            the voltage is lower than the threshold.

            If the voltage is lower too much than the entity needs,
            the entity will halt."                 �"The h3cEntityExtVoltageHighThresholdNotification indicates
            the voltage is higher than the threshold.

            If the voltage is higher too much than the entity needs,
            The entity may be damaged by the high voltage."                 _"The h3cEntityExtCpuUsageThresholdNotfication indicates
            the entity is overloaded."                 `"The h3cEntityExtMemUsageThresholdNotification indicates
            the entity is overloaded."                 7"The trap indicates the entity is operable at present."                 ;"The trap indicates the entity is not operable at present."                ;"The h3cEntityExtCriticalTemperatureThresholdNotification
            indicates the temperature exceeds the critical temperature.
            In this condition, user should check the status and the
            environment of the entity, sometimes it happens because
            of the failure of air-condition."                 m"The trap is generated when the SFP module fails
            or runs abnormally for some particular reason."                 S"The trap is generated when the SFP module restores to
            normal status."                "This module is NOT sold by authorized manufacturer.
            The normal function of the device or assume the maintenance
            responsibility thereof will NOT be guaranteed.
            The trap is generated periodically after a phony module has been
            found."                 R"The trap is generated when a removeable entity inserting to
            device."                 S"The trap is generated when a removeable entity removing from
            device."                 7"The trap indicates the entity is forced to power off."                 6"The trap indicates the entity is forced to power on."                 ="The trap indicates a fault occures on the specified entity."                 @"The trap indicates a fault disappears on the specified entity."                 `"The trap indicates that a kind of resource is not enough on the
            specified entity."                 a"The trap indicates that the entity recovers from the status of no
            enough resource."                 �"The trap indicates the temperature of a specified entity is under
            the lower threshold. In this condition, user should check the
            status and the environment of the entity, sometimes it goes wrong
            for some reason."                 �"The trap indicates the temperature of a specified entity exceeded
            the shutdown threshold. In this condition, user should check the
            status and the environment of the entity, sometimes it goes wrong
            for some reason."                 e"The trap indicates the temperature of a specified entity recover
            from abnormal status."                 h"The trap is generated when the monitored device connected to the
             specified entity fails."                 q"The trap is generated when the failed device connected to the
             specified entity returns to normal."                 :"The trap indicates the CPU usage descends the threshold."                 ="The trap indicates the memory usage descends the threshold."                 1"The trap indicates the memory allocated failed."                 G"The trap indicates the ECC(Error Correction Code) parity error alarm."                 �"The h3cEntityExtCritLowerTempThresholdNotification
            indicates the temperature is lower than the threshold.

            If the temperature is lower too much than the entity needs,
            the entity will halt."                 �"The h3cEntityExtTemperatureTooLow indicates the temperature
            is lower than the threshold.

            If the temperature is lower too much than the entity needs,
            the entity halts now."                 �"This trap indicates the specified fan's direction does not
            accord with preferred. The two parameters indicate the entity
            index and physical name of fan."                 �"This trap indicates the direction of fans does not accord
            with each other. The two parameters indicate the parent
            entity of the fans."                �"The transceiver module is not compatible with the interface card.
            The authorized manufacturer therefore shall NOT guarantee
            the normal function of the transceiver.
            The transceiver module will be invalidated in days.
            Please replace it with a compatible one as soon as possible.
            The trap is generated periodically after a phony transceiver module
            has been found."                !"This transceiver module is not compatible with the interface card.
            The authorized manufacturer therefore shall NOT guarantee
            the normal function of the transceiver.
            The trap is generated after a phony transceiver module
            has been found."                     "The information of trap."                       "ECC parity error."                       p"The days when the transceiver module is still valid,
            but after those days, it will be invaldated."                               ;"The compliance statement for systems supporting this MIB."   "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required."                 "Entity Extend group."                 #"Entity Extend Notification group."                     0"Standard Device Manufacture Information group."                 *"Standard Entity Power Information group."                        