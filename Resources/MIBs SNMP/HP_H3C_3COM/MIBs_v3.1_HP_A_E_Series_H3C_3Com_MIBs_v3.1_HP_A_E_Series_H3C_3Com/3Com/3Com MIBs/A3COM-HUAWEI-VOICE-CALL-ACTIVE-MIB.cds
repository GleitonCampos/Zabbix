�-- ==========================================================================
-- Copyright (C) 2008 by H3C Technologies. All rights reserved.
--
-- Description: The purpose of this MIB file is to provide the definition of
--              voice call record.
-- Reference:
-- Version: V1.0
-- History:
-- V1.0 2008-02-17 Initial version, created by Tian Xiaoqiang, Qu Jin
-- ==========================================================================
   �"Represents a global call identifier. The global call identifier is
         used as an unique identifier for an end-to-end call. A zero length
         H3cGUid indicates no value for the global call identifier."                                     _"This MIB file is to provide the definition of voice call
         active record information." �"Platform Team Hangzhou H3C Technologies Co., Ltd.
         Hai-Dian District Beijing P.R. China
         Http://www.h3c.com
         Zip:100085" "200802170000Z" '"The initial version of this MIB file."                   �"This table is the voice extension to the call active table
         of DIAL-CONTROL-MIB. It contains voice encapsulation call
         leg information that is derived from the statistics
         of lower layer telephony interface."                      \"The information regarding a single voice encapsulation
         call leg.
         The call leg entry is identified by using the same index
         objects that are used by call active table of
         DIAL-CONTROL-MIB to identify the call.
         An entry of this table is created when its associated call
         active entry in the DIAL-CONTROL-MIB is created and
         call active entry contains the call establishment to a
         voice over telephony network peer.
         The entry is deleted when its associated call active entry
         in the DIAL-CONTROL-MIB is deleted."                       2"The global call identifier for the gateway call."                       w"Duration of transmit path open from this peer to the
         voice gateway for the call. The units is milliseconds."                       �"Duration of voice transmitted from this peer to voice
         gateway for this call. The voice utilization rate can be
         obtained by dividing this by h3cVoCallActiveTXDuration object.
         The units is milliseconds."                       �"Duration of fax transmitted from this peer to voice gateway
         for this call. The fax utilization rate can be obtained by
         dividing this by h3cVoCallActiveTXDuration object. The units
         is milliseconds."                       ^"The negotiated coder type. It specifies the encode type to
         the PSTN leg of a call."                       |"The number of fax related image pages are received or
         transmitted via the peer for the call. The units is pages."                       �"This table is the VoIP extension to the call active table of
         DIAL-CONTROL-MIB. It contains VoIP call leg
         information about specific VoIP call destination."                      r"The information regarding a single VoIP call leg.
         The call leg entry is identified by using the same index
         objects that are used by call active table of DIAL-CONTROL-MIB
         to identify the call.
         An entry of this table is created when its associated call
         active entry in the DIAL-CONTROL-MIB is created and the
         call active entry contains information for the call
         establishment to the peer on the IP backbone via a voice
         over IP peer.
         The entry is deleted when its associated call active entry
         in the DIAL-CONTROL-MIB is deleted."                       2"The global call identifier for the gateway call."                       D"The type of remote system signalling IP address for the VoIP call."                       8"Remote system signalling IP address for the VoIP call."                       Z"Remote system UDP listener signalling port to which to transmit voice
         packets."                       ?"The type of remote system media IP address for the VoIP call."                       3"Remote system media IP address for the VoIP call."                       U"Remote system UDP listener media port to which to transmit voice
         packets."                       �"The object specifies the session protocol to be used
         for internet call between local and remote router via
         IP backbone."                       ^"The negotiated coder type. It specifies the encode type to
         the VoIP leg of a call."                      