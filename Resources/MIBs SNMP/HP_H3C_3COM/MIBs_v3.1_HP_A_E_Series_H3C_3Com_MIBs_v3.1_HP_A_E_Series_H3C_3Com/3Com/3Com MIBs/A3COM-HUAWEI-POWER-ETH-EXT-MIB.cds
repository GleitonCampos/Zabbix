	@-- =================================================================
-- Copyright (C) 2002 by  HUAWEI 3Com TECHNOLOGIES. All rights reserved.
--
-- Description: power over ethernet extend mib
-- Reference: POWER-ETHERNET-MIB
-- Version: V1.5
-- History:
--   V1.0 2004-07-24 Created by Gaolong
--   V1.1 2004-09-08 Update file by Gaolong for some syntax errors.
--   V1.2 2004-11-19 Update file by liuhongxu for poe need.
--                   add h3cMainPsePriorityMode¡¢h3cPsePowerMaxValue¡¢
--                   h3cpsePDChangNotification adjust the objects' sequence of
--                   h3cPsePortTable and h3cMainPseTable add the description
--                   of MANDATORY-GROUPS in h3cPseCompliance.
--   V1.3 2004-12-16 Update file by liuhongxu for poe profile
--                   add h3cPsePortProfile, h3cPseProfilesTable
--                   change the name of h3cPseProfileIndex add
--                   h3cPseProfileApplyNum.  adjust the format of this mib.
--   V1.4 2005-03-29 Update file by Wangzhaoyan for poe pow need.
--                   add h3cPOEPowerObjects, h3cPOEThresholdLimitObjs,
--                   h3cPOESupModuleInfoObjs, h3cPOEDCOutStateObjects,
--                   h3cPOEDCDCOutInfoObjects, h3cPOEACSwitchStateModuleObjs,
--                   h3cPOEInCurStateObjects, h3cPOEAlarmStateObjects and the
--                   sub-nodes.  add 17 traps change the node name from
--                   h3cpsePDChangNotification to h3cpsePDChangeNotification
--                   change some detail as the suggestion from Wangyingxia and
--                   Yangyang.  adjust the format of this mib.
--   V1.5 2005-11-21 Update file by Liweizhen for controling the power-management
--                   policy of PSE or PD.  Add h3cPsePolicyMode, h3cPDPolicyMode,
--                   h3cMainPsePowerPriority.
--                   Delete some description of h3cPsePortProfileIndex node.
--                   Change the description of h3cPseProfilePowerMode node.
--                   Change SYNTAX OCTET STRING range for the following nodes:
--                   h3cPOEPowerType, h3cPOESupervisionModuleName,
--                   h3cPOESMFactorName, h3cPOEModuleHardVerInfo.
--                   Adjust the format of this mib.
-- =================================================================
                                                                                                             "Description." "Contact-info."       -- July 26, 2004 at 10:23 GMT
       �"The indexing scheme is taken form that used by
                 the IETF Power MIB.  The same indexing scheme is
                 used to give continuity in behaviour between
                 that standard and this extensions definitioin."                      c"The pethPsePortGroupIndex is imported from the IETF Power MIB
                 and uniquely identifies the group containing the port to which
                 power ethernet PSE is connected.  Group means (box in the stack,
                 module in a rack).

                 The pethPsePortPowerIndex is imported from the IETF Power MIB
                 and uniquely identifies the power ethernet PSE port within group
                 pethPseGroupIndex to which the power Ethernet PSE entry is
                 connected.  This value will match the local port number on a
                 switch."                      �"The object supports the fault category of the IETF Power MIB [1]
                 pethPsePortDetectionStatus object.  A textual description
                 containing more information about the nature of this fault is
                 provided by this object.  Typically this will detail the precise
                 PoE hardware state which is causing the pethPsePortDetectionStatus
                 object to be in the 'fault' state.
                 It is a DisplayString of up to 255 characters."                      �"The object specifies the peak power which has been consumed by
                 the port.  It is defined as the highest measured value of power
                 in milliWatts that has been consumed by the port.  Its value
                 is only reset when link is lost, the port is PoE disabled or
                 when it is manually reset by the user asspecified below.
                 It is a read/write integer value with units of milliWatts.
                 Writing a value of zero to this object resets its value
                 to zero.  Writing any other value to this object has no
                 effect on its value and an error is returned."                      y"The object specifies the average power which has been consumed
                 by the port.  This object is a read/write integer value with
                 units of milliWatts.  Writing a value of zero to this object
                 resets its value to zero.  Writing any other value to this
                 object has no effect on its value and an error is returned."                       �"The object specifies the power currently being consumed by the port.
                  It is a read only integer value with units of milliWatts."                       �"The object specifies the power limit set for this port.
                  The PSE will not supply more than this level of power to the
                  specified port.
                  It is a read/write integer value with units of milliWatts."                      "Indicates the power profile which is currently associated
                 with this port.  This object references the corresponding
                 h3cPseProfileIndex object in the power profiles table.  A
                 value of zero is a special case and indicates that no
                 power profile is currently associated with this port.  When
                 h3cPseProfileIndex is set to an index of existent profile,
                 pethPsePortPowerPairs, pethPsePortPowerPriority,
                 pethPsePortAdminEnable and h3cPsePortPowerLimit will be
                 set to the same as corresponding value.  PethPsePortPowerPairs,
                 pethPsePortPowerPriority and pethPsePortAdminEnable are objects
                 of rfc3621-Power-Ethernet.mib."                       "Description."                      O"The pethMainPseGroupIndex is imported from the IETF Power MIB
                 and uniquely identifies the group containing the port to which
                 power ethernet PSE is connected.  Group means (box in the stack,
                 module in a rack) and the value 1 MUST be used for non-modular
                 devices."                      m"The object specifies the power limit set for the unit as a whole.
                 The PoE unit will already have a nominal power defined by the
                 IETF Power MIB [1] pethMainPsePower object.  This OPTIONAL object
                 specifies a further limit to this nominal power value.  This may
                 be useful to control the thermals of the unit, or for internal
                 testing purposes.  One possible use for this object may be to lower
                 the power consumption of the unit if one or more of the internal
                 fans have broken.  It is a read/write integer value with units of
                 Watts (note - Watts is chosen instead of milliWatts here since
                 the IETF Power MIB [1] measures unit based parameters, such as
                 the pethMainPsePower object, in units of Watts)."                      I"The object specifies the average power which has been consumed
                 by the port.  It is a read/write integer value with units of
                 Watts (note - Watts is chosen instead of milliWatts here since
                 the IETF Power MIB [1] measures unit based parameters, such as
                 the pethMainPsePower object, in units of Watts).  Writing a value
                 of zero to this object resets its value to zero.  Writing any
                 other value to this object has no effect on its value and an error
                 is returned."                      v"The object specifies the peak power which has been consumed for PoE.
                 It is defined as the highest measured value of power in milliWatts
                 that has been consumed at any one point in time by the sum of the PoE
                 ports.  Its value is only reset when the unit is powered on or when
                 it is manually reset by the user as specifiedbelow.  It is a read/write
                 integer value with units of Watts (note - Watts is chosen instead of
                 milliWatts here since the IETF Power MIB [1] measures unit based
                 parameters, such as the pethMainPsePower object, in units of Watts).
                 Writing a value of zero to this object resets its value to zero.
                 Writing any other value to this object has noeffect on its value
                 and an error is returned."                      $"The object specifies the amount of power remaining in the guaranteed
                 power pool.  Each time a port is placed into guaranteed mode it
                 reserves a set amount of power out of the total guaranteed power
                 pool for the system.  This intention of this object is to give the
                 client of this MIB (whether that be the CLI or the Web interface or
                 the end user) an indication of how many ports can still be placed
                 into guaranteed mode.  It is a read only integer value with units of
                 Watts(note - Watts is chosen instead of milliWatts here since the
                 IETF Power MIB [1] measures unit based parameters,such as the
                 pethMainPsePower object, in units of Watts)."                      �"Describes or controls the priority mode on slot which must be
                 enabled firstly.  When a new board is inserted, and the power is
                 over-load, a value of disconnection(0) means that the power will
                 stop supply to the low priority slot ; A value of non-disconnection(1)
                 means that the slot still supply when a new board is inserted, and
                 the power is over-load too."                       �"Describes or controls the legacy mode on slot which must be enabled
                 firstly.  Legacy mode: standard or nonstandard PD detection mode."                      "Describes or controls the priority of the PSE.  The priority
                 will be used by the PSE policy to prevent from power overloading.
                 If the priority of PSE is set to critical, the PSE will turn into
                 guaranteed mode.  The priority could be used by a control mechanism
                 that prevents power overloading by disconnecting PSEs with lower
                 power priority.  PSEs that connect devices critical to the
                 application should be set to higher priority."                      @"A table of objects representing a set of power profiles.
                 Power profiles can be applied to PoE ports, which have the
                 effect of automatically setting the priority, power limit
                 and PoE enable MIB objects to the values specified in the
                 power profile."                       D"A set of objects that display and control the Main power of a PSE."                       _"The index of the profile. This uniquely allow the profile to be
                 identified."                       w"Assigns the profile a name with which the settings
                can be assiciated with. For example, 'NBX Phone'."                      d"The power mode associated with this power profile.  There
                 are two possible power modes as follows: powerDisabled,
                 powerEnabled.  When a power profile is applied to a PSE port,
                 this value dictates the settings of the ports pethPsePortPowerPriority
                 and pethPsePortAdminEnable objects."                       �"The power limit to be applied to the ports h3cPsePortPowerLimit
                  object when the profile is applied to the PSE port.  Expressed in
                  milliWatts."                      
