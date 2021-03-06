�-- =================================================================
-- Copyright (c) 2004-2011 Hangzhou H3C Tech. Co., Ltd. All rights reserved.
--
-- Description: policy based routing MIB File
-- Reference:
-- Version: V1.0
-- History:
--      V1.0 created by houyefei
--        initial version 2010-12-10
-- =================================================================
                         �"This MIB contains objects to manage the configuration and information
        of policy based routing.  It routes IP packets by user defined policy
        other than normal destination address based routing.
        " �"Platform Team H3C Technologies Co., Ltd.
         Hai-Dian District Beijing P.R. China
         http://www.h3c.com
         Zip: 100085" "201012101558Z" '"The initial version of this MIB file."                       �"The value is a global setting.  The feature will not work until the
        value is set to 'true'.  If the value is set to 'false', the feature
        will stop working."                               Z"Indicating address type of h3cPBRNexthopAddr, which can be either IPv4
        or IPv6."                       6"The involved nexthop IP address of trap information."                               �"When the nexthop of policy based routing apply clause became
        unreachable according to routing information, trap is generated
        and is sent to the remote monitoring device."                        