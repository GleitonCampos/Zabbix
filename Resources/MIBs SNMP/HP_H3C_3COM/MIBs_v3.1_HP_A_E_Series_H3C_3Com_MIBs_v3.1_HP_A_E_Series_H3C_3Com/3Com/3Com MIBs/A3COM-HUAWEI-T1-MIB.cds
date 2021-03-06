�-- =============================================================
-- Copyright (c) 2004-2009 Hangzhou H3C Tech. Co., Ltd. All rights reserved.
--
-- Description:
-- Reference:  extension of RFC 1213 and RFC 2233
-- Version: V1.1
-- History:
--   V1.0 2004-12-01
--        Initial Version  by lizhiyong and fangmin
--   V1.1 2009-06-08 modified by TONGWEI
--        Added h3ct1Table and h3ct1InterfaceTable
-- =============================================================
  �"Each octet within this value specifies a set of time
            slots, with the first octet specifying time slot 1 through
            8, the second octet specifying time slots 9 through 16, etc.
            Within each octet, the most significant bit represents
            the highest numbered time slot, and the least significant bit
            represents the lowest numbered time slot.  Thus, each time slot
            of the T1 is represented by a single bit within the
            value of this object.  If that bit has a value of '1'
            then that time slot is included in the set of time slots;
            the time slot is not included if its bit has a value of '0'."                     e"This MIB provides T1 interface information that are
             excluded by RFC 1213 and RFC 2233" �"Platform Team H3C Technologies Co., Ltd.
             Hai-Dian District Beijing P.R. China
             http://www.h3c.com
             Zip: 100085" "200906081741Z" "200412011436Z" "To fix bugs in the MIB file." %"Initial version of this MIB module."               3"This table contains interface packet statistics  "                       �"This  entry contains interface packet statistics.
         The index of this Entry is ifIndex defined in ifTable
         of RFC1213-MIB"                       6"The total number of error received on this interface"                       H"The number of Runts Error(too short packet) received on this interface"                       H"The number of Giants Error(too long packet) received on this interface"                       4"The number of CRC Error received on this interface"                       6"The number of Align Error received on this interface"                       :"The number of Over Runs Error received on this interface"                       ("The number of dribble packets received"                       ;"The number of AbortedSeq Error received on this interface"                       +"The number of Error (no buffer available)"                       "The number of framing Errors"                       8"The number of total Error transmited on this interface"                       ;"The number of UnderRun Error transmited on this interface"                       ="The number of Collisions Error transmited on this interface"                       ;"The number of Deferred Error transmited on this interface"                       !"A list of T1 interface entries."                       :"This entry contains T1 interface management information."                       )"Specifies the type of the T1 interface."                       4"Specifies the clock type used on the T1 interface."                       6"Specifies the frame format used on the T1 interface."                       8"Specifies the line code type used on the T1 interface."                       �"This is a bit-map of PRI time slots used on the T1 interface.
         It needs to administratively shut down the D channel of
         the T1 interface before cancelling PRI time slots."                       ;"This is the ifIndex of the D channel of the T1 interface."                       I"This is the ifIndex of the subscriber-line channel of the T1 interface."                       j"A list of channels of T1 interface entries.
         Including D channels and subscriber-line channels."                       �"This entry contains channels of T1 interface management information.
         Including D channels and subscriber-line channels."                       1"Which T1 interface is this channel belonged to."                                  