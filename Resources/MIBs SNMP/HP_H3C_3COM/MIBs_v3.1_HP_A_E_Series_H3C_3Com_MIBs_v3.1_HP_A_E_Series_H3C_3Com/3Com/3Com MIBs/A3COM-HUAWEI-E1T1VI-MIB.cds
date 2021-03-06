-- =============================================================
-- Copyright (c) 2004-2010 Hangzhou H3C Tech. Co., Ltd. All rights reserved.
--
-- Description: E1T1VI MIB
-- Reference:
-- Version: V1.2
-- History:
--   V1.0 2007-04-05 Initial Version by yandehan
--   V1.1 2009-06-08 modified by TONGWEI
--        Added h3cE1T1VIUsingTimeslotsRatio
--          and h3cE1T1VINotifications
--   V1.2 2010-04-08 modified by TONGWEI
--        Added h3cE1T1VIGeneral
-- =============================================================
         i"This MIB provides E1/T1 voice interface information that are
        excluded by RFC 1213 and RFC 2233" �"Platform Team H3C Technologies Co., Ltd.
         Hai-Dian District Beijing P.R. China
         http://www.h3c.com
         Zip: 100085" "201004081855Z" "200906081741Z" "200704051542Z" "To fix bugs in the MIB file." "To fix bugs in the MIB file." %"Initial version of this MIB module."       -- Apr. 8, 2010 at 18:55 GMT
       n"This table contains E1/T1 voice interface information,
        such as the total number of using time slot."                       �"This entry contains E1/T1 voice interface information.
        The index of this Entry is ifIndex defined in ifTable
        of RFC1213-MIB."                       9"The total number of using time slots on this interface."                       8"The total ratio of using time slots on this interface."                               �"This trap is sent to the manager under the following
         condidion: All the available time slots of a E1/T1
         voice interface has been in use."                     ^"This attribute controls whether the h3cE1T1VITrapTimeSlot trap will
        be sent or not."                                  