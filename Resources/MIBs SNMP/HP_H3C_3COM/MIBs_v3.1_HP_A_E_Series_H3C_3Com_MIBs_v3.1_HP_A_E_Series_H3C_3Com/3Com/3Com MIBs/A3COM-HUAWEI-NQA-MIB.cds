�-- =================================================================
-- Copyright (C) 2005 by HUAWEI-3COM TECHNOLOGIES. All rights reserved.
--
-- Description:  Extended MIB File(extended from DISMAN-PING-MIB RFC2925)
-- Reference:
-- Version: V2.3
-- History:
-- V1.0  Lv zhenfeng, 2003.08, Initial Version
-- V1.1 2004-10-12 updated by gaolong
--      Import OBJECT-IDENTITY, Integer32, Counter32, Gauge32.
-- V1.2 Add new column objects
--      hwNqaResultsMaxDelaySD
--      hwNqaResultsMaxDelayDS
--      hwNqaResultsLostPacketRatio
--      under hwNqaResultsTable table by zhaoyujin, 20041101
--  Add new column objects
--      hwNqaJitterStatsAvePositivesSD
--      hwNqaJitterStatsAveNegativesSD
--      hwNqaJitterStatsAvePositivesDS
--      hwNqaJitterStatsAveNegativesDS
--      hwNqaJitterStatsPktLossUnknown
--  under hwNqaJitterStatsTable table by zhaoyujin, 20041101
--      revise words errors
-- V1.3 2004-12-25 updated by zhaoyujin and weixinzhe
--      Objects description updated
-- V1.4 2005-12-22 Modified by qiuchunxia and liqian
--      add hwNqaCtlHistoryKeptTime
--      add hwNqaCtlHistoryEnable
--      add hwNqaStatisticsResultsTable
--      add hwNqaGroupStatsJitterTable
--      add hwNqaStatisticsCtlTable
--      add hwNqaStatsMaxGroupNumber
--      remove definition of InetAddress, and import from INET-ADDRESS-MIB
-- V1.5 2006-03-03 Modified by jinyi and wangqingfeng
--      modified the description of hwNqaStatResRttSequenceErrors
--      modified the description of hwNqaResultsRttSequenceErrors
--      modified UNITS of some objects by jinyi
--      add hwNqaCtlICPIFAdvFactor, hwNqaCtlCodecType in hwNqaCtlTable
--      add hwNqaResultsPacketLateArrival in hwNqaResultsTable
--      add hwNqaJitterStatsOperOfICPIF and hwNqaJitterStatsOperOfMOS
--      in hwNqaJitterStatsTable
--      add hwNqaStatResPacketLateArrival in hwNqaStatisticsResultsTable
--      add hwNqaStatJitterMaxOfICPIF, hwNqaStatJitterMinOfICPIF
--      hwNqaStatJitterMaxOfMOS and hwNqaStatJitterMinOfMOS
--      in hwNqaGroupStatsJitterTable
--      rename subidentifier 5 of hwNqaStatisticsCtlEntry to
--      hwNqaCtlLifeTime by wangqingfeng
--      rename subidentifier 11 of hwNqaStatisticsResultsEntry to
--      hwNqaStatResInterval by wangqingfeng
-- V1.6 2006-05-12
--      rewrite this MIB with prefix "hwNqa".
-- V2.0 2006-08-14 Modified by zhangjun
--      change the name of root from "hwDismanPing" to "hwNqa"
--      modify some mistakes
-- V2.1  2006-08-22 Modified by qiuchunxia, dupengfei and shenjuanjuan
--      add hwNqaReactionTable and add hwNqaNotifications
-- V2.2 2007-03-08 Modified by zhouwenming
--      add hwNqaResultsRttSum, hwNqaResultsNumOfDelaySD, hwNqaResultsMinDelaySD,
--       hwNqaResultsSumDelaySD, hwNqaResultsSum2DelaySD, hwNqaResultsNumOfDelayDS,
--       hwNqaResultsMinDelayDS, hwNqaResultsSumDelayDS, hwNqaResultsSum2DelayDS
--       in hwNqaResultsTable
--      add hwNqaStatResRttSum, hwNqaStatResNumOfDelaySD, hwNqaStatResMinDelaySD,
--       hwNqaStatResSumDelaySD, hwNqaStatResSum2DelaySD, hwNqaStatResNumOfDelayDS,
--       hwNqaStatResMinDelayDS, hwNqaStatResSumDelayDS, hwNqaStatResSum2DelayDS,
--       hwNqaStatResMaxDelaySD, hwNqaStatResMaxDelayDS
--       in hwNqaStatisticsResultsTable
--      add jitterOwdSD, jitterOwdDS to hwNqaReactCheckedElement
--       in hwNqaReactionTable.
--      add hwNqaReactCheckedNum, hwNqaReactThresholdNum in hwNqaReactionTable
--      add hwNqaStatisticsReactionTable
-- V2.3 2007-04-25 Modified by zhouxingyue and zhouhaifeng
--      add icmpTimestamp in hwNqaCtlCodecType
--      remove size limit and DEFVAL in definition of hwNqaCtlStatisticsInterval.
--      modify type of below from  Unsigned32 to Gauge32:
--       hwNqaStatResMinRtt, hwNqaStatResMaxRtt,hwNqaStatResAverageRtt,
--       hwNqaStatResInterval, hwNqaStatResLostPacketRatio, hwNqaStatResMinDelaySD,
--       hwNqaStatResMaxDelaySD,hwNqaStatResMinDelayDS, hwNqaStatResMaxDelayDS.
--      modify type of below from  Unsigned32 to Counter32:
--       hwNqaStatResProbeResponses, hwNqaStatResSentProbes, hwNqaStatResRttSumOfSquares,
--       hwNqaStatResRttNumDisconnects, hwNqaStatResRttTimeouts, hwNqaStatResRttBusies,
--       hwNqaStatResRttNoConnections, hwNqaStatResRttDrops, hwNqaStatResRttSequenceErrors,
--       hwNqaStatResRttErrors, hwNqaStatResPacketLateArrival, hwNqaStatResRttSum,
--       hwNqaStatResNumOfDelaySD, hwNqaStatResSumDelaySD, hwNqaStatResSum2DelaySD,
--       hwNqaStatResNumOfDelayDS, hwNqaStatResSumDelayDS, hwNqaStatResSum2DelayDS,
--       hwNqaStatReactCheckedNum, hwNqaStatReactThresholdNum.
--      modify type of below from  Gauge32 to Counter32:
--       hwNqaStatJitterNumOfPosSD, hwNqaStatJitterSumOfPosSD, hwNqaStatJitterSumOfSquarePosSD,
--       hwNqaStatJitterNumOfNegSD, hwNqaStatJitterSumOfNegSD, hwNqaStatJitterSumOfSquareNegSD,
--       hwNqaStatJitterNumOfPosDS, hwNqaStatJitterSumOfPosDS, hwNqaStatJitterSumOfSquarePosDS,
--       hwNqaStatJitterNumOfNegDS, hwNqaStatJitterSumOfNegDS, hwNqaStatJitterSumOfSquareNegDS,
--       hwNqaStatJitterPacketLossSD, hwNqaStatJitterPacketLossDS, hwNqaStatJitterPktLossUnknown.
-- =================================================================
                                                     y"The private mib file includes the test information of the
                device. It is supplementary for rfc2925.txt."8" R&D BeiJing, Huawei Technologies Co., Ltd.
                Huawei Bld.,NO.3 Xinxi Rd.,
                Shang-Di Information Industry Base,
                    Hai-Dian District Beijing P.R. China
                Zip:100085
                Http://www.huawei.com
                E-mail:support@huawei.com "                   �"Version string of this MIB.
        The format will be: 'Version.Release.Patch: Description'
        An instance likes: '1.0.0: Initial NQA MIB'
        "                       �"Defines the NQA Control Extend Table for providing, via SNMP,
        the capability of performing network analysis operations at a
        remote host."                       r"Defines an entry in the hwNqaCtlTable. The operation of this
        table is same as that of pingResultsTable."                       Z"The destination port that may be used by udpEcho,
        tcpConnect and jitter probes."                       �"The source port that may be used by all tests except
        for dns and dlsw.
        If no source port is specified, system will create
        a random port as source port."                       l"Specifies the value to store in the TTL Field in the IP packet used to
        encapsulate the NQA probe."                       �"Time value in milliseconds that is an interval between two continuous
        probes in jitter test.

        This object is only used by jitter test."                       �"Packet number that specifys how many packets will be sent in
        one jitter test.

        This object is only used by jitter test."                       #"Http operation type: get or post."                       �"Http operation string. For example, if the http operation type is get,
        the string will be url, home page and http version."                       "Ftp operation type."                       "Ftp username."                       "Ftp password."                       �"Ftp operation string. If the ftp operation type is get,
        the string must be the file name which will be gotten from ftp server."                       _"VPN name by which system finds route in the specified VPN
        to send NQA probe packets."                       |"To indicate how long the history records will be saved
        in the pingProbeHistoryTable table after the test stopped."                       �"To indicate whether the history should be recorded in the
        PingProbeHistoryTable or not.
            enabled(1)   --history will be recorded
            disabled(2)  --history will not be recorded."                      U"The advantage factor depends on the type of access and how the service
        is to be used. This object will be used while calculating the ICPIF
        (Calculated Planning Impairment Factor) values.

        Suggestion values:

        |-----------------------------------|-------|
        |          Service                  |factor |
        |-----------------------------------|-------|
        |conventional wire-line             |  0    |
        |-----------------------------------|-------|
        |mobility within Building           |  5    |
        |-----------------------------------|-------|
        |mobility within geographical area  |  10   |
        |-----------------------------------|-------|
        |access to hard-to-reach location   |  20   |
        |-----------------------------------|-------|
        "                       q"To indicate the codec type to be used with jitter probe. This is
        applicable only for the jitter probe."                      "Defines the NQA Results Extend Table for providing
        the capability of performing NQA operations at a remote
        host. The results of these operations are stored in the
        hwNqaResultsTable. The operation of this table is same
        as that of pingResultsTable."                       B"The operation of this table is same as that of pingResultsTable."                       �"The number of times that a NQA probe failed because
        the destination became disconnected.

        For connectionless protocol pingCtlTypes, this number should be
        zero."                       S"The number of times that a NQA probe failed because the
        probe timed out."                       �"The number of times that a NQA probe failed because all
        NQA tasks have been running.

        If a new probe fails to start, the value of this object
        is incremented. The next test will not start until the
        next Frequency."                       �"The number of times that a NQA probe failed because the probe
        destination is unavailable.

        For connectionless protocol pingCtlTypes, this number should be
        zero."                       {"The number of times that a NQA operation failed to initiated
        for unavailibility of necessary internal resources."                       0"The number of packets arrived out of sequence."                       ""The number of some other errors."                      "The maximal delay from source device to destination device.
         Currently this value is only used for jitter test, and this
         value must be 0 in other type test. In jitter test, if
         destination system time is not valid, the SD delay may be set 0."                      
