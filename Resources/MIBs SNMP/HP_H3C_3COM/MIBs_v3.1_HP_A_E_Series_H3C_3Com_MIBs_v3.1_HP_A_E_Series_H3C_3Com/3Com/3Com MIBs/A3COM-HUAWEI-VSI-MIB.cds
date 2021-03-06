�-- =============================================================================
-- Copyright (c) 2004-2010 Hangzhou H3C Tech. Co., Ltd. All rights reserved.
--
-- Description: The MIB for VSI (Virtual Switch Instance).
-- Reference:
-- Version: V1.0
-- History:
--   V1.0 2009-08-08 Initial version Created by Zhonghua Gao
-- =============================================================================
                         ,"The MIB for VSI (Virtual Switch Instance)." �"Platform Team Hangzhou H3C Tech. Co., Ltd.
        Hai-Dian District Beijing P.R. China
        http://www.h3c.com
        Zip:100085
        " "200908081000Z" "Initial version."       -- Aug 08, 2009 at 10:00 GMT
               �"Next available VSI entry index for creating VSI. Its value ranges
        from 0x1 to 0xFFFFFFFF.The invalid value 0xFFFFFFFF indicates that
        no VSI entry can be created."                       )"A table for configuring VSI parameters."                       *"An entry for configuring VSI parameters."                       8"Index of VSI. Its value ranges from 0x1 to 0xFFFFFFFE."                       3"Name of VSI. Max string length of VSI name is 31."                       �"Mode of VSI. Martini mode indicated this VSI support VPLS service
         signalled using LDP, kompella indicated this VSI support VPLS
         service signalled using BGP, minm indicated this VSI support
         MAC-in-MAC service."                       �"The MAC-in-MAC I-SID of VSI in minm or martiniAndMinm mode. It
        must be different for every VSI. Its value ranges from 0x1 to
        0xFFFFFF. In other VSI mode, its value is invalid value 0x0."                       �"Identifier of VSI in martini or martiniAndMinm mode, by default,
        it's the PW ID of this VSI. Its value ranges from 1 to 4294967295.
        In other VSI mode, its value is invalid value 0."                       "Transit Mode of VSI."                       '"Config HubSpoke property of this VSI."                       ."Set VSI admin state as adminUp or adminDown."                       '"Operation status of this table entry."                       ."A table for configuring xconnect parameters."                       �"An entry for configuring xconnect parameters. Each entry means connecting
        a service instance of a interface to a VSI."                       1"Index of the interface associated with the VSI."                       8"Index of the service instance associated with the VSI."                       3"Name of VSI. Max string length of VSI name is 31."                       '"Access mode of this service instance."                       4"Config HubSpoke property of this service instance."                       '"Operation status of this table entry."                              