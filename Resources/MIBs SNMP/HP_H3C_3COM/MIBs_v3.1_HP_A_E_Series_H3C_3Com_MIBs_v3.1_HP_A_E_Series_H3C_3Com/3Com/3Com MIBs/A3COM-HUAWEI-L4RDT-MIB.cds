�-- **********************************************************************
-- Copyright (C) 2004 by  HUAWEI-3COM TECHNOLOGIES. All rights reserved.
-- **********************************************************************
--
-- Name:          Huawei-3Com Layer 4 Redirection MIB
-- 
-- Description: 
--  
-- This MIB is used to configure the redirection of network traffic to a
-- network appliance.  It is to be used for switches that are Layer 4 
-- capable.  It is divided into 3 tables and 4 scalar objects:  
-- the Cache table, the IP Exclusion Table, the Redirect VLAN table, 
-- the Information String object, the Free Cache Entries object, 
-- the Free IP Exclusion Entries object, and the Free Redirect VLAN 
-- Entries object.
-- 
-- The Cache table is responsible for storing the information
-- about each cache to which network traffic is potentially being
-- redirected.  This table includes the cache IP address, the status
-- of redirection, the cache port, the cache VLAN, and TCP port
-- information. 
-- 
-- The IP Exclusion table is responsible for storing the IP information 
-- on any IP addresses/subnetworks that are NOT allowed to be redirected.
-- 
-- The Redirect VLAN table is responsible for storing the VLAN ID of 
-- the packet which need to be redirected to the Web cache.
--
-- The Information String object is responsible for storing a string.  This 
-- string will contain information pertaining to configuring Layer 4
-- Redirection (success or failure). 
-- 
-- The Free Cache Entries object is responsible for storing the number
-- of entries that may still be added to the Cache Table.
-- 
-- The Free IP Exclusion Entries object is responsible for storing the 
-- number of entries that may still be added to the IP Exclusion Table. 
--
-- The Free Redirect VLAN Entries object is responsible for storing the 
-- number of entries that may still be added to the Redirect VLAN Table. 
--
-- History V2.0
--
-- V1.00     4/23/04     Created.
-- V2.0 2004-10-12 updated by gaolong
--      Add h3cL4Redirect MODULE-IDENTITY clause.
--      Change ACCESS clause to MAX-ACCESS
--      Change value of STATUS from mandatory to current
-- **********************************************************************
                                                         "See description above" 3"Platform Team Beijing Institute Huawei Tech, Inc."       -- Sept 21, 2002 at 00:00 GMT
       ^"This table contains an entry for each Web Cache 
        device that this unit is aware of."                       ."Each row specifies a known Web Cache device."                       I"This object specifies the IP address of the Web 
        Cache device."                      >"This object returns the current state of traffic 
        redirection to the cache.

        If redirection is disabled, this object shall return 
        disabledNotRedirecting(1).

        If a unit cannot be selected to perform the cache health check, 
        this object shall return enabledNoHealthChecker(2).

        If the software is determining if the cache is able to do 
        redirection(this will happen when the redirection state 
        transitions from disabled to enabled), this object shall return 
        enabledHealthChecking(3).

        If the cache health check succeeded but the hardware is unable 
        to support redirection to the cache port, this object shall 
        return enabledHealthCheckOKNotRedirecting(4).

        If the latest health check of the cache has failed, this object 
        shall return enabledHealthCheckFailed(5).

        If the cache is in use and traffic is being redirected to it, 
        this object shall return enabledRedirecting(6).

        The default value is disabledNotRedirecting(1)."                      �"This object stores the ifIndex that identifies the 
        port or link aggregation which provides the connection that 
        leads to the cache.  If only manual cache configuration is
        supported, this value must be supplied. The method of cache
        configuration can be ascertained by the presence or absence
        of the L4 manual cache configuration id within the
        3com-352 MIB.

        The default value is 0."                      "This object is used to create and remove Web Cache 
        entries.

        The following are the valid values that may be written to 
        RowStatus:

        Writing createAndGo(4) to the RowStatus of a non-existent row 
        shall create a row with default values and shall set the row to 
        active(1).  If the row already exists, it shall be an error.

        Writing createAndWait(5) to the RowStatus of a non-existent row 
        shall create a row with default values and shall set the row to 
        notInService(2).  If the row already exists, it shall be an 
        error.

        Writing active(1) to the RowStatus of an existing row shall 
        change the value of that row to active(1). Writing active(1) to 
        the RowStatus of an existing row that is already active(1) 
        shall not cause an error, the row shall remain active(1).  If 
        the row does not exist, it shall be an error.

        Writing notInService(2) to the RowStatus of an existing row 
        shall change the value of that row to notInService(2).  Writing 
        notInService(2) to the RowStatus of an existing row that is 
        already notInService(2) shall not cause an error, the row shall 
        remain notInService(2).  If the row does not exist, it shall be 
        an error.

        Writing destroy(6) to the RowStatus of a non-existent row shall 
        be an error.  If the row exists, it shall be removed.

        Writing notReady(3) to the RowStatus of a non-existent row or 
        to an existent row shall be an error.

        If the user does not supply values for the necessary objects, 
        default values will be supplied.

        Attempts to create more entries than the hardware can support 
        shall be rejected."                      �"This object defines the MAC address of the attached
                   Web cache device.  If only manual configuration of
                   the cache is supported, this value must be
                   supplied. The method of cache configuration can be
                   ascertained by the presence or absence of the
                   L4 manual cache configuration id within the
                   3com-352 MIB.
                   
                   The default value is 0."                       A"This object specifies the VLAN which the cache port belongs to."                       E"This object specifies the TCP port number that is being redirected "                       �"This table lists the IP addresses and subnetworks 
        that Web Cache redirection is not supported for.

        Some devices may not support addition to this table."                       k"Each row contains an IP address or a IP subnetwork 
        that is being excluded from the redirection."                       b"This object specifies the IP address or the 
        subnetwork address that is to be excluded."                      E"This object provides the number of bits in the 
        subnetwork mask. This mask shall be applied to the excludeIP 
        address to determine the subnetwork that is to be excluded.  A 
        value of 32 implies that the excludeIP address refers to an 
        individual host.

        The default value is 32."                      "This object is used to add rows to the Exclusion 
        Table.

        The following are the valid values that may be written to 
        RowStatus:

        Writing createAndGo(4) to the RowStatus of a non-existent row 
        shall create a new row.  The new row shall be active(1).  If 
        the row exists, it shall be an error.

        Writing createAndWait(5) to the RowStatus of a non-existent row 
        or to an existent row shall be an error.

        Writing active(1) to the RowStatus of an existing row shall 
        change the value of that row to active(1). Writing active(1) to 
        the RowStatus of an existing row that is already active(1) 
        shall not cause an error, the row shall remain active(1).  If 
        the row does not exist, it shall be an error.

        Writing notInService(2) to the RowStatus of an existing row 
        shall change the value of that row to notInService(2).  Writing 
        notInService(2) to the RowStatus of an existing row that is 
        already notInService(2) shall not cause an error, the row shall 
        remain notInService(2).  If the row does not exist, it shall be 
        an error.

        Writing destroy(6) to the RowStatus of a non-existent row shall 
        be an error.  If the row exists, it shall be removed.

        Writing notReady(3) to the RowStatus of a non-existent row or 
        to an existent row shall be an error.

        Attempts to create more entries than the hardware can support 
        shall be rejected."                       r"This table contains a row for each VLAN of the packet 
      		   which need to be redirected to the Web cache."                       d"Each row specifies a VLAN of the packet which need to 
      		   be redirected to the Web cache."                       k"This object specifies the VLAN ID of the packet which
      		   need to be redirected to the Web cache."                       "This object allows ports to be added and removed 
        from the table.

        The following are the valid values that may be written to 
        RowStatus:

        Writing createAndGo(4) to the RowStatus of a non-existent row 
        shall create a new row.  The new row shall be active(1).  If 
        the row exists, it shall be an error.

        Writing createAndWait(5) to the RowStatus of a non-existent row 
        or to an existent row shall be an error.

        Writing active(1) to the RowStatus of an existing row shall 
        change the value of that row to active(1). Writing active(1) to 
        the RowStatus of an existing row that is already active(1) 
        shall not cause an error, the row shall remain active(1).  If 
        the row does not exist, it shall be an error.

        Writing notInService(2) to the RowStatus of a non-existent row 
        or to an existent row shall be an error.

        Writing destroy(6) to the RowStatus of a non-existent row shall 
        be an error. If the row exists, it shall be removed.

        Writing notReady(3) to the RowStatus of a non-existent row or 
        to an existent row shall be an error.

        Attempts to create more entries than the hardware can support 
        shall be rejected."                      R"This object shall contain the string generated as a 
        result of a Layer 4 Redirection configuration.  It shall 
        contain either a string describing successful configuration or 
        a string describing unsuccessful configuration.

        This length of this string shall be no longer than 80 
        characters."                       o"This object indicates the number of entries that may 
        still be added to the h3cL4RedirectCacheTable."                       u"This object indicates the number of entries that may 
        still be added to the h3cL4RedirectIpExclusionTable."                       n"This object indicates the number of entries that may 
        still be added to the h3cL4RedirectVlanTable."                              