"The maximal delay from destination device to source device.
         Currently this value is only used for jitter test, and this
         value is 0 in other type test. In jitter test, if destination
         system time is not valid, the DS delay may be set 0."                       �"The value of this object reflects the drop rate of NQA test.
         For example, this value is 30 that means source device only
         had received 70% packets of total sent packets."                       g"The value of this object indicates the number of the packets that
        arrived after the timeout."                       "The sum of round trip time."                       Y"The number of delay from source to destination that are
        successfully measured."                       >"The minimum of all one way times from source to destination."                       6"The sum of one way times from source to destination."                       B"The sum of squares of one way times from source to  destination."                       Y"The number of delay from destination to source that are
        successfully measured."                       >"The minimum of all one way times from destination to source."                       6"The sum of one way times from destination to source."                       A"The sum of squares of one way times from destination to source."                       ."Statistics table for latest jitter activity."                       �"An entry contains the statistics for the latest jitter activity.
        This entry is created only if the pingCtlType is hwNqajitter."                       p"The number of received destination device responses with which
        jitter test can reach round-trip time."                       z"The value of time that records the minimal positive jitter value from
        source to destination in the jitter test."                       z"The value of time that records the maximal positive jitter value from
        source to destination in the jitter test."                       �"The number that records positive jitter times from source to
        destination in the jitter test.
        The total number of the value of all positive jitters in packets
        sent from source to destination."                       z"The value of time that records the sum of positive jitter values from
        source to destination in the jitter test."                       �"The value of time that records the sum of square of positive jitter
        values from source to destination in the jitter test."                       �"The value of time that records the minimal absolute values of
        negative jitter value from source to destination in the jitter test."                       �"The value of time that records the maximal absolute values of negative
        jitter value from source to destination in the jitter test."                       �"The number that records negative jitter times from source to
        destination in the jitter test.
        The total number of all negative jitter values in packets
        sent from source to destination."                       �"The value of time that records the sum of negative jitter values from
        source to destination in the jitter test.
        The total number of the value of all negative jitters in packets
        sent from source to destination."                       �"The value of time that records the sum of square of negative jitter
        values from source to destination in the jitter test."                       z"The value of time that records the minimal positive jitter value from
        destination to source in the jitter test."                       z"The value of time that records the maximal positive jitter value from
        destination to source in the jitter test."                       g"The number that records positive jitter times from destination to
        source in the jitter test."                       z"The value of time that records the sum of positive jitter values from
        destination to source in the jitter test."                       �"The value of time that records the sum of square of positive jitter
        values from destination to source in the jitter test."                       �"The value of time that records the minimal absolute values of negative
        jitter value from destination to source in the jitter test."                       �"The value of time that records the maximal absolute values of negative
        jitter value from destination to source in the jitter test."                       g"The number that records negative jitter times from destination to source
        in the jitter test."                       z"The value of time that records the sum of negative jitter values from
        destination to source in the jitter test."                       �"The value of time that records the sum of square of negative jitter
        values from destination to source in the jitter test."                       :"The lost packets number sent from source to destination."                       :"The lost packets number sent from destination to source."                       g"The value of time that records the average positive jitter value
        from source to destination."                       g"The value of time that records the average negative jitter value
        from source to destination."                       g"The value of time that records the average positive jitter value
        from destination to source."                       g"The value of time that records the average negative jitter value
        from destination to source."                       :"The number of packets which is lost with unknown reason."                       ^"The ICPIF (Calculated Planning Impairment Factor) value for the latest
        jitter test."                       @"The MOS (Mean Opinion Score) value for the latest jitter test."                       "Enable NQA agent function."                       Y"A table which contains the status of NQA tcp server
        configuration information."                       �"A table which contains the status of NQA tcp server
        configuration information.

        This entry includes not only the tcp server ip address
        but also the tcp server port."                       "Tcp server's ip address."                       "Tcp server's port number."                       b"hwNqaTcpServerIpAddress and hwNqaTcpServerPort
        must be set during a creation operation." 
