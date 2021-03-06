    T"Indicates the ringlet on which the OAM action
                        request/response is sent/replied.
                        The valid values for this object are:

                        (1) Default (2) ringlet0 (3) ringlet1 (4) Reverse ringlet.

                        The value (4) is applicable only for OAM response action."              5"Indicates the current protection status of the RPR MAC
                        span.
                        The status values are (arranged in ascending priority
                        order) :

                        noRequest
                        No protection request on the span, the protection
                        status is idle.

                        waitToRestore
                        The condition for an automatic protection was cleared and
                        the span is engaged in a wait to restore period.

                        manualSwitch
                        A user initiated manual switch (via the
                        rprSpanProtectionCommand) on the span.

                        signalDegraded
                        An automatically-detected status which causes protection on
                        a span when a media signal degrade is detected due to
                        excessive BER.

                        signalFailed
                        An automatically-detected status which causes protection on
                        a span when a media signal failure is detected.

                        forcedSwitch
                        A user initiated forced switch (via the
                        rprSpanProtectionCommand) on the span."              o"Indicates the span interface of the RPR MAC. Each RPR
                        span is connected to both ringlet0 and ringlet1.
                        The east span receives from ringlet1 and transmits through
                        ringlet0.
                        The west span receives from ringlet0 and transmits through
                        ringlet1."                                                                                                     �"The resilient packet ring MIB for IEEE 802.17.

                        Copyright (C) IEEE802.17.
                        This version of this MIB module is part of IEEE802.17;
                        see the draft itself for full legal notices." "stds-802-17@ieee.org" "200404211200Z" "First published version."       -- 21 Apr 2004 12:00:00 UTC
               �"The RPR interface table, extension to the ifTable.
                        All read-write attributes in this table are non-volatile,
                        i.e. will be retained across system reset."                       r"One such entry for every interface in the ifTable which
                        has an ifType of RPR interface."                       $"The ifIndex of this RPR interface." "RFC 2863, ifIndex"                     "The number of stations on the RPR ring.
                        When the operStatus of the interface is down the value is 1." +"IEEE 802.17 Subclause 11.2.4, numStations"                    ?"The reversion mode of the MAC,
                        False for non-revertive
                        True for revertive.

                        Revertive station will return to idle state after
                        WTR interval expires.

                        Default value for reversion mode is true." )"IEEE 802.17 Subclause 11.2.3, revertive"                    G"Indicates the length of time in seconds, to remain in the
                        protection state, after the cause of an automatic
                        protection is removed. This mechanism prevents protection
                        switch oscillations.

                        Default value for WTR is 10 seconds." #"IEEE 802.17 Subclause 11.2.3, wtr"                     �"Indicates the protection messages fast timer value in 1 ms units.
                        The fast timer is used for protection protocols.

                        Default value for fast timer protection messages is 10 ms." -"IEEE 802.17 Subclause 11.2.3, txFastTimeout"                    %"Indicates the protection slow timer value in 50 ms units.
                        The slow timer is used for topology and protection protocols.

                        Default value for slow timer protection and topology messages
                        is 20 units of 50 ms, i.e. 1sec." -"IEEE 802.17 Subclause 11.2.3, txSlowTimeout"                     �"Indicates the timer period for ATD message transmissions.

                        Default value is 20 units of 50 ms, i.e. 1sec." /"IEEE 802.17 Subclause 11.2.3, atdTimerTimeout"                     �"Indicates the timer to declare keepalive timeout, multiples
                        of 1 millisecond.

                        Default value for keepalive timeout is 3 ms." -"IEEE 802.17 Subclause 11.2.3, keepaliveTime"                    \"Indicates whether the selected RPR fairness algorithm is
                        aggressive or conservative.

                        If true, the selected fairness mode is aggressive.

                        If false, the selected fairness mode is conservative.

                        The default value for fairness aggressive is true." 0"IEEE 802.17 Subclause 11.2.5, conservativeMode"                     p"The size in bytes of the Primary Transit Queue per ringlet
                        supported by this RPR MAC." &"IEEE 802.17 Subclause 7.2.2, sizePtq"                     r"The size in bytes of the Secondary Transit Queue per ringlet
                        supported by this RPR MAC." '"IEEE 802.17 Subclause 7.2.2, size Stq"                    �"A level of STQ occupancy at or above which the STQ
                        is almost full.

                           This attribute specifies the full threshold location
                           in MTU units below the STQ size.
                           The range is [stqHighThreshold + mtuSize, sizeSTQ - mtuSize].
                           The default value for stqFullThreshold is sizeSTQ - 2*mtuSize." /"IEEE 802.17 Subclause 7.2.2, stqFullThreshold"                    �"Indicates that a MAC is experiencing an adverse rate
                        mismatch. When the PTQ depth exceeds this value,
                        the incoming link is considered adversely rate mismatched.

                        This attribute specifies the idle-threshold location
                        from the top of the PTQ buffer, in MTU size.

                        Default value should be 1, which means (sizePTQ - mtuSize)" ."IEEE 802.17 Subclause 7.5.3.2, idleThreshold"                     �"Indicates the number of E-RPR errors to declare
                        a second as SES-RPR

                        The default value is the rounded integer of
                        0.000001 * (lineRate * advertisementRatio)." ,"IEEE 802.17 Subclause 12.2.2, sesThreshold"                    �"Indicates the configured protection mode,
                        steering or wrapping, in a MAC that supports both modes.

                        If wrap configured bit is set, the station will
                        perform wrap protection during ring failures.

                        If the station detects another station on the ring that
                        has a protection configuration that conflicts with its own,
                        the station will generate a defect to higher layers.

                        Default value for wrap preferred is false for steering
                        only stations, and true for stations that implement wrapping." *"IEEE 802.17 Subclause 11.2.5, protConfig"                    �"Indicates the preference of the manager to support jumbo frame
                        in a MAC that supports jumbo frame.

                        The station advertises the 'logical and' of rprIfJumboFramePreferred
                        and jumbo capable bit in the rprIfMacCapability.

                        Default value for jumbo frame preferred is true. i.e. station
                        supports jumbo frame." +"IEEE 802.17 Subclause 11.2.5, jumboPrefer"                     �"The summary of the Mac operational modes.
                        if strictOrder is set, the MAC operates in strict order mode.
                        if dropBadFcs is set, frames with bad FCS are dropped." 7"IEEE 802.17 Subclause 6.2, forceStrict and copyBadFcs"                    �"The summary of the ring operational modes
                        collected through the topology discovery protocol.

                        If at least one station doesn't support jumbo frames,
                        the jumboFrame bit in this attribute is set to false.
                        Only if all stations support jumbo frames, the bit is true.

                        If at least one station wasn't configured to wrap,
                        the wrap bit in this attribute is set to false.
                        Only if all stations configured to wrap, the bit is true.

                        If the ring doesn't complete full loop, the ring is considered

                           openRing, with at least one detected edge." 6"IEEE 802.17 Subclause 11.2.4, jumboType and topoType"                     �"Indicates the current status of the RPR interface.
                        this attribute is used to generate alarm to the management system." �"IEEE 802.17 Subclause 11.2.9, topoInconsistencyDefect,
                        duplicateSecMacAddressDefect, and maxStationsDefect"                    �"The value of sysUpTime at the time when any of the following
                        attributes changes:
                        rprIfStationsOnRing, rprIfReversionMode, rprIfProtectionWTR,
                        rprIfProtectionFastTimer, rprIfProtectionSlowTimer, rprIfAtdTimer,
                        rprIfKeepaliveTimeout, rprIfFairnessAggressive,
                        rprIfSTQFullThreshold, rprIfIdleThreshold,
                        rprIfSesThreshold, rprIfWrapConfig, rprIfJumboFramePreferred,
                        rprIfMacOperModes, rprIfRingOperModes, rprIfCurrentStatus
                        contents of the rprTopoImageEntry."                       �"Indicates number of times rprIfLastChange changed.

                        The discontinued counter value is indicated
                        by the ifCounterDiscontinuityTime value."                      \"The RPR statistics management table,
                        controls the collection, duration, clearance, and status
                        of the MAC statistics.

                        The usage of this table is as follows:

                        1. In order to clear period of counters (or all periods) of
                           specific counting point (or all counting points) of the
                           RPR MAC, the user should first set the
                           rprIfStatsControlPeriodClear item to specify the period
                           that he would like to clear, and the
                           rprIfStatsControlCountPointClear item to specify the
                           counting point on which he would like to perform the
                           statistics clearance.
                           In case that the user specified 'clearSpecificInterval'
                           in the rprIfStatsControlPeriodClear item, the user should
                           also set the specific interval to clear by setting
                           rprIfStatsControlIntervalClear.
                           After setting these items, the user can activate the
                           clear operation by setting rprIfStatsControlCommitClear
                           item to 'commit'.
                           The status of the clear operation (done of failed) is
                           indicated by the returned value of rprIfStatsControlCommitClear
                         item.

                        2. Setting rprIfStatsControlPeriodClear to 'clearAllIntervals' and
                           rprIfStatsControlCountPointClear to 'clearWest' (for example)
                           will clear all current and previous intervals, and day
                           counters of the west side of the RPR MAC.

                        3. The IntervalValidData of cleared interval should be set to false.


                        All read-write attributes in this table are volatile,

                        i.e. will be cleared on system reset."                       t"One such entry for every interface in the ifTable which

                        has an ifType of RPR interface."                       $"The ifIndex of this RPR interface." "RFC 2863, ifIndex"                    �"This attribute allows for some or all of the
                        interval statistics for this RPR MAC to be cleared.
                        It does not affect the values of the running counters
                        or the counter values reported through the interface MIB.

                        clearSpecificInterval clears the interval indicated by
                        rprIfStatsControlIntervalClear.

                        Default value for period clear is idle."                      d"This attribute allows for a specific counting point of the
                        RPR MAC or all of the RPR MAC counting points to be cleared
                        on rprIfStatsControlPeriodClear request.

                        Default value for Interface to clear is clearAll, i.e.

                        clear statistics of all interfaces."                      �"The statistics interval number to clear.
                        The interval identified by 1 is the most recently completed
                        15 minute interval, and interval identified by N is the
                        interval immediately preceding the one identified by N-1.

                        Setting rprIfStatsControlPeriodClear to clearSpecificInterval will
                        clear the interval that is indicated by this object."                      4"Sends a commit with input parameters to specify the
                        Period (rprIfStatsControlPeriodClear),
                        count point (rprIfStatsControlCountPointClear) and
                        specific interval (rprIfStatsControlIntervalClear) to clear.

                        If the clear operation succeeds this attribute will have
                        the value commitDone(2) when read.
                        If the clear operation fails this attribute will have
                        the value commitFailed(3) when read."                      �"The number of seconds, including partial seconds, that
                        have elapsed since the beginning of the current
                        measurement interval. If, for some reason, such as an
                        adjustment in the system's time-of-day clock, the current
                        interval exceeds the maximum value, the agent will return
                        the maximum value."                      "The number of previous 15-minute intervals for
                        which data was collected.
                        An RPR interface must be capable of supporting at least n
                        intervals.
                               The minimum value of n is 4. The default of n is 32.
                        The maximum value of n is 96.
                               The value will be <n> unless the measurement was
                        (re-)started within the last (<n>*15) minutes, in which
                        case the value will be the number of complete 15
                        minute intervals for which the agent has at least
                               some data. In certain cases (e.g., in the case
                               where the agent is a proxy) it is possible that some
                               intervals are unavailable.  In this case, this
                               interval is the maximum interval number for
                               which data is available. "                       �"The RPR interface Span table.

                        All read-write attributes in this table are non-volatile,

                        i.e. will be retained across system reset."                       4"One such entry for every span of an RPR interface."                       $"The ifIndex of this RPR interface." "RFC 2863, ifIndex"                    o"Indicates the span interface of the RPR MAC. Each RPR
                        span is connected to both ringlet0 and ringlet1.
                        The east span receives from ringlet1 and transmits through
                        ringlet0.
                        The west span receives from ringlet0 and transmits through
                        ringlet1." #"IEEE 802.17 Subclause 7.2.2, myRi"                     �"The ifIndex of interface which is below the RPR layer in this
                        span. A value of zero indicates an interface index that has
                        yet to be determined" "RFC 2863, ifIndex"                     �"The total reserved subclassA0 bandwidth on the ringlet.
                        This variable is used by the fairness module
                        to determine the total reclaimable bandwidth." ."IEEE 802.17 Subclause 11.2.4, unreservedRate"                     �"Indicates the current status of the RPR span.
                        this attribute is used to generate alarm to the management system." z"IEEE 802.17 Subclause 11.2.3, keepaliveTime, 11.2.9, miscablingDefect,
                        and 8.2.3.2, LINK_STATUS"                    ="The value of sysUpTime at the time when any of the following
                        attributes changes:
                        rprSpanCurrentStatus,
                        rprSpanProtectionNeighborValid, rprSpanProtectionHoldOffTimer,
                        rprSpanProtectionCommand, rprSpanProtectionCount."                       �"Indicates number of times rprSpanLastChange changed.

                        The discontinued counter value is indicated
                        by the ifCounterDiscontinuityTime value."                       �"The RPR interface Span protection management table.

                         All read-write attributes in this table are non-volatile,
                         i.e. will be retained across system reset."                       4"One such entry for every span of an RPR interface."                       $"The ifIndex of this RPR interface." "RFC 2863, ifIndex"                     "The Span for this entry." #"IEEE 802.17 Subclause 7.2.2. myRi"                     ~"Indicates whether the neighbor address is active or former.
                        true value for active, false for former" /"IEEE 802.17 Subclause 11.2.5, lastNeighborMac"                     �"The period that RPR gives to lower layer to perform
                        protection, before it activates its protection mechanism.

                        Default value of hold off timer is 0." ."IEEE 802.17 Subclause 11.2.3, holdOffTimeout"                    �"The protection mode requested by management for the local
                        station that can affect the protection status of the RPR
                        station, according to the set of rules describing the RPR
                        protection.

                        When read, this object returns the last command written
                        unless it has been preempted, or idle if no command has been
                        written to this interface span since initialization.

                        There is no pending of commands, that is if a command has
                        been preempted by a failure, when the failure clears the
                        command is not executed.

                        If the command cannot be executed because an equal or \
                        higher priority request is in effect, an error is returned.

                        writing idle to a span that has no pending protection
                        command, has no affect. An idle clears an active WTR state.

                        The protection commands (arranged in ascending priority
                        order) are:

                        idle
                        This command clears the protection for the specified
                        interface span.
                        This value should be returned by a read request when no
                        protection command has been written to the object.

                        manualSwitch
                        A protection command on each end of a specified span. This
                        command doesn't have precedence over automatic protection,
                        and therefore it can't preempt
                        an existing automatic protection request.

                        forcedSwitch
                        A command on each end of a specified span. This command has
                        precedence over automatic protection, and therefore it can
                        preempt an existing automatic protection request.

                           Default value of protection command is idle." 6"IEEE 802.17 Subclause 11.2.3, adminRequestProtection"                     �"The number of transitions from idle state to active
                        protection state.

                        The discontinued counter value is indicated
                        by the ifCounterDiscontinuityTime value." 5"IEEE 802.17 Subclause 11.6.5.5, IndicateEdgeState()"                     �"The total amount of time protection was active on the
                        span interface.

                        The discontinued counter value is indicated
                        by the ifCounterDiscontinuityTime value." 5"IEEE 802.17 Subclause 11.6.5.5, IndicateEdgeState()"                     `"The value of sysUpTime at the time of the last protection
                        activation." 5"IEEE 802.17 Subclause 11.6.5.5, IndicateEdgeState()"                         *"Number of RPR interfaces on this device."                       @"Latest timestamp when any instance of rprIfLastChange changed."                       �"Number of times any instance of rprIfChanges changed.

                        The discontinued counter value is indicated
                        by the ifCounterDiscontinuityTime value."                       B"Latest timestamp when any instance of rprSpanLastChange changed."                       �"Number of times any instance of rprSpanChanges changed.

                        The discontinued counter value is indicated
                        by the ifCounterDiscontinuityTime value."                       F"Latest timestamp when any instance of rprFairnessLastChange changed."                       �"Number of times any instance of rprFairnessChanges changed.

                        The discontinued counter value is indicated
                        by the ifCounterDiscontinuityTime value."                           �"A topology map that details the list of stations on the RPR
                        ringlets.

                        All attributes in this table are volatile,

                        i.e. will be cleared on system reset."                      "Each entry contains information specific to a particular
                        station on the ring.

                        The table has at least one entry for the station itself,
                        this entry indicates zero hops on each ringlet."                       $"The ifIndex of this RPR interface." "RFC 2863, ifIndex"                     ("The 48-bit MAC address of the station." *"IEEE 802.17 Subclause 11.2.6, macAddress"                     �"The 48-bit first secondary MAC address of the station.

                        Default and unused value is FF:FF:FF:FF:FF:FF" &"IEEE 802.17 Subclause 11.2.6, secMac"                     �"The 48-bit second secondary MAC address of the station.

                        Default and unused value is FF:FF:FF:FF:FF:FF" &"IEEE 802.17 Subclause 11.2.6, secMac"                     "The station ifIndex." ."IEEE 802.17 Subclause 11.2.6, interfaceIndex"                     %"The operator assigned station name." +"IEEE 802.17 Subclause 11.2.6, stationName"                     �"Denotes the address type of the station INET address
                        It should be set to 'unknown' if station INET address
                        is not known." 5"IEEE 802.17 Subclause 11.2.6, managementAddressType"                    �"This object contains the value of of the station
                        IP (v4 or V6) address.
                        The format of this address is specified by the value
                        of the corresponding rprTopoImageInetAddressType object.

                        If the address type is unknown, then this object contains the
                        zero-length OCTET-STRING." 0"IEEE 802.17 Subclause 11.2.6, managementIpAddr"                    �"Indicates the capabilities that the MAC supports.

                        jumboFrames - Indicates whether the MAC capable of receiving,
                        transmitting and transiting jumbo frames.

                        wrapProtection - Indicates whether the MAC configured to wrap
                        protection.

                        supportsConservativeFairness - indicates the MAC supports
                        conservative fairness algorithm." f"IEEE 802.17 Subclause 11.2.6, jumboPrefer, protConfig, and
                        conservativeMode"                     �"The number of hops to this station through ringlet0.

                        The self station is indicated with zero hops.

                           A non reachable station is indicated with -1 value." $"IEEE 802.17 Subclause 11.2.6, hops"                     f"The amount of A0 traffic that this station adds on ringlet0,
                        in Mb/s units." ,"IEEE 802.17 Subclause 11.2.6, reservedRate"                     �"The number of hops to this station through ringlet1.

                        The self station is indicated with zero hops.
                        A non reachable station is indicated with -1 value." $"IEEE 802.17 Subclause 11.2.6, hops"                     f"The amount of A0 traffic that this station adds on ringlet1,
                        in Mb/s units." ,"IEEE 802.17 Subclause 11.2.6, reservedRate"                     1"The current protection status of the West span." -"IEEE 802.17 Subclause 11.2.6, spanProtState"                     b"The weight of the station on the west span.
                        used for weighted fairness." &"IEEE 802.17 Subclause 11.2.6, weight"                     1"The current protection status of the east span." -"IEEE 802.17 Subclause 11.2.6, spanProtState"                     b"The weight of the station on the east span.
                        Used for weighted fairness." &"IEEE 802.17 Subclause 11.2.6, weight"                    2"Status of the station,
                        the reachability of station through ringlet0 and ringlet1,
                        wrap active on the station spans,
                        events of reception frames with bad FCS,
                        events of reception multichoke fairness frames." }"IEEE 802.17 Subclause 11.2.6, reachable, protConfig, spanProtState,
                        badFcsUser, and multichokeUser"                     �"A table of RPR Fairness per RPR span.

                        All read-write attributes in this table are non-volatile,
                        i.e. will be retained across system reset."                       d"A fairness parameters for a particular ringlet of the

                        an RPR interface."                       $"The ifIndex of this RPR interface." "RFC 2863, ifIndex"                    A"The ringlet for which this row contains information.

                        ringlet0 is the transmission of the east span and the
                        reception of the west span,

                        ringlet1 is the transmission of the west span and the
                        reception of the east span" #"IEEE 802.17 Subclause 7.2.2, myRi"                    �"Weight assigned to fairness to permit the scaling of
                        fair rate values among stations on the ringlet.
                        This allows one station to use a larger share of available
                        capacity than another station without violating fairness
                        principles.

                        The allowed range is [1, 255]. The default value is 1." +"IEEE 802.17 Subclause 10.2.2, localWeight"                     �"The amount of A0 traffic that this station adds that ringlet,
                        in Mb/s units.

                        Default value for A0 reserved rate is 0 Mb/s." ,"IEEE 802.17 Subclause 11.2.4, reservedRate"                     �"The maximum value that the station is allowed to transmit
                        local excess traffic to the ringlet. The default value
                        is the physical ring rate." ."IEEE 802.17 Subclause 10.2.2, maxAllowedRate"                    �"The coefficient used by the aging procedure to specify
                        the relative weights assigned to

                        (a) the change in the value of a rate-counter during
                               the most recent agingInterval and

                         (b) the value of the rate-counter at the end of the previous
                               agingInterval.

                           The value is interpreted as 2 raised to the power
                           specified by this attribute.

                           The default value is 2, giving an aging coefficient
                           of 2**2, or 4." '"IEEE 802.17 Subclause 10.2.2, ageCoef"                    '"The coefficient used for ramping a rate.

                        The value is interpreted as 2 raised to the power
                        specified by this attribute.

                        The default value is 6, giving a low-pass coefficient
                        of 2**6, or 64." *"IEEE 802.17 Subclause 10.2.2, rampUpCoef"                    �"The coefficient used by the low-pass filter procedure
                        to specify the relative weights applied to

                        . (a) the increase in the rate-count value during the most
                            recent agingInterval and

                        .(b) the previous low-pass filtered rate.
                        The former is assigned a weight of 1 and the latter a
                        weight of (lpCoef-1).


                        The value is interpreted as 2 raised to the power
                        specified by this attribute.

                        The default value is 6, giving a low-pass coefficient
                        of 2**6, or 64." &"IEEE 802.17 Subclause 10.2.2, lpCoef"                    "The ratio between the link capacity reserved for fairness
                        control messages and the total link capacity.

                        Default value of fairness advertisement ratio is 5 units
                        of 0.00025, i.e 0.00125." 2"IEEE 802.17 Subclause 10.2.2, advertisementRatio"                    �"Indicates the number of SCFF advertisingIntervals that
                        elapse between the sending of successive MCFFs,
                        This value allows the interval between sending MCFFs
                        to be established as MCFF_reportingInterval =
                        rprFairnessMcffReportCoef * SCFF_avertisingInterval.

                        The default value is 10." *"IEEE 802.17 Subclause 10.2.2, reportCoef"                    �"Indicates the number of agingIntervals that elapse between
                        successive computations of activeWeights.
                        This value allows the interval between computations of
                        activeWeights to be established as
                        activeWeightsInterval = activeWeightsCoef * agingInterval.

                        The default value is 64." 1"IEEE 802.17 Subclause 10.2.2, activeWeightsCoef"                    �"A level of STQ occupancy at or above which CSFE frames are no
                        longer admitted. Defined only for a dual transit-queue
                        implementation.

                        This attribute specifies the high threshold location
                        in percentage of the STQ size.
                        The allowed range is [2*mtuSize, stqFullThreshold -mtuSize].
                           The default value is 0.25*stqFullThreshold." 0"IEEE 802.17 Subclause 10.2.2, stqHighThreshold"                    �"A level of buffer occupancy in a dual-queue deployment,
                        at or above which congestion on the outbound link is declared.

                        This attribute specifies the medium threshold location
                        in percentage of the STQ size.
                        The allowed range is [stqLowThreshold + mtuSize,

                        stqHighThreshold - mtuSize].
                        The default value is 0.5 * (stqHighThreshold + stqLowThreshold)." /"IEEE 802.17 Subclause 10.2.2, stqMedThreshold"                    �"A level of STQ occupancy at or above which congestion on
                        the outbound link is imminent.
                        Defined only for dual transit-queue implementations.

                        This attribute specifies the low threshold location
                        in percentage of the STQ size.
                        The range is [mtuSize, stqHighThreshold -mtuSize].
                        The default value is 0.5*stqHighThreshold." /"IEEE 802.17 Subclause 10.2.2, stqLowThreshold"                     �"Rate at or above which congestion on the outbound link
                        is declared.

                        The range is [0.4 * unreservedRate, 0.99 * unreservedRate].
                        The default value is 0.95 * unreservedRate." 1"IEEE 802.17 Subclause 10.2.2, rateHighThreshold"                    "Rate at or above which congestion on the outbound link
                        is imminent.

                        The range is [0.5 * rateHighThreshold, 0.99 * rateHighThreshold].
                        The default value is 0.9 * rateHighThreshold" 0"IEEE 802.17 Subclause 10.2.2, rateLowThreshold"                     �"Write resetWaterMarks to this attribute to reset
                        the STQ water marks to the current occupancy.

                        Default value is idle"                       �"The highest level of STQ occupancy since the last reset
                        of this value, in percentage of the STQ size." 0"IEEE 802.17 Subclause 10.2.2, stqHighWatermark"                     "The lowest level of STQ occupancy since the last reset of
                        this value, in percentage of the STQ size." /"IEEE 802.17 Subclause 10.2.2, stqLowWatermark"                    �"The value of sysUpTime at the time when any of the following
                        attributes changes:
                        rprFairnessRingletWeight, rprFairnessReservedRate,
                        rprFairnessMaxAllowed, rprFairnessAgeCoef, rprFairnessRampCoef,
                        rprFairnessLpCoef, rprFairnessAdvertisementRatio,
                        rprFairnessSTQHighThreshold, rprFairnessSTQLowThreshold
                        rprFairnessResetWaterMarks."                       �"Indicates number of times rprFairnessLastChange changed.

                        The discontinued counter value is indicated
                        by the ifCounterDiscontinuityTime value."                      ."A table of RPR OAM actions.
                        The table is designed to support a one action at a time
                        on an RPR interface.

                        All read-write attributes in this table are volatile,

                        i.e. will be cleared on system reset."                       1"OAM Echo and Flush control for an RPR interface"                       $"The ifIndex of this RPR interface." "RFC 2863, ifIndex"                     �"The type of OAM action.
                        The valid values for this object are:

                        (1) echo (2) flush." G"IEEE 802.17 Subclause 12.4.1, OAM_ECHO_REQ, and 12.4.3, OAM_FLUSH_REQ"                     \"The 48-bit MAC address of the destination station of OAM
                        session." >"IEEE 802.17 Subclause 12.4.1 and 12.4.3, destination_address"                     9"The ringlet ID on which the OAM request should be sent." 5"IEEE 802.17 Subclause 12.4.1 and 12.4.3, ringlet_id"                     ="The ringlet ID on which the OAM response should be replied." 0"IEEE 802.17 Subclause 12.4.1, response_ringlet"                     ,"The class-of-service of OAM session frames" 8"IEEE 802.17 Subclause 12.4.1 and 12.4.3, service_class"                     +"The operator assigned user specific data." 4"IEEE 802.17 Subclause 12.4.1 and 12.4.3, user_data"                    �"Indicates whether the OAM action should be protected.

                        In a wrapping ring,
                        If true, the WE (wrap eligible) bit of the OAM action
                        frame is set to 1.
                        Otherwise, the WE bit is set to 0.

                        In steering ring,
                        If true, in case of failure on the requested ringlet between
                        the source and the destination stations, the OAM action frame
                        will be steered to the alternative ringlet.
                        Otherwise, the OAM action frame will be sent through the requested
                        ringlet regardless of its protection state." 9"IEEE 802.17 Subclause 12.4.1 and 12.4.3, mac_protection"                     t"Indicates the number of OAM requests to send.

                        Default value of OAM request action is 1."                       �"Indicates the timer to declare OAM action timeout,
                        in 10usec units.

                        Default value of OAM timeout is 500 units of 10usec (i.e. 5 ms)"                       �"Control of an OAM action.
                        The valid values for this object are:

                        (1) idle (2) active (3) abort.

                        Default value of OAM control is idle."                       9"Indicates the number of OAM actions responses received."                       1"Average response time to receive the OAM reply."                      3"Status of an OAM action.
                        The valid values for this object are:

                        (1) unknown (2) inProcess (3) error (4) success.

                        The action status is success if at least 90% of the responses
                        were received till timeout."                           �"The RPR MAC Span interface current counters table.

                        All attributes in this table are volatile,

                        i.e. will be cleared on system reset."                      I"Frames and octets statistics for the current interval for
                        the RPR MAC Span interface.
                        The corresponding instance of rprIfStatsControlTimeElapsed
                        indicates the number of seconds which have elapsed
                        so far in the current interval."                       $"The ifIndex of this RPR interface." "RFC 2863, ifIndex"                     n"An indication of the span of the interface for which this
                        row contains information."                       m"The number of received (PHY to MAC) classA unicast frames
                        in the current interval."                       n"The number of received (PHY to MAC) classA unicast octets,
                        in the current interval."                       q"The number of received (PHY to MAC) classB CIR unicast frames
                        in the current interval."                       q"The number of received (PHY to MAC) classB CIR unicast octets
                        in the current interval."                       q"The number of received (PHY to MAC) classB EIR unicast frames
                        in the current interval."                       q"The number of received (PHY to MAC) classB EIR unicast octets
                        in the current interval."                       m"The number of received (PHY to MAC) classC unicast frames
                        in the current interval."                       m"The number of received (PHY to MAC) classC unicast octets
                        in the current interval."                       }"The number of received (PHY to MAC) classA multicast and
                        broadcast frames in the current interval."                       }"The number of received (PHY to MAC) classA multicast and
                        broadcast octets in the current interval."                       �"The number of received (PHY to MAC) classB CIR multicast and
                        broadcast frames in the current interval."                       �"The number of received (PHY to MAC) classB CIR multicast and
                        broadcast octets in the current interval."                       �"The number of received (PHY to MAC) classB EIR multicast and
                        broadcast frames in the current interval."                       �"The number of received (PHY to MAC) classB EIR multicast and
                        broadcast octets in the current interval."                       }"The number of received (PHY to MAC) classC multicast and
                        broadcast frames in the current interval."                       }"The number of received (PHY to MAC) classC multicast and
                        broadcast octets in the current interval."                       p"The number of transmitted (MAC to PHY) classA unicast frames
                        in the current interval."                       p"The number of transmitted (MAC to PHY) classA unicast octets
                        in the current interval."                       t"The number of transmitted (MAC to PHY) classB CIR unicast frames
                        in the current interval."                       t"The number of transmitted (MAC to PHY) classB CIR unicast octets
                        in the current interval."                       t"The number of transmitted (MAC to PHY) classB EIR unicast frames
                        in the current interval."                       t"The number of transmitted (MAC to PHY) classB EIR unicast octets
                        in the current interval."                       p"The number of transmitted (MAC to PHY) classC unicast frames
                        in the current interval."                       p"The number of transmitted (MAC to PHY) classC unicast octets
                        in the current interval."                       �"The number of transmitted (MAC to PHY) classA multicast and
                        broadcast frames in the current interval."                       �"The number of transmitted (MAC to PHY) classA multicast and
                        broadcast octets in the current interval."                       �"The number of transmitted (MAC to PHY) classB CIR multicast and
                        broadcast frames in the current interval."                       �"The number of transmitted (MAC to PHY) classB CIR multicast and
                        broadcast octets in the current interval."                       �"The number of transmitted (MAC to PHY) classB EIR multicast and
                        broadcast frames in the current interval."                       �"The number of transmitted (MAC to PHY) classB EIR multicast and
                        broadcast octets in the current interval."                       �"The number of transmitted (MAC to PHY) classC multicast and
                        broadcast frames in the current interval."                       �"The number of transmitted (MAC to PHY) classC multicast and
                        broadcast octets in the current interval."                       �"The RPR MAC Span interface interval counters table.
                        All attributes in this table are volatile,

                        i.e. will be cleared on system reset."                      �"Frames and octets statistics collected for a particular
                        interval for the RPR MAC Span interface of a
                        particular span of a particular RPR interface.
                        The corresponding instance of rprIfValidIntervals
                        indicates the number of intervals for which the set of

                        statistics is available."                       $"The ifIndex of this RPR interface."                       n"An indication of the span of the interface for which this
                        row contains information."                      {"A number between 1 and 96, which identifies the intervals
                        for which the set of statistics is available. The interval
                        identified by 1 is the most recently completed 15 minute
                        interval, and interval identified by N is the interval
                        immediately preceding the one identified by N-1."                       �"This variable indicates if the data for this interval
                        is valid.
                        It will be valid if it contains data for 900 seconds
                        plus or minus 10 seconds."                      %"The duration of a particular interval in seconds.
                        If, for some reason, such as an adjustment in the system's
                        time-of-day clock, the current interval exceeds the maximum
                        value, the agent will return the maximum value."                       ;"Indicates the wall clock time that this interval started."                       �"The number of received (PHY to MAC) classA unicast frames
                        in a particular interval in the past 24 hours."                       �"The number of received (PHY to MAC) classA unicast octets
                        in a particular interval in the past 24 hours."                       �"The number of received (PHY to MAC) classB CIR unicast frames
                        in a particular interval in the past 24 hours."                       �"The number of received (PHY to MAC) classB CIR unicast octets
                        in a particular interval in the past 24 hours."                       �"The number of received (PHY to MAC) classB EIR unicast
                        frames in a particular interval in the past 24 hours."                       �"The number of received (PHY to MAC) classB EIR unicast
                        octets in a particular interval in the past 24 hours."                       �"The number of received (PHY to MAC) classC unicast
                        frames in a particular interval in the past 24 hours."                       �"The number of received (PHY to MAC) classC unicast
                        octets in a particular interval in the past 24 hours."                       �"The number of received (PHY to MAC) classA multicast and
                        broadcast frames in a particular interval in the past 24 hours."                       �"The number of received (PHY to MAC) classA multicast and
                        broadcast octets in a particular interval in the past 24 hours."                       �"The number of received (PHY to MAC) classB CIR multicast and
                        broadcast frames in a particular interval in the past 24 hours."                       �"The number of received (PHY to MAC) classB CIR multicast and
                        broadcast octets in a particular interval in the past 24 hours."                       �"The number of received (PHY to MAC) classB EIR multicast and
                        broadcast frames in a particular interval in the past 24 hours."                       �"The number of received (PHY to MAC) classB EIR multicast and
                        broadcast octets in a particular interval in the past 24 hours."                       �"The number of received (PHY to MAC) classC multicast and
                        broadcast frames in a particular interval in the past 24 hours."                       �"The number of received (PHY to MAC) classC multicast and
                        broadcast octets in a particular interval in the past 24 hours."                       �"The number of transmitted (MAC to PHY) classA unicast frames
                        in a particular interval in the past 24 hours."                       �"The number of transmitted (MAC to PHY) classA unicast octets
                        in a particular interval in the past 24 hours."                       �"The number of transmitted (MAC to PHY) classB CIR unicast frames,
                        in a particular interval in the past 24 hours."                       �"The number of transmitted (MAC to PHY) classB CIR unicast octets
                        in a particular interval in the past 24 hours."                       �"The number of transmitted (MAC to PHY) classB EIR unicast frames
                        in a particular interval in the past 24 hours."                       �"The number of transmitted (MAC to PHY) classB EIR unicast octets
                        in a particular interval in the past 24 hours."                       �"The number of transmitted (MAC to PHY) classC unicast frames
                        in a particular interval in the past 24 hours."                       �"The number of transmitted (MAC to PHY) classC unicast octets
                        in a particular interval in the past 24 hours."                       �"The number of transmitted (MAC to PHY) classA multicast and
                        broadcast frames in a particular interval in the past 24 hours."                       �"The number of transmitted (MAC to PHY) classA multicast and
                        broadcast octets in a particular interval in the past 24 hours."                       �"The number of transmitted (MAC to PHY) classB CIR multicast and
                        broadcast frames in a particular interval in the past 24 hours."                       �"The number of transmitted (MAC to PHY) classB CIR multicast and
                        broadcast octets in a particular interval in the past 24 hours."                       �"The number of transmitted (MAC to PHY) classB EIR multicast and
                        broadcast frames in a particular interval in the past 24 hours."                       �"The number of transmitted (MAC to PHY) classB EIR multicast and
                        broadcast octets in a particular interval in the past 24 hours."                       �"The number of transmitted (MAC to PHY) classC multicast and
                        broadcast frames in a particular interval in the past 24 hours."                       �"The number of transmitted (MAC to PHY) classC multicast and
                        broadcast octets in a particular interval in the past 24 hours."                      B"The RPR Mac Span Day Table contains the cumulative sum
                        of the various statistics for the 24 hour period
                        preceding the current interval.

                        All attributes in this table are volatile,

                        i.e. will be cleared on system reset."                       %"An entry in the RPR Span Day table."                       $"The ifIndex of this RPR interface."                       n"An indication of the span of the interface for which this
                        row contains information."                       <"The number of received (PHY to MAC) classA unicast frames."                       <"The number of received (PHY to MAC) classA unicast octets."                       @"The number of received (PHY to MAC) classB CIR unicast frames."                       @"The number of received (PHY to MAC) classB CIR unicast octets."                       @"The number of received (PHY to MAC) classB EIR unicast frames."                       @"The number of received (PHY to MAC) classB EIR unicast octets."                       <"The number of received (PHY to MAC) classC unicast frames."                       <"The number of received (PHY to MAC) classC unicast octets."                       d"The number of received (PHY to MAC) classA multicast
                        and broadcast frames"                       d"The number of received (PHY to MAC) classA multicast
                        and broadcast octets"                       h"The number of received (PHY to MAC) classB CIR multicast
                        and broadcast frames"                       h"The number of received (PHY to MAC) classB CIR multicast
                        and broadcast octets"                       h"The number of received (PHY to MAC) classB EIR multicast
                        and broadcast frames"                       h"The number of received (PHY to MAC) classB EIR multicast
                        and broadcast octets"                       d"The number of received (PHY to MAC) classC multicast
                        and broadcast frames"                       d"The number of received (PHY to MAC) classC multicast
                        and broadcast octets"                       ?"The number of transmitted (MAC to PHY) classA unicast frames."                       ?"The number of transmitted (MAC to PHY) classA unicast octets."                       C"The number of transmitted (MAC to PHY) classB CIR unicast frames."                       C"The number of transmitted (MAC to PHY) classB CIR unicast octets."                       ["The number of transmitted (MAC to PHY) classB EIR unicast
                        frames"                       ["The number of transmitted (MAC to PHY) classB EIR unicast
                        octets"                       >"The number of transmitted (MAC to PHY) classC unicast frames"                       >"The number of transmitted (MAC to PHY) classC unicast octets"                       h"The number of transmitted (MAC to PHY) classA multicast and broadcast
                        frames."                       h"The number of transmitted (MAC to PHY) classA multicast and broadcast
                        octets."                       l"The number of transmitted (MAC to PHY) classB CIR
                        multicast and broadcast frames."                       l"The number of transmitted (MAC to PHY) classB CIR
                        multicast and broadcast octets."                       l"The number of transmitted (MAC to PHY) classB EIR
                        multicast and broadcast frames."                       l"The number of transmitted (MAC to PHY) classB EIR
                        multicast and broadcast octets."                       h"The number of transmitted (MAC to PHY) classC multicast and broadcast
                        frames."                       h"The number of transmitted (MAC to PHY) classC multicast and broadcast
                        octets."                      R"The RPR Mac Span interface total counters table.

                        The DiscontinuityTime for this table is indicated by
                        ifCounterDiscontinuityTime defined in ifXTable.

                        All attributes in this table are volatile,

                        i.e. will be cleared on system reset."                       #"An entry in the span stats table."                       $"The ifIndex of this RPR interface."                       n"An indication of the span of the interface for which this
                        row contains information." #"IEEE 802.17 Subclause 7.2.2, myRi"                     <"The number of received (PHY to MAC) classA unicast frames." 2"IEEE 802.17 Subclause 7.2.5, rxUcastClassAFrames"                     <"The number of received (PHY to MAC) classA unicast octets." 1"IEEE 802.17 Subclause 7.2.5, rxUcastClassABytes"                     @"The number of received (PHY to MAC) classB CIR unicast frames." 5"IEEE 802.17 Subclause 7.2.5, rxUcastClassBCirFrames"                     @"The number of received (PHY to MAC) classB CIR unicast octets." 4"IEEE 802.17 Subclause 7.2.5, rxUcastClassBCirBytes"                     @"The number of received (PHY to MAC) classB EIR unicast frames." 5"IEEE 802.17 Subclause 7.2.5, rxUcastClassBEirFrames"                     @"The number of received (PHY to MAC) classB EIR unicast octets." 4"IEEE 802.17 Subclause 7.2.5, rxUcastClassBEirBytes"                     <"The number of received (PHY to MAC) classC unicast frames." 2"IEEE 802.17 Subclause 7.2.5, rxUcastClassCFrames"                     <"The number of received (PHY to MAC) classC unicast octets." 1"IEEE 802.17 Subclause 7.2.5, rxUcastClassCBytes"                     d"The number of received (PHY to MAC) classA multicast and
                        broadcast frames" 2"IEEE 802.17 Subclause 7.2.5, rxMcastClassAFrames"                     d"The number of received (PHY to MAC) classA multicast and
                        broadcast octets" 1"IEEE 802.17 Subclause 7.2.5, rxMcastClassABytes"                     h"The number of received (PHY to MAC) classB CIR multicast
                        and broadcast frames" 5"IEEE 802.17 Subclause 7.2.5, rxMcastClassBCirFrames"                     h"The number of received (PHY to MAC) classB CIR multicast
                        and broadcast octets" 4"IEEE 802.17 Subclause 7.2.5, rxMcastClassBCirBytes"                     h"The number of received (PHY to MAC) classB EIR multicast
                        and broadcast frames" 5"IEEE 802.17 Subclause 7.2.5, rxMcastClassBEirFrames"                     h"The number of received (PHY to MAC) classB EIR multicast
                        and broadcast octets" 4"IEEE 802.17 Subclause 7.2.5, rxMcastClassBEirBytes"                     d"The number of received (PHY to MAC) classC multicast and
                        broadcast frames" 2"IEEE 802.17 Subclause 7.2.5, rxMcastClassCFrames"                     d"The number of received (PHY to MAC) classC multicast and
                        broadcast octets" 1"IEEE 802.17 Subclause 7.2.5, rxMcastClassCBytes"                    �"The number of received (PHY to MAC) control frames
                        processed by this MAC.
                         This does not include control frames in transit,

                        i.e. a multicast control frame received from a ringlet
                         will be counted as In but not Out.
                         This does not include Fairness or idle frames." +"IEEE 802.17 Subclause 7.2.5, toCtrlFrames"                     e"The number of received (PHY to MAC) OAM echo
                        frames processed by this MAC." 2"IEEE 802.17 Subclause 7.2.5, toCtrlOamEchoFrames"                     f"The number of received (PHY to MAC) OAM flush
                        frames processed by this MAC." 3"IEEE 802.17 Subclause 7.2.5, toCtrlOamFlushFrames"                     d"The number of received (PHY to MAC) OAM Org
                        frames processed by this MAC." 1"IEEE 802.17 Subclause 7.2.5, toCtrlOamOrgFrames"                     i"The number of received (PHY to MAC) Topology ATD
                        frames processed by this MAC." 2"IEEE 802.17 Subclause 7.2.5, toCtrlTopoATDFrames"                     n"The number of received (PHY to MAC) topology
                        checksum frames processed by this MAC." 2"IEEE 802.17 Subclause 7.2.5, toCtrlTopoSumFrames"                     h"The number of received (PHY to MAC) topology TP
                        frames processed by this MAC." 1"IEEE 802.17 Subclause 7.2.5, toCtrlTopoTPFrames"                     ?"The number of transmitted (MAC to PHY) classA unicast frames." 2"IEEE 802.17 Subclause 7.2.5, txUcastClassAFrames"                     ?"The number of transmitted (MAC to PHY) classA unicast octets." 1"IEEE 802.17 Subclause 7.2.5, txUcastClassABytes"                     C"The number of transmitted (MAC to PHY) classB CIR unicast frames." 5"IEEE 802.17 Subclause 7.2.5, txUcastClassBCirFrames"                     C"The number of transmitted (MAC to PHY) classB CIR unicast octets." 4"IEEE 802.17 Subclause 7.2.5, txUcastClassBCirBytes"                     B"The number of transmitted (MAC to PHY) classB EIR unicast frames" 5"IEEE 802.17 Subclause 7.2.5, txUcastClassBEirFrames"                     B"The number of transmitted (MAC to PHY) classB EIR unicast octets" 4"IEEE 802.17 Subclause 7.2.5, txUcastClassBEirBytes"                     >"The number of transmitted (MAC to PHY) classC unicast frames" 2"IEEE 802.17 Subclause 7.2.5, txUcastClassCFrames"                     >"The number of transmitted (MAC to PHY) classC unicast octets" 1"IEEE 802.17 Subclause 7.2.5, txUcastClassCBytes"                     h"The number of transmitted (MAC to PHY) classA multicast and
                        broadcast frames." 2"IEEE 802.17 Subclause 7.2.5, txMcastClassAFrames"                     h"The number of transmitted (MAC to PHY) classA multicast and
                        broadcast octets." 1"IEEE 802.17 Subclause 7.2.5, txMcastClassABytes"                     l"The number of transmitted (MAC to PHY) classB CIR
                        multicast and broadcast frames." 5"IEEE 802.17 Subclause 7.2.5, txMcastClassBCirFrames"                     l"The number of transmitted (MAC to PHY) classB CIR
                        multicast and broadcast octets." 4"IEEE 802.17 Subclause 7.2.5, txMcastClassBCirBytes"                     l"The number of transmitted (MAC to PHY) classB EIR
                        multicast and broadcast frames." 5"IEEE 802.17 Subclause 7.2.5, txMcastClassBEirFrames"                     l"The number of transmitted (MAC to PHY) classB EIR
                        multicast and broadcast octets." 4"IEEE 802.17 Subclause 7.2.5, txMcastClassBEirBytes"                     h"The number of transmitted (MAC to PHY) classC multicast and
                        broadcast frames." 2"IEEE 802.17 Subclause 7.2.5, txMcastClassCFrames"                     h"The number of transmitted (MAC to PHY) classC multicast and
                        broadcast octets." 1"IEEE 802.17 Subclause 7.2.5, txMcastClassCBytes"                    �"The number of transmitted (MAC to PHY) control frames
                        generated by this MAC.
                        This does not include control frames in transit,

                        i.e. a multicast control frame received from a ringlet
                        will be counted as In but not Out.
                        This does not include Fairness or idle frames." -"IEEE 802.17 Subclause 7.2.5, fromCtrlFrames"                     h"The number of transmitted (MAC to PHY) OAM echo
                        frames generated by this MAC." 4"IEEE 802.17 Subclause 7.2.5, fromCtrlOamEchoFrames"                     i"The number of transmitted (MAC to PHY) OAM flush
                        frames generated by this MAC." 5"IEEE 802.17 Subclause 7.2.5, fromCtrlOamFlushFrames"                     g"The number of transmitted (MAC to PHY) OAM Org
                        frames generated by this MAC." 3"IEEE 802.17 Subclause 7.2.5, fromCtrlOamOrgFrames"                     l"The number of transmitted (MAC to PHY) topology
                        ATD frames generated by this MAC." 4"IEEE 802.17 Subclause 7.2.5, fromCtrlTopoATDFrames"                     q"The number of transmitted (MAC to PHY) topology
                        checksum frames generated by this MAC." 4"IEEE 802.17 Subclause 7.2.5, fromCtrlTopoSumFrames"                     k"The number of transmitted (MAC to PHY) topology
                        TP frames generated by this MAC." 3"IEEE 802.17 Subclause 7.2.5, fromCtrlTopoTPFrames"                         �"The local station traffic current counters table.

                        All attributes in this table are volatile,

                        i.e. will be cleared on system reset."                      a"Frames and octets statistics for the current interval for
                        the local station traffic of a particular RPR client interface.
                        The corresponding instance of rprIfTimeElapsed indicates
                        the number of seconds which have elapsed so far in the
                        current interval."                       $"The ifIndex of this RPR interface." "RFC 2863, ifIndex"                     e"The number of MAC to client classA unicast frames in
                        the current interval."                       e"The number of MAC to client classA unicast octets in
                        the current interval."                       i"The number of MAC to client classB CIR unicast frames in
                        the current interval."                       i"The number of MAC to client classB CIR unicast octets
                        in the current interval."                       i"The number of MAC to client classB EIR unicast
                        frames in the current interval."                       i"The number of MAC to client classB EIR unicast
                        octets in the current interval."                       e"The number of MAC to client classC unicast frames in the
                        current interval."                       e"The number of MAC to client classC unicast octets in the
                        current interval."                       u"The number of MAC to client classA multicast and broadcast
                        frames in the current interval."                       u"The number of MAC to client classA multicast and broadcast
                        octets in the current interval."                       y"The number of MAC to client classB CIR
                        multicast and broadcast frames in the current interval."                       y"The number of MAC to client classB CIR
                        multicast and broadcast octets in the current interval."                       y"The number of MAC to client classB EIR
                        multicast and broadcast frames in the current interval."                       y"The number of MAC to client classB EIR
                        multicast and broadcast octets in the current interval."                       u"The number of MAC to client classC multicast and broadcast
                        frames in the current interval."                       u"The number of MAC to client classC multicast and broadcast
                        octets in the current interval."                       e"The number of client to MAC classA unicast frames
                        in the current interval."                       e"The number of client to MAC classA unicast octets
                        in the current interval."                       i"The number of client to MAC classB CIR unicast
                        frames in the current interval."                       i"The number of client to MAC classB CIR unicast
                        octets in the current interval."                       i"The number of client to MAC classB EIR unicast
                        frames in the current interval."                       i"The number of client to MAC classB EIR unicast
                        octets in the current interval."                       e"The number of client to MAC classC unicast frames
                        in the current interval."                       e"The number of client to MAC classC unicast octets
                        in the current interval."                       u"The number of client to MAC classA multicast and broadcast
                        frames in the current interval."                       u"The number of client to MAC classA multicast and broadcast
                        octets in the current interval."                       y"The number of client to MAC classB CIR
                        multicast and broadcast frames in the current interval."                       y"The number of client to MAC classB CIR
                        multicast and broadcast octets in the current interval."                       y"The number of client to MAC classB EIR
                        multicast and broadcast frames in the current interval."                       y"The number of client to MAC classB EIR
                        multicast and broadcast octets in the current interval."                       u"The number of client to MAC classC multicast and broadcast
                        frames in the current interval."                       u"The number of client to MAC classC multicast and broadcast
                        octets in the current interval."                       �"The local station traffic interval counters table.
                        All attributes in this table are volatile,
                        i.e. will be cleared on system reset."                      z"Frames and octets statistics collected for a particular
                        interval for local station traffic of a particular RPR
                        interface.
                        The corresponding instance of rprIfValidIntervals indicates
                        the number of intervals for which the set of statistics is
                        available."                       $"The ifIndex of this RPR interface."                      z"A number between 1 and 96, which identifies the interval
                        for which the set of statistics is available. The interval
                        identified by 1 is the most recently completed 15 minute
                        interval, and interval identified by N is the interval
                        immediately preceding the one identified by N-1."                       �"This variable indicates if the data for this interval
                        is valid.
                        It will be valid if it contains data for 900 seconds
                        plus or minus 10 seconds."                      %"The duration of a particular interval in seconds.
                        If, for some reason, such as an adjustment in the system's
                        time-of-day clock, the current interval exceeds the maximum
                        value, the agent will return the maximum value."                       {"The number of MAC to client classA unicast frames
                        in a particular interval in the past 24 hours."                       {"The number of MAC to client classA unicast octets
                        in a particular interval in the past 24 hours."                       "The number of MAC to client classB CIR unicast frames
                        in a particular interval in the past 24 hours."                       "The number of MAC to client classB CIR unicast octets
                        in a particular interval in the past 24 hours."                       "The number of MAC to client classB EIR unicast
                        frames in a particular interval in the past 24 hours."                       "The number of MAC to client classB EIR unicast
                        octets in a particular interval in the past 24 hours."                       {"The number of MAC to client classC unicast
                        frames in a particular interval in the past 24 hours."                       {"The number of MAC to client classC unicast
                        octets in a particular interval in the past 24 hours."                       �"The number of MAC to client classA multicast and broadcast
                        frames in a particular interval in the past 24 hours."                       �"The number of MAC to client classA multicast and broadcast
                        octets in a particular interval in the past 24 hours."                       �"The number of MAC to client classB CIR multicast and
                        broadcast frames in a particular interval in the past
                        24 hours."                       �"The number of MAC to client classB CIR multicast and
                        broadcast octets in a particular interval in the past
                        24 hours."                       �"The number of MAC to client classB EIR multicast and
                        broadcast frames in a particular interval in the past
                        24 hours."                       �"The number of MAC to client classB EIR multicast and
                        broadcast octets in a particular interval in the past
                        24 hours."                       �"The number of MAC to client classC multicast and broadcast
                        frames in a particular interval in the past 24 hours."                       �"The number of MAC to client classC multicast and broadcast
                        octets in a particular interval in the past 24 hours."                       {"The number of client to MAC classA unicast frames
                        in a particular interval in the past 24 hours."                       {"The number of client to MAC classA unicast octets
                        in a particular interval in the past 24 hours."                       "The number of client to MAC classB CIR unicast frames
                        in a particular interval in the past 24 hours."                       "The number of client to MAC classB CIR unicast octets
                        in a particular interval in the past 24 hours."                       "The number of client to MAC classB EIR unicast
                        frames in a particular interval in the past 24 hours."                       "The number of client to MAC classB EIR unicast
                        octets in a particular interval in the past 24 hours."                       {"The number of client to MAC classC unicast
                        frames in a particular interval in the past 24 hours."                       {"The number of client to MAC classC unicast
                        octets in a particular interval in the past 24 hours."                       �"The number of client to MAC classA multicast and broadcast
                        frames in a particular interval in the past 24 hours."                       �"The number of client to MAC classA multicast and broadcast
                        octets in a particular interval in the past 24 hours."                       �"The number of client to MAC classB CIR multicast
                        and broadcast frames in a particular interval in the
                        past 24 hours."                       �"The number of client to MAC classB CIR multicast
                        and broadcast octets in a particular interval in the
                        past 24 hours."                       �"The number of client to MAC classB EIR multicast
                        and broadcast frames in a particular interval in the
                           past 24 hours."                       �"The number of client to MAC classB EIR multicast
                        and broadcast octets in a particular interval in the
                        past 24 hours."                       �"The number of client to MAC classC multicast and broadcast
                        frames in a particular interval in the past 24 hours."                       �"The number of client to MAC classC multicast and broadcast
                        octets in a particular interval in the past 24 hours."                      D"The RPR Mac Client Day Table contains the cumulative sum
                        of the various statistics for the 24 hour period
                        preceding the current interval.

                        All attributes in this table are volatile,

                        i.e. will be cleared on system reset."                       '"An entry in the RPR Client Day table."                       $"The ifIndex of this RPR interface."                       4"The number of MAC to client classA unicast frames."                       4"The number of MAC to client classA unicast octets."                       8"The number of MAC to client classB CIR unicast frames."                       8"The number of MAC to client classB CIR unicast octets."                       8"The number of MAC to client classB EIR unicast frames."                       8"The number of MAC to client classB EIR unicast octets."                       4"The number of MAC to client classC unicast frames."                       4"The number of MAC to client classC unicast octets."                       C"The number of MAC to client classA multicast and broadcast frames"                       C"The number of MAC to client classA multicast and broadcast octets"                       `"The number of MAC to client classB CIR multicast
                        and broadcast frames"                       `"The number of MAC to client classB CIR multicast
                        and broadcast octets"                       `"The number of MAC to client classB EIR multicast
                        and broadcast frames"                       `"The number of MAC to client classB EIR multicast
                        and broadcast octets"                       C"The number of MAC to client classC multicast and broadcast frames"                       C"The number of MAC to client classC multicast and broadcast octets"                       4"The number of client to MAC classA unicast frames."                       4"The number of client to MAC classA unicast octets."                       8"The number of client to MAC classB CIR unicast frames."                       8"The number of client to MAC classB CIR unicast octets."                       P"The number of client to MAC classB EIR unicast
                        frames"                       P"The number of client to MAC classB EIR unicast
                        octets"                       3"The number of client to MAC classC unicast frames"                       3"The number of client to MAC classC unicast octets"                       ]"The number of client to MAC classA multicast and broadcast
                        frames."                       ]"The number of client to MAC classA multicast and broadcast
                        octets."                       a"The number of client to MAC classB CIR
                        multicast and broadcast frames."                       a"The number of client to MAC classB CIR
                        multicast and broadcast octets."                       a"The number of client to MAC classB EIR
                        multicast and broadcast frames."                       a"The number of client to MAC classB EIR
                        multicast and broadcast octets."                       ]"The number of client to MAC classC multicast and broadcast
                        frames."                       ]"The number of client to MAC classC multicast and broadcast
                        octets."                      Q"The local station traffic total counters table.

                        The DiscontinuityTime for this table is indicated by
                        ifCounterDiscontinuityTime defined in ifXTable.

                        All attributes in this table are volatile,

                        i.e. will be cleared on system reset."                       #"An entry in the span stats table."                       $"The ifIndex of this RPR interface."                       4"The number of MAC to client classA unicast frames." 8"IEEE 802.17 Subclause 7.2.5, toClientUcastClassAFrames"                     4"The number of MAC to client classA unicast octets." 7"IEEE 802.17 Subclause 7.2.5, toClientUcastClassABytes"                     8"The number of MAC to client classB CIR unicast frames." <"IEEE 802.17 Subclause 7.2.5, toClientUcastClassBCirAFrames"                     8"The number of MAC to client classB CIR unicast octets." :"IEEE 802.17 Subclause 7.2.5, toClientUcastClassBCirBytes"                     8"The number of MAC to client classB EIR unicast frames." ;"IEEE 802.17 Subclause 7.2.5, toClientUcastClassBEirFrames"                     8"The number of MAC to client classB EIR unicast octets." :"IEEE 802.17 Subclause 7.2.5, toClientUcastClassBEirBytes"                     4"The number of MAC to client classC unicast frames." 8"IEEE 802.17 Subclause 7.2.5, toClientUcastClassCFrames"                     4"The number of MAC to client classC unicast octets." 7"IEEE 802.17 Subclause 7.2.5, toClientUcastClassCBytes"                     C"The number of MAC to client classA multicast and broadcast frames" 8"IEEE 802.17 Subclause 7.2.5, toClientMcastClassAFrames"                     C"The number of MAC to client classA multicast and broadcast octets" 7"IEEE 802.17 Subclause 7.2.5, toClientMcastClassABytes"                     `"The number of MAC to client classB CIR multicast
                        and broadcast frames" ;"IEEE 802.17 Subclause 7.2.5, toClientMcastClassBCirFrames"                     `"The number of MAC to client classB CIR multicast
                        and broadcast octets" :"IEEE 802.17 Subclause 7.2.5, toClientMcastClassBCirBytes"                     `"The number of MAC to client classB EIR multicast
                        and broadcast frames" ;"IEEE 802.17 Subclause 7.2.5, toClientMcastClassBEirFrames"                     `"The number of MAC to client classB EIR multicast
                        and broadcast octets" :"IEEE 802.17 Subclause 7.2.5, toClientMcastClassBEirBytes"                     C"The number of MAC to client classC multicast and broadcast frames" 8"IEEE 802.17 Subclause 7.2.5, toClientMcastClassCFrames"                     C"The number of MAC to client classC multicast and broadcast octets" 7"IEEE 802.17 Subclause 7.2.5, toClientMcastClassCBytes"                     �"The number of MAC to client broadcast frames.
                        This is used only when deriving the multicast
                        and broadcast packet counters for the interface MIB." 2"IEEE 802.17 Subclause 7.2.5, toClientBcastFrames"                     4"The number of client to MAC classA unicast frames." :"IEEE 802.17 Subclause 7.2.5, fromClientUcastClassAFrames"                     4"The number of client to MAC classA unicast octets." 9"IEEE 802.17 Subclause 7.2.5, fromClientUcastClassABytes"                     8"The number of client to MAC classB CIR unicast frames." ="IEEE 802.17 Subclause 7.2.5, fromClientUcastClassBCirFrames"                     8"The number of client to MAC classB CIR unicast octets." <"IEEE 802.17 Subclause 7.2.5, fromClientUcastClassBCirBytes"                     P"The number of client to MAC classB EIR unicast
                        frames" ="IEEE 802.17 Subclause 7.2.5, fromClientUcastClassBEirFrames"                     P"The number of client to MAC classB EIR unicast
                        octets" <"IEEE 802.17 Subclause 7.2.5, fromClientUcastClassBEirBytes"                     3"The number of client to MAC classC unicast frames" :"IEEE 802.17 Subclause 7.2.5, fromClientUcastClassCFrames"                     3"The number of client to MAC classC unicast octets" 9"IEEE 802.17 Subclause 7.2.5, fromClientUcastClassCBytes"                     ]"The number of client to MAC classA multicast and broadcast
                        frames." :"IEEE 802.17 Subclause 7.2.5, fromClientMcastClassAFrames"                     ]"The number of client to MAC classA multicast and broadcast
                        octets." 9"IEEE 802.17 Subclause 7.2.5, fromClientMcastClassABytes"                     a"The number of client to MAC classB CIR
                        multicast and broadcast frames." ="IEEE 802.17 Subclause 7.2.5, fromClientMcastClassBCirFrames"                     a"The number of client to MAC classB CIR
                        multicast and broadcast octets." <"IEEE 802.17 Subclause 7.2.5, fromClientMcastClassBCirBytes"                     a"The number of client to MAC classB EIR
                        multicast and broadcast frames." ="IEEE 802.17 Subclause 7.2.5, fromClientMcastClassBEirFrames"                     a"The number of client to MAC classB EIR
                        multicast and broadcast octets." <"IEEE 802.17 Subclause 7.2.5, fromClientMcastClassBEirBytes"                     ]"The number of client to MAC classC multicast and broadcast
                        frames." :"IEEE 802.17 Subclause 7.2.5, fromClientMcastClassCFrames"                     ]"The number of client to MAC classC multicast and broadcast
                        octets." 9"IEEE 802.17 Subclause 7.2.5, fromClientMcastClassCBytes"                     �"The number of client to MAC broadcast frames.
                        This is used only when deriving the multicast
                        and broadcast packet counters for the interface MIB." 4"IEEE 802.17 Subclause 7.2.5, fromClientBcastFrames"                         �"The RPR Errors Current counters table.

                        All attributes in this table are volatile,

                        i.e. will be cleared on system reset."                      F"Errors statistics for the current interval of a particular
                        span of a particular RPR interface.
                        The corresponding instance of rprIfTimeElapsed indicates
                        the number of seconds which have elapsed so far in the
                        current interval."                       $"The ifIndex of this RPR interface." "RFC 2863, ifIndex"                     n"An indication of the span of the interface for which this
                        row contains information."                       |"The number of received (PHY to MAC) data frames that were dropped
                        due to zero Time To Live (TTL)."                       s"The number of received (PHY to MAC) frames that exceed the
                        maximum permitted frame size."                       u"The number of received (PHY to MAC) frames shortest than the
                        minimum permitted frame size."                       <"The number of received (PHY to MAC) frames with HEC error."                      1"The number of received (PHY to MAC) data and control frames
                        where the fcs value did not match the expected fcs value.

                        This includes data frames passed to the client as a result of
                        rprIfMacOperModes being not set to dropBadFcs."                       �"The number of received (PHY to MAC) unicast frames that were
                        transmitted by the station itself i.e.
                        the source MAC is equal to the interface MAC."                       c"The number of received (PHY to MAC) frames that were
                        aborted by the PMD."                       \"The number of received (PHY to MAC) frames
                        with invalid SA value."                       y"The number of received (PHY to MAC) frames
                        parity value not matching the expected parity value"                       r"The number of received (PHY to MAC) frames
                        that were removed due to context containment"                       o"The number of received (PHY to MAC) errored SCFF,
                        with bad parity, bad FCS, or both."                        "The number of errored seconds."                       )"The number of severely errored seconds."                       $"The number of unavailable seconds."                       �"The RPR Errors Interval counters table.

                        All attributes in this table are volatile,

                        i.e. will be cleared on system reset."                      P"Error statistics collected for a particular interval of a
                        particular span of a particular RPR interface.
                        The corresponding instance of rprIfValidIntervals indicates
                        the number of intervals for which the set of statistics is
                        available."                       $"The ifIndex of this RPR interface."                       n"An indication of the span of the interface for which this
                        row contains information."                      z"A number between 1 and 96, which identifies the interval
                        for which the set of statistics is available. The interval
                        identified by 1 is the most recently completed 15 minute
                        interval, and interval identified by N is the interval
                        immediately preceding the one identified by N-1."                       �"This variable indicates if the data for this interval
                        is valid.
                        It will be valid if it contains data for 900 seconds
                        plus or minus 10 seconds."                      %"The duration of a particular interval in seconds.
                        If, for some reason, such as an adjustment in the system's
                        time-of-day clock, the current interval exceeds the maximum
                        value, the agent will return the maximum value."                       �"The number of received (PHY to MAC) frames that were dropped due to
                        zero Time To Live (TTL) in a particular interval in the
                        past 24 hours"                       �"The number of received (PHY to MAC) frames that exceed the maximum
                        permitted frame size in a particular interval in the
                        past 24 hours"                       �"The number of received (PHY to MAC) frames shortest than the
                        minimum permitted frame size in a particular interval
                        in the past 24 hours."                       �"The number of received (PHY to MAC) frames with HEC error in a
                        particular interval in the past 24 hours"                      1"The number of received (PHY to MAC) data and control frames
                        where the fcs value did not match the expected fcs value.

                        This includes data frames passed to the client as a result of
                        rprIfMacOperModes being not set to dropBadFcs."                       �"The number of received (PHY to MAC) unicast frames that were transmitted
                        by the station itself i.e. the source MAC is equal to the
                        interface MAC, in a particular interval in the past 24 hours"                       �"The number of received (PHY to MAC) unicast frames that were aborted
                        by the PMD layer, in a particular interval in the past
                        24 hours"                       \"The number of received (PHY to MAC) frames
                        with invalid SA value."                       y"The number of received (PHY to MAC) frames
                        parity value not matching the expected parity value"                       r"The number of received (PHY to MAC) frames
                        that were removed due to context containment"                       o"The number of received (PHY to MAC) errored SCFF,
                        with bad parity, bad FCS, or both."                        "The number of errored seconds."                       )"The number of severely errored seconds."                       $"The number of unavailable seconds."                      C"The RPR Mac Error Day Table contains the cumulative sum
                        of the various statistics for the 24 hour period
                        preceding the current interval.

                        All attributes in this table are volatile,

                        i.e. will be cleared on system reset."                       &"An entry in the RPR Error Day table."                       $"The ifIndex of this RPR interface."                       n"An indication of the span of the interface for which this
                        row contains information."                       w"The number of received (PHY to MAC) frames that were dropped
                        due to zero Time To Live (TTL)."                       s"The number of received (PHY to MAC) frames that exceed the
                        maximum permitted frame size."                       u"The number of received (PHY to MAC) frames shortest than the
                        minimum permitted frame size."                       <"The number of received (PHY to MAC) frames with HEC error."                      1"The number of received (PHY to MAC) data and control frames
                        where the fcs value did not match the expected fcs value.

                        This includes data frames passed to the client as a result of
                        rprIfMacOperModes being not set to dropBadFcs."                       �"The number of received (PHY to MAC) unicast frames that were
                        transmitted by the station itself i.e.
                        the source MAC is equal to the interface MAC."                       b"The number of received (PHY to MAC) frames that were
                        aborted by the PMD"                       \"The number of received (PHY to MAC) frames
                        with invalid SA value."                       y"The number of received (PHY to MAC) frames
                        parity value not matching the expected parity value"                       r"The number of received (PHY to MAC) frames
                        that were removed due to context containment"                       o"The number of received (PHY to MAC) errored SCFF,
                        with bad parity, bad FCS, or both."                        "The number of errored seconds."                       )"The number of severely errored seconds."                       $"The number of unavailable seconds."                      F"The RPR Errors total counters table.

                        The DiscontinuityTime for this table is indicated by
                        ifCounterDiscontinuityTime defined in ifXTable.

                        All attributes in this table are volatile,

                        i.e. will be cleared on system reset."                       +"An entry in the span error counter table."                       $"The ifIndex of this RPR interface."                       n"An indication of the span of the interface for which this
                        row contains information." #"IEEE 802.17 Subclause 7.2.2, myRi"                     w"The number of received (PHY to MAC) frames that were dropped
                        due to zero Time To Live (TTL)." 3"IEEE 802.17 Subclause 7.6.3.6.2, ttlExpiredFrames"                     s"The number of received (PHY to MAC) frames that exceed the
                        maximum permitted frame size." 0"IEEE 802.17 Subclause 7.6.3.6.2, tooLongFrames"                     u"The number of received (PHY to MAC) frames shortest than the
                        minimum permitted frame size." 1"IEEE 802.17 Subclause 7.6.3.6.2, tooShortFrames"                     <"The number of received (PHY to MAC) frames with HEC error." /"IEEE 802.17 Subclause 7.6.3.6.2, badHecFrames"                    1"The number of received (PHY to MAC) data and control frames
                        where the fcs value did not match the expected fcs value.

                        This includes data frames passed to the client as a result of
                        rprIfMacOperModes being not set to dropBadFcs." /"IEEE 802.17 Subclause 7.6.3.6.2, badFcsFrames"                     �"The number of received (PHY to MAC) unicast frames that were
                        transmitted by the station itself i.e.
                        the source MAC is equal to the interface MAC." 4"IEEE 802.17 Subclause 7.6.3.8.2, selfSourcedFrames"                     b"The number of received (PHY to MAC) frames that
                        were aborted by the PMD" %"IEEE 802.17 Subclause 8.2.2, STATUS"                     \"The number of received (PHY to MAC) frames
                        with invalid SA value." 3"IEEE 802.17 Subclause 7.6.3.6.2, badAddressFrames"                     y"The number of received (PHY to MAC) frames
                        parity value not matching the expected parity value" 2"IEEE 802.17 Subclause 7.6.3.6.2, badParityFrames"                     r"The number of received (PHY to MAC) frames
                        that were removed due to context containment" )"IEEE 802.17 Subclause , containedFrames"                     o"The number of received (PHY to MAC) errored SCFF,
                        with bad parity, bad FCS, or both." ,"IEEE 802.17 Subclause 12.5.1.2, scffErrors"                             R"Collection of objects needed for RPR MAC
                        configuration."                 $"Collection of objects for RPR MAC."                 Z"Collection of objects needed for RPR MAC
                        statistics management."                 S"Collection of objects needed for RPR Span
                        configuration."                 %"Collection of objects for RPR Span."                 ["Collection of objects needed for RPR Span
                        Protection monitoring."                 S"Collection of objects needed for RPR Topology
                        discovery."                 W"Collection of objects needed for RPR Fairness
                        configuration."                 )"Collection of objects for RPR Fairness."                 R"Collection of objects needed for RPR OAM
                        configuration."                 Z"Collection of objects summarizes changes on
                        the RPR interfaces."                 V"Collection of objects counting MAC span current
                        statistics."                 X"Collection of objects counting MAC span intervals
                        statistics."                 W"Collection of objects counting MAC span 24 hours
                        statistics."                 T"Collection of objects counting MAC span total
                        statistics."                 b"Collection of objects counting MAC client interface
                        current statistics."                 d"Collection of objects counting MAC client interface
                        intervals statistics."                 c"Collection of objects counting MAC client interface
                        24 hours statistics."                 `"Collection of objects counting MAC client interface
                        total statistics."                 \"Collection of objects counting MAC span error
                        current statistics."                 ^"Collection of objects counting MAC span error
                        intervals statistics."                 ]"Collection of objects counting MAC span error
                        24 hours statistics."                 Z"Collection of objects counting MAC span error
                        total statistics."                     {"The compliance statement for agent that support RPR operation
                        with total statistics collections."   U"Collection of objects for RPR MAC.
                        This group is optional." V"Collection of objects for RPR span.
                        This group is optional." v"Current, interval, total intervals and running counters management.
                        This group is optional." Z"Collection of objects for RPR fairness.
                        This group is optional." _"OAM Echo and Flush control and status table.
                        This group is optional." W"RPR interfaces changes summry group.
                        This group is optional." h"Collection of RPR MAC Span current interval counters.
                        This group is optional." v"Collection of RPR MAC Span counters during specific 15min
                        interval. This group is optional."]"Collection of RPR MAC Span Day counters, contains the
                        cumulative sum of the span statistics for the 24 hour period
                        preceding the current interval.
                        This group is optional, the Span Day statistics can be
                        calculated from the 96 15min Intervals table." t"Collection of RPR MAC client interface current interval counters.
                        This group is optional." �"Collection of RPR MAC client interface counters during
                        specific 15min interval. This group is optional."m"Collection of RPR MAC Client Day counters, contains the
                        cumulative sum of the client interface statistics for the 24
                        hour period preceding the current interval.
                        This group is optional, the client Day statistics can be
                        calculated from the 96 15min Intervals table." n"Collection of RPR MAC span error current interval counters.
                        This group is optional." |"Collection of RPR MAC span error counters during
                        specific 15min interval. This group is optional."e"Collection of RPR MAC Error Day counters, contains the
                        cumulative sum of the span error statistics for the 24
                        hour period preceding the current interval.
                        This group is optional, the error Day statistics can be
                        calculated from the 96 15min Intervals table."                