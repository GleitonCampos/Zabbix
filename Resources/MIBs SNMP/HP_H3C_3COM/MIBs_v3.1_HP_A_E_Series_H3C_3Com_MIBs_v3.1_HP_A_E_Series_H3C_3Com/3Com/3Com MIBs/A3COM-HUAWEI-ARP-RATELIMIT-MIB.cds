�-- ============================================================================
-- Copyright (c) 2004-2010 Hangzhou H3C Tech. Co., Ltd. All rights reserved.
--
-- Description: The purpose of this MIB file is to provide the definition of
--              the ARP Rate Limit general configuration.
-- Reference:
-- Version: V1.0
-- History:
-- V1.0 2009-12-08
--   Initial version, created by gejianzhuang
-- ============================================================================
        "This MIB file defines the ARP packet rate limit configuration.
        The ARP packet rate limit feature monitors and controls the
        rate of ARP packets delivered to the CPU on a device.  The
        current version supports the monitoring feature only." �"Platform Team H3C Technologies Co., Ltd.
         Hai-Dian District Beijing P.R. China
         http://www.h3c.com
         Zip: 100085" "200912081912Z" '"The initial version of this MIB file."       -- DEC 08, 2009 at 19:12 GMT
                   �"If the rate of ARP packets delivered to the CPU on a device
        exceeds the threshold, a trap message is generated and sent
        to the remote monitoring device."                     ""The version of trap information."                       �"Number of cells in the trap message.  A trap message may contain
        multiple cells, each of which indicates that the rate information of
        ARP packets exceeds the threshold."                      $"This object is the cell section in a trap message sent from a
        monitored device.  This object can contain multiple cells.
        This object is in the format of '<cell1><cell2>...'.  Each cell
        consists of 17 octets in the format of
        '<TrapOrigin><IfIndex><OverSpeedValue><Threshold><Interval>'.

        <TrapOrigin> indicates the source of the trap message and has
        size of 1 octet.  It only supports the following values.
        1 - Global.
        2 - Interface.

        <IfIndex> is the index of the interface where the rate of ARP packet
        exceeds the threshold and has size of 4 octets.  It is 0xFFFFFFFF
        when <TrapOrigin> is 1(Global).

        <OverSpeedValue> indicates the rate that ARP packets are actually
        delivered and has size of 4 octets.

        <Threshold> indicates the threshold that ARP packets can be delivered
        to CPU and has size of 4 octets.

        <Interval> indicates the interval that a trap message is sent out
        and has size of 4 octets."                              