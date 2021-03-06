�--===========================================================
-- Copyright (C) 2003 by  HUAWEI 3Com TECHNOLOGIES. All rights reserved.  
-- Description: This mib is excerpted from the draft-ietf-hubmib-efm-epon-mib-02 directly
---             only changed the object name,added the h3c as prefix.
-- Reference:  
-- Version: V1.0
-- History:
-- V1.0 created by liyue.  
--     Define MODULE-IDENTITY for h3cEponDeviceMIB
--=================================================================
                                                                                                        �"The objects in this MIB module are used to manage
                Ethernet Passive Optical Network (EPON) devices which
                are based on the Ethernet in the First Mile (EFM) PON
                as defined in IEEE Draft P802.3ah/D3.0 clause 60,64,65.
                                                                        
                This mib is excerpted from the draft files directly,only 
                changed the object name,added the h3c as prefix.  
                                                                      
                The following reference is used throughout this MIB
                module:
                [802.3ah] refers to:
                IEEE Draft P802.3ah/D3.3: 'Draft amendment to -
                Information technology - Telecommunications and
                information exchange between systems - Local and
                metropolitan area networks - Specific requirements -
                Part 3: Carrier sense multiple access with collision
                detection (CSMA/CD) access method and physical layer
                specifications - Media Access Control Parameters,
                Physical Layers and Management Parameters for subscriber
                access networks', 22 April 2004.
                Of particular interest are Clause 64(MPCP) 65(P2mP RS)
                and 60 (PON PMDs). Clause 30, 'Management', and Clause
                45,'Management Data Input/Output (MDIO) Interface'.

                Copyright (C) The Internet Society (2004).  This version
                of this MIB module is part of XXXX see the RFC itself
                for full legal notices."\"WG charter:
                  http://www.ietf.org/html.charters/hubmib-charter.html
                     Mailing Lists:
                       General Discussion: hubmib@ietf.org
                       To Subscribe: hubmib-request@ietf.org
                       In Body: subscribe your_email_address
                     Chair: Dan Romascanu
                     Postal: Avaya Inc.
                             Atidim Technology Park, Bldg. 3
                             Tel Aviv 61131
                             Israel
                        Tel: +972-3-645-8414
                     E-mail: dromasca@avaya.com

                     Editor: Lior Khermosh
                     Postal: Passave Technologies Inc.
                             Ackerstein Towers, Tower A, 6th floor,
                             9 Hamenofim St.
                             Hertzliya Pituach 46725,
                             ISRAEL
                     P.O.Box 2089 Hertzliya Pituach 46120 Israel
                     Tel:    +972-9-9717600 Ext: 7181
                     E-mail: lior.khermosh@passave.com" "200409210000Z" )"Initial version, published as RFC XXXX."       -- September 21, 2004
                   $"Table for EPON device MIB modules."                       ,"An entry in the EPON device Control table."                      �"This variable is used to reset the EPON device. The
                interface may be unavailable while the reset occurs and
                data may be lost. During reading operation it returns
                the state of the EPON device. running(1) indicates and
                operates normal operation, reset(2) indicates and
                operates reset mode. Writing can be done all the time."                       �"This variable defines the mode of the EPON device. When
                an olt(1) it is an Optical Line Terminal device (server)
                and when an onu(2) and Optical Network Unit device
                (client)"                      ^"This variable defines and provides information whether the
              EPON device uses FEC as defined in the [802.3ah] clause
              65.2 for EPON. When noFECEnabled(1) the device does not
              support FEC mode When fecTxEnabled(2) the device supports
              the FEC transmission mode. When fecRxEnabled(3) the device
              supports the FEC Receive mode. When fecTxRxEnabled(4) the
              device supports the FEC transmission and receive mode.
              Writing can be done all the time.
              This attribute is relevant for an OLT and an ONU."                      �"This variable defines and provides information on the
                Operation Administration and Maintenance (OAM) mode of
                an EPON device as defined by the [802.3ah] clause 57.
                When noOam(1) the device does not supports the OAM mode.
                When oamServer(2) the device supports the OAM mode as a
                server unit. When oamClient(3) the device supports the
                OAM mode as a client unit.
                Writing can be done during initialization,
                h3cEponDeviceObjectDeviceReadyMode is in notReady(1) or
                inProcess(2).
                This attribute is relevant for an OLT and an ONU."                      ="This variable defines the mode of an EPON device and
                provides information on the mode in initialization -
                ready for registration as defined by the [802.3ah]
                clause 64.
                When notReady(1) the device is not ready for operation.
                When inProcess(2) the device is in initialization
                process.
                When ready(3) the device is ready for registration.
                Writing can be done all the time.
                This attribute is relevant for an OLT and an ONU."                      7"Setting this variable to True(1) will cause Device to be
                entered into Power down mode where no registration is
                allowed and only receiving data from the link.
                Writing can be done all the time.
                This attribute is relevant for an OLT and an ONU."                      %"A read only variable which defines the number of
                registered LLIDs (as defined by the [802.3ah] clause 65)
                in a EPON network for an OLT and an ONU. Initialization
                value is 0.
                This attribute is relevant for an OLT and an ONU."                      *"A set of 8 integers, for each LLID, that defines the
                threshold reporting for each Queue in the REPORT
                message, as defined in [802.3ah] 64. First Queue set
                reporting will provide information on the queue
                occupancy of frames below this Threshold. The value
                returned shall be in Time quanta (TQ) which is 16nsec or
                2 octets increments.
                Writing can be done all the time.
                This attribute is relevant for an OLT and an ONU."                      �"Indicates and controls the resetting of the LLID MAC
                address log. Setting this object to none(1) has no
                action resetLog(2) empties the LLID MAC address log. All
                data is deleted. Setting it to useDefaultReporting(3)
                returns all entries priorities to their factory-default
                reporting. Reading this object always returns
                useDefaultReporting(3)."                      j"A table of read-only value that identifies the
                source_address and LLIDs parameter of the remote devices
                in the network. This MacAddress value, as defined in
                [802.3ah], 30.3.5.1.5, is updated on reception of a
                valid frame with a unicast destination Field or
                (1) a destination Field equal to the reserved multicast
                address for MAC Control specified in [802.3ah] Annex
                31A, (2) lengthOrType field value equal to the reserved
                Type for MAC Control as specified in [802.3ah] Annex
                31A. (3)an MPCP subtype value equal to the subtype
                reserved for MPCP as specified in [802.3ah] Annex 31A,
                and an LLID as allocated by the OLT. The table is
                defined as Remote MAC address - LLID (RMadL)
                The table is relevant only for an OLT device, and is
                equivalent from a bridge emulation to the bridge
                port-MAC address table where the LLIDs are equivalent to
                virtual bridge ports."                       �"A group of entries.  Applications create and delete
                entries using h3cEponDeviceRMadlEntryStatus.
                When adding objects to an LLID they are added in the
                persistent order of their index in this table."                       ["A locally-unique, administratively assigned name for a
                group of entries."                       r"An arbitrary integer for the purpose of identifying the
                LLID. Writing can be done all the time."                       �"The object identifier of a MIB module object to add to
                an entry, indicating the entry ID in the table. Writing
                can be done all the time."                       X"The remote MAC address of the LLID.
                Writing can be done all the time."                       �"A list of types for entries - LLIDs. Indicates and
                defines the state of registration. notRegister(1) marks
                a non registered LID, registered(2) marks a registered
                LLID.  Writing can be done all the time."                      y"A list of actions for an entry - LLID.  Indicates and
                defines the state of registration for the remote device.
                none(1) marks no action, register(2) marks to register
                an LLID, deregister(3) marks to deregister an LLID,
                reregister(4) marks reregistered LLID.
                Writing can be done all the time."                       �"The control that allows creation and deletion of
                entries. Once made active an entry MAY not be modified
                except to delete it."                           �"This table defines the list of statistics counters of
                EPON devices. The attributes are relevant for an OLT and
                an ONU."                       R"Table entries for Table of statistics counters of EPON
                devices."                      �"A count of the number of times a -Queue-0- frames
                transmission occurs. Increment the counter by one for
                each frame transmitted which is an output of -Queue-0-.
                The -Queue-0- marking matched the REPORT MPCP message
                Queue-0 field, as defined in [802.3ah] clause 64. This
                counter is mandatory for an ONU."                      �"A count of the number of times a -Queue-1- frames
                transmission occurs. Increment the counter by one for
                each frame transmitted which is an output of -Queue-1-.
                The -Queue-1- marking matched the REPORT MPCP message
                Queue-1 field, as defined in [802.3ah] clause 64. This
                counter is mandatory for an ONU."                      �"A count of the number of times a -Queue-2- frames
                transmission occurs. Increment the counter by one for
                each frame transmitted which is an output of -Queue-2-.
                The -Queue-2- marking matched the REPORT MPCP message
                Queue-2 field, as defined in [802.3ah] clause 64. This
                counter is mandatory for an ONU."                      �"A count of the number of times a -Queue-3- frames
                transmission occurs. Increment the counter by one for
                each frame transmitted which is an output of -Queue-3-.
                The -Queue-3- marking matched the REPORT MPCP message
                Queue-3 field, as defined in [802.3ah] clause 64.
                This counter is mandatory for an ONU."                      �"A count of the number of times a -Queue-4- frames
                transmission occurs. Increment the counter by one for
                each frame transmitted which is an output of -Queue-4-.
                The -Queue-4- marking matched the REPORT MPCP message
                Queue-4 field, as defined in [802.3ah] clause 64.
                This counter is mandatory for an ONU."                      �"A count of the number of times a -Queue-5- frames
                transmission occurs. Increment the counter by one for
                each frame transmitted which is an output of -Queue-5-.
                The -Queue-5- marking matched the REPORT MPCP message
                Queue-5 field, as defined in [802.3ah] clause 64.
                This counter is mandatory for an ONU."                      �"A count of the number of times a -Queue-6- frames
                transmission occurs. Increment the counter by one for
                each frame transmitted which is an output of -Queue-6-.
                The -Queue-6- marking matched the REPORT MPCP message
                Queue-6 field, as defined in [802.3ah] clause 64.
                This counter is mandatory for an ONU."                      �"A count of the number of times a -Queue-7- frames
                transmission occurs. Increment the counter by one for
                each frame transmitted which is an output of -Queue-7-.
                The -Queue-7- marking matched the REPORT MPCP message
                Queue-7 field, as defined in [802.3ah] clause 64.
                This counter is mandatory for an ONU."                      "A count of the number of times a -Queue-0- frames
                reception occurs. A single counter at the ONU and a set
                of counters, one for each LLID, at the OLT. Increment
                the counter by one for each frame received for each
                LLID, which is an output of -Queue-0-. The -Queue-0-
                marking matched the REPORT MPCP message Queue-0 field,
                as defined in [802.3ah] clause 64.
                This counter is mandatory for an ONU and an OLT."                      "A count of the number of times a -Queue-1- frames
                reception occurs. A single counter at the ONU and a set
                of counters, one for each LLID, at the OLT. Increment
                the counter by one for each frame received for each
                LLID, which is an output of -Queue-1-. The -Queue-1-
                marking matched the REPORT MPCP message Queue-1 field,
                as defined in [802.3ah] clause 64.
                This counter is mandatory for an ONU and an OLT."                      "A count of the number of times a -Queue-2- frames
                reception occurs. A single counter at the ONU and a set
                of counters, one for each LLID, at the OLT. Increment
                the counter by one for each frame received for each
                LLID, which is an output of -Queue-2-. The -Queue-2-
                marking matched the REPORT MPCP message Queue-2 field,
                as defined in [802.3ah] clause 64.
                This counter is mandatory for an ONU and an OLT."                      "A count of the number of times a -Queue-3- frames
                reception occurs. A single counter at the ONU and a set
                of counters, one for each LLID, at the OLT. Increment
                the counter by one for each frame received for each
                LLID, which is an output of -Queue-3-. The -Queue-3-
                marking matched the REPORT MPCP message Queue-3 field,
                as defined in [802.3ah] clause 64.
                This counter is mandatory for an ONU and an OLT."                      "A count of the number of times a -Queue-4- frames
                reception occurs. A single counter at the ONU and a set
                of counters, one for each LLID, at the OLT. Increment
                the counter by one for each frame received for each
                LLID, which is an output of -Queue-4-. The -Queue-4-
                marking matched the REPORT MPCP message Queue-4 field,
                as defined in [802.3ah] clause 64.
                This counter is mandatory for an ONU and an OLT."                      "A count of the number of times a -Queue-5- frames
                reception occurs. A single counter at the ONU and a set
                of counters, one for each LLID, at the OLT. Increment
                the counter by one for each frame received for each
                LLID, which is an output of -Queue-5-. The -Queue-5-
                marking matched the REPORT MPCP message Queue-5 field,
                as defined in [802.3ah] clause 64.
                This counter is mandatory for an ONU and an OLT."                      "A count of the number of times a -Queue-6- frames
                reception occurs. A single counter at the ONU and a set
                of counters, one for each LLID, at the OLT. Increment
                the counter by one for each frame received for each
                LLID, which is an output of -Queue-6-. The -Queue-6-
                marking matched the REPORT MPCP message Queue-6 field,
                as defined in [802.3ah] clause 64.
                This counter is mandatory for an ONU and an OLT."                      "A count of the number of times a -Queue-7- frames
                reception occurs. A single counter at the ONU and a set
                of counters, one for each LLID, at the OLT. Increment
                the counter by one for each frame received for each
                LLID, which is an output of -Queue-7-. The -Queue-7-
                marking matched the REPORT MPCP message Queue-7 field,
                as defined in [802.3ah] clause 64.
                This counter is mandatory for an ONU and an OLT."                      h"A count of the number of times a -Queue-0- frames drops
                occurs. Increment the counter by one for each frame
                dropped from -Queue-0-. The -Queue-0- marking matched
                the REPORT MPCP message Queue-0 field, as defined in
                [802.3ah] clause 64.
                This counter is mandatory for an ONU."                      h"A count of the number of times a -Queue-1- frames drops
                occurs. Increment the counter by one for each frame
                dropped from -Queue-1-. The -Queue-1- marking matched
                the REPORT MPCP message Queue-1 field, as defined in
                [802.3ah] clause 64.
                This counter is mandatory for an ONU."                      h"A count of the number of times a -Queue-2- frames drops
                occurs. Increment the counter by one for each frame
                dropped from -Queue-2-. The -Queue-2- marking matched
                the REPORT MPCP message Queue-2 field, as defined in
                [802.3ah] clause 64.
                This counter is mandatory for an ONU."                      h"A count of the number of times a -Queue-3- frames drops
                occurs. Increment the counter by one for each frame
                dropped from -Queue-3-. The -Queue-3- marking matched
                the REPORT MPCP message Queue-3 field, as defined in
                [802.3ah] clause 64.
                This counter is mandatory for an ONU."                      h"A count of the number of times a -Queue-4- frames drops
                occurs. Increment the counter by one for each frame
                dropped from -Queue-4-. The -Queue-4- marking matched
                the REPORT MPCP message Queue-4 field, as defined in
                [802.3ah] clause 64.
                This counter is mandatory for an ONU."                      h"A count of the number of times a -Queue-5- frames drops
                occurs. Increment the counter by one for each frame
                dropped from -Queue-5-. The -Queue-5- marking matched
                the REPORT MPCP message Queue-5 field, as defined in
                [802.3ah] clause 64.
                This counter is mandatory for an ONU."                      h"A count of the number of times a -Queue-6- frames drops
                occurs. Increment the counter by one for each frame
                dropped from -Queue-6-. The -Queue-6- marking matched
                the REPORT MPCP message Queue-6 field, as defined in
                [802.3ah] clause 64.
                This counter is mandatory for an ONU."                      h"A count of the number of times a -Queue-7- frames drops
                occurs. Increment the counter by one for each frame
                dropped from -Queue-7-. The -Queue-7- marking matched
                the REPORT MPCP message Queue-7 field, as defined in
                [802.3ah] clause 64.
                This counter is mandatory for an ONU."                           |"This table defines the Event Objects for EPON devices.
                The attributes are relevant for an OLT and an ONU."                       M"Table entries for Table of Event objects for EPON
                devices."                      ?"The minimum Frequency of events this system will accept.
                A system may use the larger values of this minimum to
                lessen the impact of constant sampling. For larger
                sampling intervals the system samples less often and
                suffers less overhead.
                Unless explicitly resource limited, a system's value for
                this object SHOULD be 1, allowing as small as a 1 second
                interval for ongoing trigger sampling.
                Writing of the value can be done all the time."                      6"A read-only variable, which defines the state of the
                Dying Gasp indication of the OAM alarm indications as
                described in the [802.3ah] clause 57. When true the
                device has a dying gasp alarm asserted. When false the
                dying gasp alarm is reset "                       �"A control to allow DyingGaspAlarm event to be used.
                When the value is true the event is sampled. When the
                value is false the event is not sampled.
                Writing can be done all the time."                      6"A read-only variable, which defines the state of the
                Critical Event indication of the OAM alarm indications
                as described in the [802.3ah] clause 57. When true the
                device has a Critical Event asserted. When false the
                Critical Event is reset."                       �"A control to allow CriticalEvent event to be used. When
                the value is true the event is sampled. When the value
                is false the event is not sampled.
                Writing can be done all the time."                      H"A read-only variable, which defines the state of the
                Local Link Fault indication of the OAM alarm indications
                as described in the [802.3ah] clause 57. When true the
                device has a Local Link Fault alarm asserted. When
                false the Local Link Fault alarm is reset."                       �"A control to allow LocalLinkFaultAlarm event to be used.
                When the value is true the event is sampled. When the
                value is false the event is not sampled.
                Writing can be done all the time."                      �"A read-only variable, which defines the state of the
                Temperature Event indication of an EPON device. When
                condition of box temperature is above the threshold
                defined the alarm is asserted. When the condition is
                below that threshold the alarm is de-asserted. When true
                the device has a Temperature Event Indication asserted.
                When false the Temperature Event Indication is reset."                       �"A control to allow TemperatureEventIndication event to
                be used. When the value is true the event is sampled.
                When the value is false the event is not sampled.
                Writing can be done all the time."                      �"A read-only variable, which defines the state of the
                Power/Voltage Event Indication of an EPON device. When
                condition of box Power/voltage is above the threshold
                defined the alarm is asserted. When the condition is
                below that threshold the alarm is de-asserted. When true
                the device has a Power/Voltage Event Indication
                asserted. When false the Power/Voltage Event Indication
                is reset. "                       �"A control to allow PowerVoltageEventIndication event to
                be used. When the value is true the event is sampled.
                When the value is false the event is not sampled.
                Writing can be done all the time."                      �"A read-only variable, which defines the state of the
                Global Event indication of an EPON device. When the
                indication of the event input occurs the event is
                asserted. When the input is removed that event is
                de-asserted. When true the device has a Global Event
                asserted. When false the Global Event Indication is
                reset."                       �"A control to allow GlobalEvent event to be used. When
                the value is true the event is sampled. When the value
                is false the event is not sampled. Writing can be done
                all the time."                      w"A read-only variable, which defines the state of the
                Errored Symbol Period Event indication of the OAM alarm
                TLV indications as described in the [802.3ah]
                clause 57.5.3. When true the device has an Errored
                Symbol Period Event asserted. When false the Errored
                Symbol Period Event is reset."                       �"A control to allow ErroredSymbolPeriodEvent event to be
                used. When the value is true the event is sampled. When
                the value is false the event is not sampled. Writing can
                be done all the time."                      N"A read-only variable, which defines the state of the
                Errored Frame Event indication of the OAM alarm TLV
                indications as described in the [802.3ah] clause 57.5.3.
                When true the device has an Errored Frame Event
                asserted. When false the Errored Frame Event is reset."                       �"A control to allow ErroredFrameEvent event to be used.
                When the value is true the event is sampled. When the
                value is false the event is not sampled.
                Writing can be done all the time."                      t"A read-only variable, which defines the state of the
                Errored Frame Period Event indication of the OAM alarm
                TLV indications as described in the [802.3ah] clause
                57.5.3. When true the device has an Errored Frame Period
                Event asserted. When false the Errored Frame Period
                Event is reset."                       �"A control to allow ErroredFramePeriodEvent event to be
                used. When the value is true the event is sampled. When
                the value is false the event is not sampled. Writing can
                be done all the time."                      �"A read-only variable, which defines the state of the
                Errored Frame Seconds Summary Event indication of the
                OAM alarm TLV indications as described in the [802.3ah]
                clause 57.5.3. When true the device has an Errored Frame
                Seconds Summary Event asserted. When false the Errored
                Frame Seconds Summary Event is reset."                       �"A control to allow ErroredFrameSecondsSummaryEvent event
                to be used. When the value is true the event is sampled.
                When the value is false the event is not sampled.
                Writing can be done all the time."                      w"A read-only variable, which defines the state of the
                Organization Specific Event indication of the OAM alarm
                TLV indications as described in the [802.3ah] clause
                57.5.3. When true the device has an Organization
                Specific Event asserted. When false the Organization
                Specific Event is reset."                       �"A control to allow OrganizationSpecificEvent event to be
                used. When the value is true the event is sampled. When
                the value is false the event is not sampled.
                Writing can be done all the time."                      �"Indicates and controls the resetting of the Event log.
                Setting this object to none(1) has no action resetLog(2)
                empties the event log. All data is deleted. Setting it
                to useDefaultReporting(3) returns all event priorities
                to their factory-default reporting. Reading this object
                always returns useDefaultReporting(3)."                      1"A table of objects provides a log of notification based
                on the event as pointed to by entries in those tables.
                The intent is a MAC level event log (set of events to
                when they happened).
                This attribute is relevant for an OLT and an ONU."                       �"A group of Events. Applications create and delete
                entries using h3cEponDeviceEventsEntryStatus. When adding
                objects to a notification they are added in the lexical
                order of their index in this table."                       Z"A locally-unique, administratively assigned name for a
                group of Events."                       "An arbitrary integer for the purpose of identifying
                individual Events within a h3cEponDeviceEventsLogName
                group. Events within a group are placed in the
                notification in the numerical order of this index."                       �"The object identifier of a MIB module object to add to a
                Notification that results from the event.
                Writing can be done all the time."                       %"The time that an entry was created."                       �"If multiple events are reported via the same entry, the
                time that the last event for this entry occurred,
                otherwise this should have the same value as
                h3cEponDeviceEventsLogFirstTime."                       �"The number of consecutive event instances reported by
                this entry. This starts at 1 with the creation of this
                row and increments by 1 for each subsequent duplicate
                event."                      �"A list of types for Events. Events are ordered according
                to their significance where 1 is the highest severity.
                h3cEponDeviceDyingGaspAlarmState(1) indicates a Dying Gasp
                 Alarm State,
                h3cEponDeviceCriticalEventState(2) indicates a Critical
                 Event State,
                h3cEponDeviceLocalLinkFaultAlarmState(3) indicates a Local
                 Link Fault Alarm State,
                h3cEponDeviceTemperatureEventIndicationState(4) indicates a
                 Temperature Event Indication State,
                h3cEponDevicePowerVoltageEventIndicationState(5) indicates
                 a Power Voltage Event Indication State,
                h3cEponDeviceGlobalEventState(6) indicates a Global Event
                 State,
                h3cEponDeviceErroredSymbolPeriodEventState(7) indicates an
                 Errored Symbol Period Event State,
                h3cEponDeviceErroredFrameEventState(8) indicates an Errored
                 Frame Event State,
                h3cEponDeviceErroredFramePeriodEventState(9) indicates an
                 Errored Frame Period Event State,
                h3cEponDeviceErroredFrameSecondsSummaryEventState(10)
                 indicates an Errored Frame Seconds Summary Event State,
                h3cEponDeviceOrganizationSpecificEventState(11) indicates
                 an Organization Specific Event State. "                       �"The control that allows creation and deletion of
                entries. Once made active an entry MAY not be modified
                except to delete it."                               O"A collection of objects of h3cEponDevice control
                definition."                 ]"A collection of objects of h3cEponDevice remote Mac address
                to LLID table."                 3"A collection of objects of EPON device Statistics"                 0"A collection of objects for EPON device Events"                 4"A collection of objects for EPON device Events log"                     ,"The compliance statement for EPON Devices."   �" This group is mandatory for all
                              OLT EPON devices supporting LLID-MAC
                              address table." t"This group is mandatory for all EPON devices
                    supporting interfaces for Statistics collection." o"This group is mandatory for all EPON devices
                    supporting interfaces for event collection." s"This group is mandatory for all EPON devices
                    supporting interfaces for event log collection."                