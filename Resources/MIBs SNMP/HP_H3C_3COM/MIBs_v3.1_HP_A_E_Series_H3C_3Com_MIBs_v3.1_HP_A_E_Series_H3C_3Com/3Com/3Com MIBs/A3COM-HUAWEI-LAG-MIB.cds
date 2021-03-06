~-- =====================================================================
-- Copyright (c) 2004-2010 Hangzhou H3C Tech. Co., Ltd. All rights reserved.
--
-- Description: LACP extend MIB
-- Reference:
-- Version: V1.6
-- History:
--   V1.0 Initial version
--   V1.1 2004-10-12 updated by gaolong
--        Remove OID comments.
--        Change MAX-ACCESS clause value of hwAggLinkNumber to accessible-for-notify
--        because this index object is used when sending notification.
--        Fix a default value error of hwAggResourceAllocationValue.
--   V1.2 2004-10-25 updated by fuzhenyu
--        Change the range of hwAggLinkNumber from (1..256) to (1..728)
--        Change the size of hwAggPortNotAttachedString from (1..50) to (1..255)
--   V1.3 2006-03-05 updated by zhangjian
--        Edit the description of hwAggPortNotAttachedReason.
--        Change value range of hwAggLinkNumber.
--   V1.4 2006-11-15 updated by zhangjian
--        Change MAX-ACCESS clause of hwAggPortIndex to accessible-for-notify.
--        Add hwAggPortInactiveNotification2 and hwAggPortActiveNotification.
--   V1.5 2009-10-09 updated by songjianyong
--        Change value range of hwAggPortNotAttachedReason.
--   V1.6 2010-03-26 updated by songjianyong
--        Change value range of hwAggPortNotAttachedReason.
-- =====================================================================
                                                     "LACP extend MIB." �"Platform Team Hangzhou H3C Tech. Co., Ltd.
             Hai-Dian District Beijing P.R. China
             http://www.h3c.com
             Zip:100085"       "-- October 09, 2003 at 19:42 GMT
           $"A table of aggregate link objects."                       "Entry of table."                       )"The serial number of aggregation group."                       "Aggregation name."                      "Type of aggregation.
             manual: Manual aggregation, no LACP.
             static: Membership specified by user, LACP is
                     used to validate.
             dynamic: Completely dynamic aggregation detected
                      by LACP."                      �"List of ports in this link aggregation group, by bridge port
             number. If the mode of the link aggregation group is manual
             or static, you can update this list to your
             hearts content. However, if the link aggregation group is
             dynamic, then the system will maintain it. You are not
             permitted to set the value of this to
             all zeroes."                       Q"RowStatus, now support three states:
            createAndGo, active, destroy."                       �"A PortList of physical ports that have been
             selected but not attached to this aggregator.
             When the bit is set to 1,it means the
             corresponding port is in the portlist."                       �"PortList of physical ports that have the
             same Actor SystemID and partner systemID as
             this aggregator, but have different actor
             and partner keys of aggregator."                       $"A table of aggregate port objects."                       "Entry of table."                       1"Port ifindex which is according to RFC1213 MIB."                      �"Reason why this port is selected for an
             aggregator but not attached,
             0: The port is attached to this aggregator.
             1: The current number of active ports has
                reached the upper limit.
             2: All aggregation resources are already in-use.
             3: The port's configuration is improper
                for being attached.
             4: The port's partner is improper for being attached.
             5: The number of current active ports
                has not reached the lower limit.
             6: The port's physical state (down) is
                improper for being attached.
             7: The port is not selected for an aggregator.
             8: The port's hardware restriction is
                improper for being attached.
             9: The port's speed is improper for being attached.
             10: The port's duplex mode is improper for being attached."                       '"Control ports' lacp enble or disable."                       s"The string which interprets this
             port is selected for an aggregator
             but not attached."                       �"The priority value calculated to decide which
             aggregations have first call on the load-sharing
             aggregation resources in the hardware. It
             depends on the aggregation's type and total
             speed."                           W"This event will be triggered whenever an
             aggregation changes its speed."                 ^"This event will be triggered whenever any port
             in aggrerator is made inactive."                 ^"This event will be triggered whenever the port
             in aggrerator is made inactive."                 \"This event will be triggered whenever the port
             in aggrerator is made active."                         W"The compliance statement for SNMP entities
             which implement the Lag MIB."                   R"The collection of objects which are used to
             represent LAG objects."                 T"The collection of objects which are used to
             represent notifications."                                