"This object controls the priority of the port from the point of
                 view of a power management algorithm.  The priority that is set
                 by this variable could be used by a control mechanism that
                 prevents over current situations by disconnecting first ports
                 with lower power priority. Ports that connect devices critical
                 to the operation of the network - like the E911 telephones
                 ports - should be set to higher priority."                      1"Describes or controls the pairs in use.  If the value of
                 pethPsePortPowerPairsControl is true, this object is writable.
                 A value of signal(1) means that the signal pairs only are in use.
                 A value of spare(2) means that the spare pairs only are in use." 4"IEEE Std 802.3af Section 30.9.1.1.4 aPSEPowerPairs"                     �"The number of this profile which has been applied.
                 If h3cPseProfileApplyNum is not zero, user can't
                 change the current line."                       �"The status of this classifier.
                 If h3cPseProfileApplyNum is not zero, user can't
                 delete the current line."                      e"The object specifies whether the device auto-detection feature is
                 active.  If this object is set to Active, and a known powered device
                 is detected, then the port will automatically switch to Auto-Guaranteed
                 mode.  This is a stackwide object (ie. it is not referenced by
                 group index)."                       �"The object specifies the max poe power for lanswitch.
                 The value should between the power currently and the max power."                      "The PSE policy only applies to the situation that when a new
                 board (PSE) is inserted, and the power is overload.
                 A value of priority(2) means that the power will stop supplying
                 to the low priority PSE.  About PSE priority, please refer to
                 h3cMainPsePowerPriority.  A value of disabled(1) means that the
                 power will stop supplying to the new inserted PSE.  The default
                 value of this object is disabled(1)."                      �"The PD policy only applies to the situation that when a new
                 PD is inserted, and the power of PSE is overload.
                 A value of priority(2) means that the power will stop supplying
                 to the low priority port PD.  About port priority, please refer
                 to pethPsePortPowerPriority.  A value of disabled(1) means that
                 the slot stop supplying to the new inserted PD.  The default
                 value of this object is disabled(1)."                           D"This notification indicates if PD has been inserted or pulled out."                 G"This notification indicates the POE power module does not disconnect."                 ?"This notification indicates the POE power module input error."                 @"This notification indicates the POE power module output error."                 `"This notification indicates the POE power module overruns the
                 voltage limit."                 d"This notification indicates the POE power module overruns the
                 temperature limit."                 ="This notification indicates the POE power module fan error."                 ="This notification indicates the POE power module is closed."                 I"This notification indicates the POE power module current is restricted."                 J"This notification indicates the AC input switch alarm of this POE power."                 e"This notification indicates the AC input current A alarm state of
                 this POE power."                 e"This notification indicates the AC input current B alarm state of
                 this POE power."                 e"This notification indicates the AC input current C alarm state of
                 this POE power."                 f"This notification indicates the AC input voltage AB alarm state of
                 this POE power."                 f"This notification indicates the AC input voltage BC alarm state of
                 this POE power."                 f"This notification indicates the AC input voltage CA alarm state of
                 this POE power."                 D"This notification indicates the DC output alarm of this POE power."                 D"This notification indicates the whole POE power has been shutdown."                         "Description."   E"This group is mandatory only for executing POE commands as a batch."                 ?"A collection of objects should be supported at the same time."                 ?"A collection of objects should be supported at the same time."                 +"A collection of scalar objects supported."                 "PD Change Notification."                 ?"A collection of objects should be supported at the same time."                 "Power threshold limits group."                 $"The basic Power information group."                 "The DC out power state group."                 -"The power AC input switch information group"                 "PD Change Notification."                 "PD Change Notification."                 "PD Change Notification."                        �"Input threshold AC minimum.
                 It is a read-write node.
                 The value of this node is 'OCTET STRING',
                 it is used to describe a float value.
                 So this string should fit the following rule:
                 1. This string should be terminated by '\0';
                 2. Every characters should be number or radix point;
                 3. The radix point should occur only once, and it should not
                 be the first or the last character of the string.
                 The value of this node should be smaller than 264.0V and larger than 90.0V.
                 And it should be smaller than the h3cPOEThresholdACMaximum."                      �"Input threshold AC maximum.
                 It is a read-write node.
                 The value of this node is 'OCTET STRING',
                 it is used to describe a float value.
                 So this string should fit the following rule:
                 1. This string should be terminated by '\0';
                 2. Every characters should be number or radix point;
                 3. The radix point should occur only once, and it should not
                 be the first or the last character of the string.
                 It should be smaller than 264.0V and larger than 90.0V.
                 And it should be larger than the h3cPOEThresholdACMinimum."                      ^"Input threshold DC minimum.
                 It is a read-write node.
                 The value of this node is 'OCTET STRING',
                 it is used to describe a float value.
                 So this string should fit the following rule:
                 1. This string should be terminated by '\0';
                 2. Every characters should be number or radix point;
                 3. The radix point should occur only once, and it should not
                 be the first or the last character of the string.
                 It should be smaller than 47.0V and larger than 45.0V."                      ^"Input threshold DC maximum.
                 It is a read-write node.
                 The value of this node is 'OCTET STRING',
                 it is used to describe a float value.
                 So this string should fit the following rule:
                 1. This string should be terminated by '\0';
                 2. Every characters should be number or radix point;
                 3. The radix point should occur only once, and it should not
                 be the first or the last character of the string.
                 It should be smaller than 57.0V and larger than 55.0V."                           "The type of the power."                       ""The number of the power modules."                       E"The object specifies the Supervision Module name on this POE power."                       C"The object specifies the high byte of the monitor module version."                       B"The object specifies the low byte of the monitor module version."                       2"The object specifies the name of the manufactor."                       8"The table of the module information on this POE power."                       8"The entry of the module information on this POE power."                       �"The index of the current module on this POE power.
                 It is also the index of h3cPOEModuleInfoTable.
                 The range of this node is from 1 to h3cPOEPowerModuleNum."                       1"The ID of the current module on this POE power."                       4"The power of the current module on this POE power."                       K"The hardware version information of the current module on this POE power."                           h"The module number on this POE power.
                 It is the maximum of the h3cPOEDCOutStateIndex."                       7"The table of DC output power state on this POE power."                       ;"The entry of the DC output power state on this POE power."                       �"The index of the DC output power state on this POE power.
                 The range of this node is from 1 to h3cPOEDCOutStateModuleNum."                      �"The DC output alarm of the DC output power state on this POE power.
                 The value of this node will be the following values:
                                     normal     (1),
                                     underLimit (2),
                                     aboveLimit (3),
                                     fuseBroken (4),
                                     switchOff  (5),
                                     otherError (6)."                           q"The number of DC output current on this POE power.
                 It is the maximum of h3cPOEDCOutInfoIndex."                       ;"The table of the DC output information on this POE power."                       ;"The entry of the DC output information on this POE power."                       �"The index of the DC output information on this POE POWER.
                 The range of this node is from 1 to h3cPOEDCOutCurNum."                       C"The DC output voltage of the current DC output on this POE power."                       D"The total load current of the current DC output on this POE power."                           ~"The number of the AC swtich state module on this POE power.
                 It is the maximum of h3cPOEACSwitchStateIndex."                       5"The table of the AC switch state on this POE power."                       5"The entry of the AC switch state on this POE power."                       �"The index of the AC switch state on this POE power.
                 The range of this node is from 1 to h3cPOEACSwitchStateModuleNum."                      ]"The AC switch state on this POE power.
                 The value of this node will be one of the following values:
                                     on             (1),
                                     off            (2),
                                     highVoltInput  (3),
                                     lowVoltInput   (4)"                           �"The DC input current state of the module on this POE power.
                 It is the maximum of the h3cPOESwitchStateVolExIndex."                      �"The current A state in the DC input on this POE power.
                                     normal     (1),
                                     underLimit (2),
                                     aboveLimit (3),
                                     lackPhrase (4),
                                     fuseBroken (5),
                                     switchOff  (6),
                                     otherError (7)."                       "The current B state in the DC input on this POE power.
                 The value of this node will be one of the following values:
                                     normal     (1),
                                     underLimit (2),
                                     aboveLimit (3),
                                     lackPhrase (4),
                                     fuseBroken (5),
                                     switchOff  (6),
                                     otherError (7)."                       "The current C state in the DC input on this POE power.
                 The value of this node will be one of the following values:
                                     normal     (1),
                                     underLimit (2),
                                     aboveLimit (3),
                                     lackPhrase (4),
                                     fuseBroken (5),
                                     switchOff  (6),
                                     otherError (7)."                      �"All alarm status of the VOL status.
                 The value of this node will be one of the following values:
                                     normal     (1),
                                     underLimit (2),
                                     aboveLimit (3),
                                     lackPhrase (4),
                                     fuseBroken (5),
                                     switchOff  (6),
                                     otherError (7)."                       J"The h3cPOESwitchStateVolExIndex will match the number of the VOL status."                       �"The object species the index of the VOL status.
                 The range of this node is from 1 to h3cPOEInCurStateModuleNum."                      "The object specifies the VOL AB alarm in each VOL status.
                 The value of this node will be one of the following values:
                                     normal     (1),
                                     underLimit (2),
                                     aboveLimit (3),
                                     lackPhrase (4),
                                     fuseBroken (5),
                                     switchOff  (6),
                                     otherError (7)."                      "The object specifies the VOL BC alarm in each VOL status.
                 The value of this node will be one of the following values:
                                     normal     (1),
                                     underLimit (2),
                                     aboveLimit (3),
                                     lackPhrase (4),
                                     fuseBroken (5),
                                     switchOff  (6),
                                     otherError (7)."                      "The object specifies the VOL CA alarm in each VOL status.
                 The value of this node will be one of the following values:
                                     normal     (1),
                                     underLimit (2),
                                     aboveLimit (3),
                                     lackPhrase (4),
                                     fuseBroken (5),
                                     switchOff  (6),
                                     otherError (7)."                           F"The object specifies the number of the power modules in alarm state."                       ,"All alarm states in the POE power modules."                       ]"The h3cPOEAlarmModuleInfoIndex will match the number
                 of the power module."                       �"The index specifies the index of the H3cPOEAlarmStateInfoEntry table.
                 The range of this node is from 1 to h3cPOEAlarmStateModuleNum."                       �"The node specifies the alarm state:
                 The module does not link.
                 The value of this node is one of the following values:
                                  normal (1),
                                  alarm  (2)."                      "The node specifies the alarm state:
                                     Input error.
                 The value of this node is one of the following values:
                                     normal (1),
                                     alarm  (2)."                      "The node specifies the alarm state:
                                     Output error.
                 The value of this node is one of the following values:
                                     normal (1),
                                     alarm  (2)."                      "The node specifies the alarm state:
                                     The voltage is too high.
                 The value of this node is one of the following values:
                                     normal (1),
                                     alarm  (2)."                      "The node specifies the alarm state:
                                     The temperature is too high.
                 The value of this node is one of the following values:
                                     normal (1),
                                     alarm  (2)."                      "The node specifies the alarm state:
                                     The fan error.
                 The value of this node is one of the following values:
                                     normal (1),
                                     alarm  (2)."                      "The node specifies the alarm state:
                                     The module is shutdown.
                 The value of this node is one of the following values:
                                     normal (1),
                                     alarm  (2)."                      "The node specifies the alarm state:
                                     The module limit the current.
                 The value of this node is one of the following values:
                                     normal (1),
                                     alarm  (2)."                                      