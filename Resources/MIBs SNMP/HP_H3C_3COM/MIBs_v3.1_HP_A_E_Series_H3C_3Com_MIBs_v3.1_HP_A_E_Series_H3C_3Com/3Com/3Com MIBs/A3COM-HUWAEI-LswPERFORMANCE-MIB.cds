Q-- ==================================================================
-- Copyright (C) 2002 by  HUAWEI TECHNOLOGIES. All rights reserved.
--
-- Description: HUAWEI Lan Switch private rmon alarm Information MIB
-- Reference:
-- Version: V2.1
-- History:
--(1) Created by Qizhenglin, 2002.8.15
-- V2.0 2004-10-12 updated by gaolong
--      Import from SNMPv2-SMI instead from RFC-1212
--      Import hwInternetProtocol, rmonExtend instead define them in the MIB.
--      Change ACCESS to MAX-ACCESS.
--      Change value of STATUS from mandatory to current.
--      Remove value range from PriAlarmEntry definition.
--      Adjust text format of the whole file.
-- V2.1 2006-08-09 updated by zhongjiyuan
--      Import trapDestEntry and trapDestIndex from RMON2-MIB.
--      Add two new tables hwrmonEnableTable and hwTrapDestTable.
-- ==================================================================
-- ==================================================================
--
-- Varibles and types be imported
--
-- ==================================================================
                                 " "" R&D BeiJing, Huawei Technologies co.,Ltd.
            Huawei Bld.,NO.3 Xinxi Rd.,
            Shang-Di Information Industry Base,
            Hai-Dian District Beijing P.R. China
            Zip:100085
            Http://www.huawei.com
            E-mail:support@huawei.com " "200303150000Z" *"The initial revision of this MIB module."        -- March 19, 2003 at 16:05 GMT
       "A list of alarm entries."                       �"A list of parameters that set up a periodic checking
                  for alarm conditions.  For example, an instance of the
                  alarmValue object might be named alarmValue.8"                       �"An index that uniquely identifies an entry in the
                  alarm table.  Each such entry defines a
                  diagnostic sample at a particular interval
                  for an object on the device."                      p"The interval in seconds over which the data is
                  sampled and compared with the rising and falling
                  thresholds.  When setting this variable, care
                  should be taken in the case of deltaValue
                  sampling - the interval should be set short enough
                  that the sampled variable is very unlikely to
                  increase or decrease by more than 2^31 - 1 during
                  a single sampling interval.

                  This object may not be modified if the associated
                  alarmStatus object is equal to valid(1)."                      �"The object identifier of the particular variable to be
                  sampled.  Only variables that resolve to an ASN.1 primitive
                  type of INTEGER (INTEGER, Integer32, Counter32, Counter64,
                  Gauge, or TimeTicks) may be sampled.

                  Because SNMP access control is articulated entirely
                  in terms of the contents of MIB views, no access
                  control mechanism exists that can restrict the value of
                  this object to identify only those objects that exist
                  in a particular MIB view.  Because there is thus no
                  acceptable means of restricting the read access that
                  could be obtained through the alarm mechanism, the
                  probe must only grant write access to this object in
                  those views that have read access to all objects on
                  the probe.

                  During a set operation, if the supplied variable name is
                  not available in the selected MIB view, a badValue error
                  must be returned.  If at any time the variable name of
                  an established alarmEntry is no longer available in the
                  selected MIB view, the probe must change the status of
                  this alarmEntry to invalid(4).

                  This object may not be modified if the associated
                  alarmStatus object is equal to valid(1)."                       ""                      "The method of sampling the selected variable and
                  calculating the value to be compared against the
                  thresholds.  If the value of this object is
                  absoluteValue(1), the value of the selected variable
                  will be compared directly with the thresholds at the
                  end of the sampling interval.  If the value of this
                  object is deltaValue(2), the value of the selected
                  variable at the last sample will be subtracted from
                  the current value, and the difference compared with
                  the thresholds.

                  This object may not be modified if the associated
                  alarmStatus object is equal to valid(1)."                      �"The value of the statistic during the last sampling
                  period.  For example, if the sample type is deltaValue,
                  this value will be the difference between the samples
                  at the beginning and end of the period.  If the sample
                  type is absoluteValue, this value will be the sampled
                  value at the end of the period.
                  This is the value that is compared with the rising and
                  falling thresholds.

                  The value during the current sampling period is not
                  made available until the period is completed and will
                  remain available until the next period completes."                      /"The alarm that may be sent when this entry is first
                  set to valid.  If the first sample after this entry
                  becomes valid is greater than or equal to the
                  risingThreshold and alarmStartupAlarm is equal to
                  risingAlarm(1) or risingOrFallingAlarm(3), then a single
                  rising alarm will be generated.  If the first sample
                  after this entry becomes valid is less than or equal
                  to the fallingThreshold and alarmStartupAlarm is equal
                  to fallingAlarm(2) or risingOrFallingAlarm(3), then a
                  single falling alarm will be generated.

                  This object may not be modified if the associated
                  alarmStatus object is equal to valid(1)."                      �"A threshold for the sampled statistic.  When the current
                  sampled value is greater than or equal to this threshold,
                  and the value at the last sampling interval was less than
                  this threshold, a single event will be generated.
                  A single event will also be generated if the first
                  sample after this entry becomes valid is greater than or
                  equal to this threshold and the associated
                  alarmStartupAlarm is equal to risingAlarm(1) or
                  risingOrFallingAlarm(3).

                  After a rising event is generated, another such event
                  will not be generated until the sampled value
                  falls below this threshold and reaches the
                  alarmFallingThreshold.

                  This object may not be modified if the associated
                  alarmStatus object is equal to valid(1)."                      �"A threshold for the sampled statistic.  When the current
                  sampled value is less than or equal to this threshold,
                  and the value at the last sampling interval was greater than
                  this threshold, a single event will be generated.
                  A single event will also be generated if the first
                  sample after this entry becomes valid is less than or
                  equal to this threshold and the associated
                  alarmStartupAlarm is equal to fallingAlarm(2) or
                  risingOrFallingAlarm(3).

                  After a falling event is generated, another such event
                  will not be generated until the sampled value
                  rises above this threshold and reaches the
                  alarmRisingThreshold.

                  This object may not be modified if the associated
                  alarmStatus object is equal to valid(1)."                      �"The index of the eventEntry that is
                  used when a rising threshold is crossed.  The
                  eventEntry identified by a particular value of
                  this index is the same as identified by the same value
                  of the eventIndex object.  If there is no
                  corresponding entry in the eventTable, then
                  no association exists.  In particular, if this value
                  is zero, no associated event will be generated, as
                  zero is not a valid event index.

                  This object may not be modified if the associated
                  alarmStatus object is equal to valid(1)."                      �"The index of the eventEntry that is
                  used when a falling threshold is crossed.  The
                  eventEntry identified by a particular value of
                  this index is the same as identified by the same value
                  of the eventIndex object.  If there is no
                  corresponding entry in the eventTable, then
                  no association exists.  In particular, if this value
                  is zero, no associated event will be generated, as
                  zero is not a valid event index.

                  This object may not be modified if the associated
                  alarmStatus object is equal to valid(1)."                       ""                       ""                       o"The entity that configured this entry and is therefore
                  using the resources assigned to it."                       !"The status of this alarm entry."                        "A list of enable rmon entries."                       6"A list of parameters that set up a hwrmonEnableTable"                       &"Specify an interface to enable rmon."                       &"Specify an interface to enable rmon."                       "Defines the trap destination Extend Table for providing, via SNMP,
                 the capability of configure a trap dest."                       *"Defines an entry in the hwTrapDestTable."                       �"The version for trap destination.
                 This object may not be modified if the associated
                 trapDestStatus object is equal to active(1)."                       ."Definition point for pri RMON notifications."               �"The SNMP trap that is generated when an alarm
                  entry crosses its rising threshold and generates
                  an event that is configured for sending SNMP
                  traps."                 �"The SNMP trap that is generated when an alarm
                  entry crosses its falling threshold and generates
                  an event that is configured for sending SNMP
                  traps."                    