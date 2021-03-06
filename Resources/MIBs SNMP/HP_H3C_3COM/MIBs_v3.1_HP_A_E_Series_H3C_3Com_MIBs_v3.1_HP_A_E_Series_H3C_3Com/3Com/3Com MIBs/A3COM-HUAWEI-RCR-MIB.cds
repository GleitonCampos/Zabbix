�-- =================================================================
-- Copyright (C) 2002 by HUAWEI 3COM TECHNOLOGIES.  All rights reserved.
--
-- Description: H3C Resilient Controllable Routing MIB
-- Reference:
-- Version: V1.1
-- History:
--   V1.0 2005-04-06 created by ZhangQiang
--     Initial version
--   V1.1 2005-06-28 modified by TanZhi and DaiRuiqiang
--     Rewrite the whole MIB
-- =================================================================
        �"This MIB is applicable to router-devices. It's made for RCR
            (Resilient Controllable Routing).
            RCR provides an effective resolution which can dynamically auto-adjust
            outbound traffic to the optimal external interface by monitoring the 
            performance and traffic load of each external interface. It provides 
            the functions of intelligentized traffic load distribution and the optimal external interface
            selection. This can optimally utilize the external interfaces. Furthermore,
            RCR realized the function which can select the optimal external interface
            based on different classes of operation flow." �"Platform Team Huawei 3Com Technologies Co., Ltd.
            Hai-Dian District Beijing P.R. China
            http://www.huawei-3com.com
            Zip:100085
            " "200506281936Z" B"The modified revision of this MIB module. Rewrite the whole MIB."       -- June 28, 2005 at 19:36 GMT
               {"The max used band rate of all external interfaces on member
            router-devices(MRs) which are controlled by RCR."                       d"The min used band rate of all external interfaces on MRs
            which are controlled by RCR."                       e"The persistent time of a probe on member router-device(MR) which is
            controlled by RCR."                       ["This table contains state information of each MR
            which is controlled by RCR."                       "Entry items"                       ,"The name of MR which is controlled by RCR."                      �"The state of MR where identified on the controller
            router-device(CR).
            down: The MR has been enabled but has not connected
                  to the CR with TCP connection.
            up: The MR has already successfully connected to
                the CR but has not been ready for adjusting
                route.
            controlled: The MR has already passed the
                        consultation with the CR and could
                        be controlled by it."                       D"The authentication type of communication packet between CR and MR."                       �"The authentication password of communication packet between CR
            and MR.
            Reading this object always results in an OCTET STRING of length zero;
            authentication may not be bypassed by reading the MIB object."                       g"This table contains the external interface states of each MR
            which is controlled by RCR."                       "Entry items"                       ,"The name of external interface on each MR."                       -"The state of external interface on each MR."                       9"The max spendable bandwidth rate on external interface."                       9"The min spendable bandwidth rate on external interface."                       0"The used bandwidth rate on external interface."                              �"The state of the CR which is controlled
            by RCR.
            down: The CR has been enabled but has not
                  started a TCP connection server.
            init: The CR has started a TCP connection
                  server and has been waiting for MR
                  connection, but has not been ready for adjusting route.
            active: The CR is ready for adjusting route."                       2"The communication port number between CR and MR."                      �"The observe mode or control mode is configured to operate in the CR.
             observe: The CR monitors prefixes and external interfaces based on default
                      and user-defined policies and then reports the status of
                      the network and the decisions that should be made but does
                      not implement any changes.
             controlled: The CR monitors prefixes and external interfaces based on default
                         and user-defined policies and then reports the status
                         of the network and the decisions that should be made
                         and implement any changes."                      �"The algorithm used to choose an alternative external interface for a prefix.
             good: The first external interface that conforms to the policy is selected as
                   the new external interface.
             best: Information is collected from all external interfaces and the best one
                   is selected even though the best external interface may not be in-policy."                       n"The interval time of the transmission of the keepalive communication
             packet between CR and MR."                      "The chosen policy mode which decides to change what prefix.
            prefix: An RCR policy is designed to select IP prefixes or to
                     select RCR learn policies using a match clause and then to
                     apply RCR policy configurations using a set clause.
            operation: To deside to adjusted prefixes based on operation
                        which user configured.
            study: To learn and optimize prefixes based on the highest
                    throughput or the highest delay."                      "The mode of collecting prefix in studying configuration mode.
            It's to collect either the prefix of max thoughtout or the prefix
            of max delay time. It doesn't have a value when CR isn't in studying
            configuration mode."                       E"The max number of collecting prefix in studying configuration mode."                       ="The mask length of collecting prefix in configuration mode."                       b"This table contains objects to get statistic information
            of interfaces on a device."                       "Entry items"                       5"The ID of RCR policy which the user has configured."                       ["The matched IP prefix list name of RCR policy which the user has
            configured."                       h"Whether the RCR policy which the user has configured is matched
            for studying prefix mode."                       ]"The matched operation policy name of RCR policy which the user
            has configured."                       \"The matched acl number of RCR operation policy which the user
            has configured."                       n"The absolute maximum delay time. The range of values that can be
            configured is from 1 to 10000."                       :"The packet loss percent of prefix which the CR concerns."                       N"This table contains the matched prefix performance
            information."                       "Entry items"                       e"The destination IP addresses type of matched prefix which the CR
            wants (IPv4 or IPv6)."                       B"The destination IP address of matched prefix which the CR wants."                       ["The destination IP address mask length of matched prefix which
            the CR wants."                       U"The absolute maximum delay time of prefix which the CR has
            configured."                       @"The packet loss percent of prefix which the CR has configured."                       5"The bandwidth of prefix which the CR has monitored."                       f"This table contains objects to get adjusted prefix information
            which the CR controlled."                       "Entry items"                       ]"The IP address type of the adjusted prefix which CR controlled
            (IPv4 or IPv6)."                       <"The IP address of the adjusted prefix which CR controlled."                       U"The IP address mask length of the adjusted prefix which CR
            controlled."                       T"The name of the MR which the previous outbound traffic
            flows through."                       n"The name of the external interface on the MR which the previous
            outbound traffic flows through."                       F"The name of the MR which the current outbound traffic flows through."                       m"The name of the external interface on the MR which the current outbound
            traffic flows through."                       t"The persisting time from the time which the adjusted outbound
            traffic has been adjusted by CR to now."                       -"The time which the adjusted prefix remains."                              