"RFC 2579"                     5"Status of NQA udp server configuration information."                       c"This entry includes not only the udp server ip address
        but also the udp server udp port."                       "Udp server's ip address."                       "Udp server's port number."                       b"hwNqaUdpServerIpAddress and hwNqaUdpServerPort
        must be set during a creation operation." 
"RFC 2579"                     "Enable NQA server function."                       �"The maximum number saved per group. The maximum value of
        hwNqaCtlStatisticsGroupNumber can not exceed the value of
        this object."                      "Defines the NQA statistics control table for providing, via SNMP,
        the capability of performing NQA operations at a remote host.
        The results of these operations are stored in the
        hwNqaStatisticsResultsTable and the hwNqaGroupStatsJitterTable."                       �"Defines an entry in the hwNqaStatisticsCtlTable.
        The hwNqaStatisticsCtlTable has the same index as the
        pingCtlTable in order for a hwNqaStatisticsCtlTable to
        correspond to the pingCtlEntry."                       s"Statistic information will be calculated after the time that is
        the value of hwNqaCtlStatisticsInterval."                       �"The value of this object indicates the number of group saved.
        The length of this object is from 1 to hwNqaStatsMaxGroupNumber."                       ]"To indicate how long the statistic information will be saved after
        the test stops."                       3"Time at which the type-specified test will start."                       9"To indicate how long the type-specified test will last."                      �"Defines the NQA statistics results table for providing
        the capability of performing NQA operations at a remote
        host. The statistics results of these operations in a statistic cycle
        are stored in the hwNqaStatisticsResultsTable. The statistic cycle is
        the value of hwNqaCtlStatisticsInterval.
        The first two index identify the pingCtlEntry that the probe statistics
        result (HwNqaStatisticsResultsEntry) belongs to."                      "Defines an entry in the hwNqaStatisticsResultsTable. The
        hwNqaStatisticsResultsTable has the same index as the
        pingCtlTable in order for a hwNqaStatisticsResultsEntry to
        correspond to the pingCtlEntry that caused it to be created."                      :"An entry in this table is created when the statistics
        result of a NQA probe is determined.

        An implementation MUST start assigning
        hwNqaStatResIndex values at 1 and wrap after
        exceeding the maximum possible value as defined by
        the limit of this object ('ffffffff'h)."                       }"This object indicates the type of address stored
        in the corresponding hwNqaStatResIpTargetAddress
        object."                       z"This object represent the host address to be used at a remote host for
        performing a network analysis operation."                       �"The minimum NQA probe round-trip-time (RTT) received. The value
        of 0 for this object implies that no RTT has been received."                       �"The maximum NQA probe round-trip-time (RTT) received. The value
        of 0 for this object implies that no RTT has been received."                       ."The average NQA probe round-trip-time (RTT)."                       �"The number of responses received. The value of this object
        MUST be reported as 0 when no probe responses have been
        received."                       �"The value of this object reflects the number of probes sent.
        The value of this object MUST be reported as 0 when no probes
        have been sent."                       �"This object contains the sum of the squares for all NQA
        responses received. The value of this object MUST
        be reported as 0 when no NQA responses have been
        received."                       7"This object contains the start time of the statistic."                       C"This object contains the interval between two times of statistic."                       �"The number of times that a NQA probe failed because the destination
        became disconnected.
        For connectionless protocol pingCtlTypes, this number should be
        zero."                       F"The number of times that a probe failed because the probe timed out."                       Y"The number of times that a NQA probe failed because
        errors related to sockets."                       �"The number of times that a NQA probe failed because the
        probe destination is unavailable.
        For connectionless protocol pingCtlTypes, this number should be
        zero."                       z"The number of times that a NQA operation failed to initiate
        for unavailibility of necessary internal resources."                       0"The number of packets arrived out of sequence."                       "The number of other errors."                       �"The value of this object reflects the drop rate of NQA
        test packet.
        For example, if the value is 30, that means source device
        only had received 70 percent packets of total sent packets."                       f"The value of this object reflects the number of the packets that
        arrived after the timeout."                       �"This object contains the sum of the squares for all NQA
        responses received during the test lifetime. The value of this object
        MUST be reported as 0 when no NQA responses have been received."                       a"The number of one way times from source to destination that are
        successfully measured."                       7"The minimum one way times from source to destination."                       7"The maximum one way times from source to destination."                       6"The sum of one way times from source to destination."                       A"The sum of squares of one way times from source to destination."                       a"The number of one way times from destination to source that are
        successfully measured."                       7"The minimum one way times from destination to source."                       7"The maximum one way times from destination to source."                       6"The sum of one way times from destination to source."                       A"The sum of squares of one way times from destination to source."                      "Test Group Statistic table for jitter activity in a statistic cycle.
        The statistic cycle is the value of hwNqaCtlStatisticsInterval.
        The first two index identify the pingCtlEntry that a probe statistics
        result (HwNqaStatisticsResultsEntry) belongs to."                       �"An entry contains the group statistic information for jitter activity.
        This entry is created only if the pingCtlType is hwNqajitter."                      H"An entry in this table is created when the statistic
        result of a NQA probe in a statistic cycle is determined.

        An implementation MUST start assigning hwNqaStatJitterIndex
        values at 1 and wrap after exceeding the maximum possible
        value as defined by the limit of this object ('ffffffff'h)."                       v"The value of time that records the minimal positive jitter value
        from source to destination in jitter test."                       z"The value of time that records the maximal positive jitter value
        from source to destination in the jitter test."                       �"The number that records positive jitter times from source to
        destination in the jitter test.
        The total number of all positive jitter values in packets sent
        from source to destination."                       z"The value of time that records the sum of positive jitter values
        from source to destination in the jitter test."                       �"The value of time that records the sum of square of positive jitter
        values from source to destination in the jitter test."                       �"The value of time that records the minimal absolute values of
        negative jitter value from source to destination in the jitter test."                       �"The value of time that records the maximal absolute values of negative
        jitter value from source to destination in the jitter test."                       �"The number that records negative jitter times from source to
        destination in the jitter test.
        The total number of all negative jitter values sent from source to
        destination."                       z"The value of time that records the sum of negative jitter values
        from source to destination in the jitter test."                       �"The value of time that records the sum of square of negative jitter
        values from source to destination in the jitter test."                       z"The value of time that records the minimal positive jitter value
        from destination to source in the jitter test."                       z"The value of time that records the maximal positive jitter value
        from destination to source in the jitter test."                       g"The number that records positive jitter times from destination to
        source in the jitter test."                       z"The value of time that records the sum of positive jitter values
        from destination to source in the jitter test."                       "The value of time that records the sum of square of positive jitter
        values destination to source in the jitter test."                       �"The value of time that records the minimal absolute values of negative
        jitter value from destination to source in the jitter test."                       �"The value of time that records the maximal absolute values of negative
        jitter value from destination to source in the jitter test."                       g"The number that records negative jitter times from destination to
        source in the jitter test."                       z"The value of time that records the sum of negative jitter values
        from destination to source in the jitter test."                       �"The value of time that records the sum of square of negative jitter
        values from destination to source in the jitter test."                       :"The lost packets number sent from source to destination."                       :"The lost packets number sent from destination to source."                       g"The value of time that records the average positive jitter value
        from source to destination."                       g"The value of time that records the average negative jitter value
        from source to destination."                       g"The value of time that records the average positive jitter value
        from destination to source."                       g"The value of time that records the average negative jitter value
        from destination to source."                       :"The number of packets which is lost with unknown reason."                       G"The maximum of all ICPIF values in a statistic cycle for jitter test."                       G"The minimum of all ICPIF values in a statistic cycle for jitter test."                       E"The maximum of all MOS values in a statistic cycle for jitter test."                       E"The minimum of all MOS values in a statistic cycle for jitter test."                       �"A table of NQA test monitoring notification and
        reaction configuration definitions.

        An entry is removed from this table when its
        corresponding pingCtlEntry is deleted."                       �"Defines an entry in the hwNqaReactionTable.The first two index
        elements identify the pingCtlEntry that a hwNqaReactItemIndex
        belongs to. The third index element selects a single reaction."                       �"The first index of hwNqaReactionTable, it is the same as
        pingCtlOwnerIndex in pingCtlTable. hwNqaReactOwnerIndex and
        hwNqaReactTestName identify an existed test."                       �"The second index of hwNqaReactionTable, it is the same as
        pingCtlTestName in pingCtlTable. hwNqaReactOwnerIndex and
        hwNqaReactTestName identify an existed test."                       y"The third index of hwNqaReactionTable, it definitely
        identifies one of the reaction configurations for a test."                      �"A list of reaction condition type.
        'probetime' and 'probefailure' are valid when pingCtlType of
        the test is not hwNqajitter.

        'jitterOwdSD': one way time from source to destination in
                       jitter test.
        'jitterOwdDS': one way time from destination to source in
                       jitter test.

        'jitterrtt', 'jitterpacketloss', 'jittersd', 'jitterds',
        'jitterOwdSD' and 'jitterOwdDS' are valid when pingCtlType
        of the test is hwNqajitter.

        'icpif' and 'mos' are valid when pingCtlType of the test is
        hwNqajitter and hwNqaCtlCodecType is 'g711Alaw' or 'g711Ulaw'
        or 'g729A'."                       �"This object defines an administrative upper-threshold value for
        hwNqaReactCheckedElement.

        The value of this object is zero if hwNqaReactCheckedElement is
        specified as 'jitterpacketloss' and 'probefailure'."                      t"This object defines an administrative lower-threshold value for
        hwNqaReactCheckedElement.

        The value of hwNqaReactThresholdLowerLimit should be equal or less
        than the value of hwNqaReactThresholdUpperLimit.

        The value of this object is zero if hwNqaReactCheckedElement is
        specified as 'jitterpacketloss' and 'probefailure'."                      �"This object defines the reaction threshold types.

        invalid(0):     Invalid value.

        average(1):     If reaction threshold type is average and the average
                        value of watched operation exceeds threshold limit,
                        an action specified in hwNqaReactActionType is
                        generated when hwNqaReactCurrentStatus changes.


        consecutive(2): If reaction threshold type is consecutive and
                        the times of watched operation consecutively exceeds
                        the limit specified by hwNqaReactThresholdConsecNum,
                        an action specified in hwNqaReactActionType is
                        generated when hwNqaReactCurrentStatus changes.

        accumulative(3): If reaction threshold type is accumulative and
                        the times of watched operation accumulatively exceeds
                        the limit specified by hwNqaReactThresholdAccumNum,
                        an action specified in hwNqaReactActionType is
                        generated when hwNqaReactCurrentStatus changes.

        If reaction threshold type is not configured, the value of this
        object is 'invalid'."                       �"This object defines a consecutive threshold limit.

        The value is zero when hwNqaReactThresholdType
        is not 'consecutive'."                       �"This object defines an accumulative threshold limit.

        The value is zero when the hwNqaReactThresholdType
        is not 'accumulative'."                      �"Specifies the type of reaction to generate if the specified
        violation type occurs for the monitored element:

        none               - No reaction is generated
        trapOnly           - A trap is generated
        triggerOnly        - All trigger actions defined for this
                             entry are generated
        trapAndTrigger     - Both a trap and all trigger actions
                             are generated "                      �"Specifies the current status of this reaction entry:

        invalid  - Specifies the reaction entry status is uncertain.

        overThreshold   - Specifies the reaction entry has met
                          the hwNqaReactThresholdType and the
                          threshold value.

        belowThreshold  - Specifies the reaction entry has
                          disobeyed the hwNqaReactThresholdType
                          and the threshold value."                      r"This object allows entries to be created and deleted
        in the hwNqaReactionTable.

        Creation of an entry in this table results in a new set of reaction
        configurations which take effect immediately.

        Deletion of an entry in this table results in corresponding reaction
        configurations are being deleted and stop taking effect." T"See definition of RowStatus in RFC 2579, 'Textual
        Conventions for SMIv2.'"                     ;"The number of checked element samples that are monitored."                       @"The number of checked element samples that are over threshold."                       �"A table of NQA test monitoring notification and
        reaction configuration definitions.

        An entry is removed from this table when its
        corresponding pingCtlEntry is deleted."                      <"Defines an entry in the hwNqaStatisticsReactionTable. The
        first two index elements identify the pingCtlEntry that a
        hwNqaReactItemIndex belongs to. The third index element
        identifies an entry in the hwNqaStatisticsResultsTable.
        The forth index element selects a single reaction."                       p"The first index of hwNqaStatisticsReactionTable, it is the same
        as pingCtlOwnerIndex in pingCtlTable."                       o"The second index of hwNqaStatisticsReactionTable, it is the same
        as pingCtlTestName in pingCtlTable."                      Y"The third index of hwNqaStatisticsReactionTable. An entry in
        this table is created when the statistics result of a NQA probe
        is determined.

 	An implementation MUST start assigning hwNqaStatResIndex values
 	at 1 and wrap after exceeding the maximum possible value as
 	defined by the limit of this object ('ffffffff'h)."                       |"The forth index of hwNqaStatisticsReactionTable, it definitely
 	identifies one of the reaction configurations for a test"                       ;"The number of checked element samples that are monitored."                       @"The number of checked element samples that are over threshold."                           �"Indicates that an implementation is using the UDP based echo server.
        Notes: The hwNqaCtlTargetPort and hwNqaCtlSourcePort need to be set,
        while in the pingUdpEcho Node, hwNqaCtlTargetPort must be set to the
        default value."              E"Indicates that an implementation is attempting to
        connect to a TCP port in order to calculate a round
        trip time.
        Notes: The hwNqaCtlTargetPort and hwNqaCtlSourcePort need to be set,
        while in the pingTcpConnectionAttempt Node, hwNqaCtlTargetPort must
        be set to the default value."               �"Indicates that an implementation is using udp for packet transfers.
        'jitter' will cause the NQA(Network Quality Analysis) application
        to perform delay variance analysis."              #"Indicates that an implementation is using udp for name resolution,
        tcp connect and tcp data transfer mechanisms for HTTP data download
        from a particular HTTP Server.
        It causes the NQA application to perform a download of the object
        specified in the URL."               �"Indicates that an implementation is using tcp for sending keepalives.
        'dlsw' will cause the NQA application to perform a keepalive operation
        to measure the response time of a DLSw peer."               �"Indicates that an implementation is using udp for sending dhcp
        requests. 'dhcp' will cause the NQA application
        to perform an IP Address lease request/teardown operation."               c"Indicates that an implementation is using tcp packet for ftp connect
         and data transfer."                  *"It is generated when the value of hwNqaReactCurrentStatus
        changes.
        The change may occur when the watched condition is over threshold
        or below threshold.

        The over threshold situations is specified as below.
          1. Probe time(equals to RTT for some type of tests) is not in
             the range hwNqaReactThresholdLowerLimit through
             hwNqaReactThresholdUpperLimit.
          2. The probe time is accumulatively not in the range
             hwNqaReactThresholdLowerLimit through
             hwNqaReactThresholdUpperLimit for a number of times
             specified in hwNqaReactThresholdAccumNum.
          3. The probe time is consecutively in the range
             hwNqaReactThresholdLowerLimit through
             hwNqaReactThresholdUpperLimit for a number of times
             specified in hwNqaReactThresholdConsecNum.

        This notification is valid only when hwNqaReactActionType
        is 'trapOnly' or 'trapAndTrigger' and pingCtlType of the test
        is not hwNqajitter."                Z"It is generated when the value of hwNqaReactCurrentStatus
        changes.
        The change may occur when the watched condition is over threshold
        or below threshold.

        The over threshold situations is specified as below.
          1. The average NQA round-trip-time (RTT) of jitter packets
             is not in the range hwNqaReactThresholdLowerLimit through
             hwNqaReactThresholdUpperLimit.
          2. The RTT of jitter packets is accumulatively not in the range
             hwNqaReactThresholdLowerLimit through
             hwNqaReactThresholdUpperLimit for a number of times specified
             in hwNqaReactThresholdAccumNum in one test.

        This notification is valid only when hwNqaReactActionType
        is 'trapOnly' or 'trapAndTrigger' and pingCtlType of the test
        is hwNqajitter."                W"It is generated when the value of hwNqaReactCurrentStatus
        changes.
        The change may occur when the watched condition is over threshold
        or below threshold.

        The over threshold situations is specified as below.
          1. When the probe test accumulatively failed for a
             number of times specified in hwNqaReactThresholdAccumNum in one
             test while the value of hwNqaReactThresholdType is 'accumulative'.
          2. When the probe test consecutively failed for
             a number of times specified in hwNqaReactThresholdConsecNum in one
             test while the value of hwNqaReactThresholdType is 'consecutive'.

        This notification is valid only when hwNqaReactActionType
        is 'trapOnly' or 'trapAndTrigger' and pingCtlType of the test
        is not hwNqajitter."                y"It is generated when the value of hwNqaReactCurrentStatus
        changes.
        The change may occur when the watched condition is over threshold
        or below threshold.

        The over threshold situations is specified as below.
          1. When the jitter packets accumulatively lost for a
             number of times specified in hwNqaReactThresholdAccumNum in one
             test while the value of hwNqaReactThresholdType is 'accumulative'.

        This notification is valid only when hwNqaReactActionType
        is 'trapOnly' or 'trapAndTrigger' and pingCtlType of the test
        is hwNqajitter."                +"The SD means the jitter values from source to destination.

        It is generated when the value of hwNqaReactCurrentStatus
        changes.
        The change may occur when the watched condition is over threshold
        or below threshold.

        The over threshold situations is specified as below.
          1. The average of SD in one jitter test is not in the range
             hwNqaReactThresholdLowerLimit through
             hwNqaReactThresholdUpperLimit and the
             hwNqaReactThresholdType is specified as 'average' type.
          2. The average of SD in one jitter test is accumulatively
             not in the range hwNqaReactThresholdLowerLimit through
             hwNqaReactThresholdUpperLimit for a number of times specified
             in hwNqaReactThresholdAccumNum and the
             hwNqaReactThresholdType is specified as 'accumulative' type.

        This notification is valid only when hwNqaReactActionType
        is 'trapOnly' or 'trapAndTrigger' and pingCtlType of the test
        is hwNqajitter."                +"The DS means the jitter values from destination to source.

        It is generated when the value of hwNqaReactCurrentStatus
        changes.
        The change may occur when the watched condition is over threshold
        or below threshold.

        The over threshold situations is specified as below.
          1. The average of DS in one jitter test is not in the range
             hwNqaReactThresholdLowerLimit through
             hwNqaReactThresholdUpperLimit and the
             hwNqaReactThresholdType is specified as 'average' type.
          2. The average of DS in one jitter test is accumulatively not
             in the range hwNqaReactThresholdLowerLimit through
             hwNqaReactThresholdUpperLimit for a number of times specified
             in hwNqaReactThresholdAccumNum and the
             hwNqaReactThresholdType is specified as 'accumulative' type.

        This notification is valid only when hwNqaReactActionType
        is 'trapOnly' or 'trapAndTrigger' and pingCtlType of the test
        is hwNqajitter."                �"It is generated when the value of hwNqaReactCurrentStatus
        changes.
        The change may occur when the watched condition is over threshold
        or below threshold.

        The over threshold situations is specified as below.
          1. When the ICPIF value in one jitter test is not in
             the range hwNqaReactThresholdLowerLimit through
             hwNqaReactThresholdUpperLimit.

        This notification is valid only when hwNqaReactActionType
        is 'trapOnly' or 'trapAndTrigger', pingCtlType of the test
        is hwNqajitter and hwNqaCtlCodecType is 'g711Alaw' or 'g711Ulaw'
        or 'g729A'."                �"It is generated when the value of hwNqaReactCurrentStatus
        changes.
        The change may occur when the watched condition is over threshold
        or below threshold.

        The over threshold situations is specified as below.
          1. When the MOS value in one jitter test is not in
             the range hwNqaReactThresholdLowerLimit through
             hwNqaReactThresholdUpperLimit.

        This notification is valid only when hwNqaReactActionType
        is 'trapOnly' or 'trapAndTrigger' , pingCtlType of the test
        is hwNqajitter and hwNqaCtlCodecType is 'g711Alaw' or 'g711Ulaw'
        or 'g729A'."                                        