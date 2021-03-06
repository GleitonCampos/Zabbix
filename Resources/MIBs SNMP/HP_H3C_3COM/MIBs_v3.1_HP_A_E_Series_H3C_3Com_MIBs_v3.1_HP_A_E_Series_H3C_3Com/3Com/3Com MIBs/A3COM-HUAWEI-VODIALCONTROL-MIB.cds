�-- ==========================================================================
-- Copyright (C) 2004 by Huawei 3Com Technologies. All rights reserved.
--
-- Description: The purpose of this MIB file is to provide the definition of
--              voice dial control configuration.
-- Reference:
-- Version: V1.2
-- History:
-- V1.0 2005-03-22 Initial version, created by Yang Youku
-- V1.1 2005-10-08 Add enumerative value 'initial' to PhoneNumberType and
--      PhoneNumberPlan, by Cao Hui. Trim trailing spaces by longyin.
-- V1.2 2006-02-27 revised enumerative value of h3cVoPeerCfgOutbandMode by Zhou Xinzhong.
--      change 'h245AlphaNumeric' to 'h245' and add 'h225'.
-- ==========================================================================
                                                                                                                                 c"This MIB file is to provide the definition of
                 voice dial control configuration." �"PLAT Team Huawei 3Com Technologies co.,Ltd.
                Shang-Di Information Industry Base,
                Hai-Dian District Beijing P.R. China
                http://www.huawei-3com.com
                Zip:100085" "200503150000Z" '"The initial version of this MIB file."                   9"This table contains the general voice peer information."                       *"The entry of h3cVoPeerCommonConfigTable."                       *"The index of a dial entity common table."                       W"This object is used to create, delete or modify a row in
                this table."                       "The type of voice entity."                       <"This object indicates the caller number of this dial peer."                       _"This object indicates the first desirable CODEC of speech
                of this dial peer."                       `"This object indicates the second desirable CODEC of speech
                of this dial peer."                       _"This object indicates the third desirable CODEC of speech
                of this dial peer."                       _"This object indicates the forth desirable CODEC of speech
                of this dial peer."                       g"This object indicates the DSCP(Different Service Code Point)
                value of voice packets."                       ="This object indicates the current status of this dial peer."                       ^"This object indicates whether the VAD(Voice Activity Detection)
                is enabled."                       l"This object indicates the DTMF(Dual Tone Multi-Frequency)
                outband type of this dial peer."                       8"This object indicates the fax level of this dial peer."                       ;"This object indicates the fax baudrate of this dial peer."                       Y"This object indicates the fax local train threshold of this
                dial peer."                       ;"This object indicates the fax protocol of this dial peer."                       R"This object indicates the high speed redundancy packet
                numbers."                       Q"This object indicates the low speed redundancy packet
                numbers."                       j"This object indicates whether sends NSF(non-standard faculty)
                to fax of this dial peer."                       ?"This object indicates the fax support mode of this dial peer."                       ="This object indicates the fax train mode of this dial peer."                       Y"This object indicates whether the ECM(error correct mode)
                 is enabled."                       7"This object indicates the priority of this dial peer."                       S"This object indicates the textual description of this
                dial peer."                       V"This object indicates the type of calling number
                of this dial peer."                       U"This object indicates the type of called number
                of this dial peer."                       `"This object indicates the numbering plan of calling
                number of this dial peer."                       _"This object indicates the numbering plan of called
                number of this dial peer."                       �"This object indicates whether permitting the system
                to allocate alternative entities to establish a phone
                call."                       R"This object indicates number-substitute rule of calling
                number."                       Q"This object indicates number-substitute rule of called
                number."                       t"The object indicates that this dial peer is bound with a tag that
                indicates a maximum call value."                       d"This table contains the POTS(Public Switched Telephone Network)
                peer information."                       ("The entry of h3cVoPOTSPeerConfigTable."                       %"The index of voice pots peer table."                       X"This object indicates the prefix which is added to the
                called number."                       U"This object indicates the voice subscriber line of
                this dial peer."                       a"This object indicates the digit of phone number to be
                sent to the destination."                       0"This table contains the voip peer information."                       ("The entry of h3cVoVoIPPeerConfigTable."                       %"The index of voice voip peer table."                       D"This object indicates the type of the session target of this peer."                       ;"The IP address type of object h3cVoVoIPPeerCfgTargetAddr."                       �"This object indicates the target ip address. This object is
                valid when h3cVoVoIPPeerCfgTargetType is h323Ipv4 or sipIpv4."                       Y"This object indicates whether the fast connection function
                is enabled."                       P"This object indicates whether the tunnel function
                is enabled."                       ("This object specifies service area-id."                       8"This object indicates whether sending ring is enabled."                           V"The default priority of the first level CODEC(coding and
                decoding)."                       W"The default priority of the second level CODEC(coding and
                decoding)."                       V"The default priority of the third level CODEC(coding and
                decoding)."                       W"The default priority of the fourth level CODEC(coding and
                decoding)."                       A"The default value of dial peer's VAD(Voice Activity Detection)."                       W"The default value of dial peer's fax transmit level.
                The unit is db."                       ="The default value of dial peer's fax local train threshold."                       0"The default value of dial peer's fax protocol."                       c"The default value of dial peer's T38 fax protocol high
                redundancy packet number."                       b"The default value of dial peer's T38 fax protocol low
                redundancy packet number."                       0"The default value of dial peer's fax baudrate."                       5"The default value of fax NSF(non-standard faculty)."                       $"The default mode of fax supported."                       )"The default value of fax training mode."                       8"The default value of fax ECM(Error Correct Mode) Mode."                       m"The table contains permitted caller number in the specific
                voice entity for incoming call."                       -"The entry of h3cVoPeerCfgCallerPermitTable."                       0"This object specifies permitted caller number."                       W"This object is used to create, delete or modify a row
                in this table."                      