-- ==========================================================================
-- Copyright (C) 2004-2010 by H3C Technologies. All rights reserved.
--
-- Description: The purpose of this MIB file is to provide the definition of
--              voice call record.
-- Reference:
-- Version: V1.1
-- History:
-- V1.0 2008-02-17 Initial version, created by Tian Xiaoqiang, Qu Jin
-- V1.1 2009-12-09 Add g729br8 to "H3cCodecType", Wang Tong
-- ==========================================================================
   "Type of Codec."               �"Represents a global call identifier.  The global call identifier is
         used as a unique identifier for an end-to-end call.  A zero length
         H3cGUid indicates no value for the global call identifier."                                                             _"This MIB file is to provide the definition of voice call
        history record information." �"Platform Team H3C Technologies Co., Ltd.
         Hai-Dian District Beijing P.R. China
         Http://www.h3c.com
         Zip:100085" "200802170000Z" '"The initial version of this MIB file."                   ^"A table containing information about specific
             calls to a specific destination."                       0"The information regarding a single connection."                       �"The index of the call history table.  It's a monotonically
             increasing integer for the sole purpose of indexing call
             disconnection events.  When it reaches to the maximum value,
             the value will back to 1."                       3"The value of sysUpTime when the call was started."                       �"The value of sysUpTime when the call was connected.
             If the call is not connected, this object will have a
             value of zero."                       6"The value of sysUpTime when the call was terminated."                       v"The number this call was connected to.  If the number is
             not available, it will have a length of zero."                      "This object identifies a single peer.  This is the Id value
             of the peer table entry to which this call was made.  If a
             peer table entry for this call does not exist or is unknown,
             the value of this object will be zero."                      0"This is the ifIndex value of the logical interface through
             which this call was made.  For ISDN media, this would be
             the ifIndex of the B channel which was used for this call.
             If the ifIndex value is unknown, the value of this object
             will be zero."                      �"The call origin.
             originate        The call that is initiated.
             answer           The call that is accepted.
             callback         Either rejects the call and then calls back,
                              or uses the 'Reverse charging' information
                              element if it is available. Note that callback(3)
                              is supposed to control charging, not security,
                              and applies to callback prior to accepting a call.
                              Callback for security reasons can be handled using
                              PPP callback."                       �"The number of charged units for this connection.
             For incoming calls or if charging information is
             not supplied by the switch, the value of this object
             will be zero."                      *"The information type for this call.
             other                          E.g. for non-isdn media.
             speech                         Speech.
             unrestrictedDigital            Unrestricted digital information
                                            with 64k rate adaption.
             unrestrictedDigital56          Unrestricted digital information
                                            with 56k rate adaption.
             restrictedDigital              Restricted digital information.
             audio31                        3.1 kHz audio.
             audio7                         7 kHz audio.
             video                          Video.
             packetSwitched                 Packetswitch.
             fax                            Fax."                       X"The number of packets which were transmitted while this
             call was active."                       ;"The number of bytes which were transmitted for this call."                       :"The number of packets which were received for this call."                       8"The number of bytes which were received for this call."                       �"This table is the voice extension to the call history table
            of DIAL-CONTROL-MIB.  It contains voice encapsulation call
            leg information that is derived from the statistics of lower
            layer telephony interface."                       F"The information regarding a extended voice call history information."                       ["The global call identifier of circuit switched network for
            the gateway call."                       {"Duration of transmit path open from this peer to the
            voice gateway for the call.  The units is milliseconds."                       �"Duration of voice transmitted from this peer to voice
            gateway for this call.  The voice utilization rate can be
            obtained by dividing this by h3cVoCallHistoryTxDuration object.
            The units is milliseconds."                       �"Duration of fax transmitted from this peer to voice gateway
            for this call.  The fax utilization rate can be obtained by
            dividing this by h3cVoCallHistoryTxDuration object.  The units
            is milliseconds."                       b"The negotiated coder type.  It specifies the encode type to
            the PSTN leg of a call."                       "The number of fax related image pages are received or
            transmitted via the peer for the call.  The units is page."                       �"This table is the VoIP extension to the call active table of
            DIAL-CONTROL-MIB.  It contains VoIP call leg information about
            specific VoIP call destination."                       R"The information regarding a extended VoIP call history
            information."                       Z"The global call identifier of packet-switched network for the
            gateway call."                       D"The type of remote system signalling IP address for the VoIP call."                       8"Remote system signalling IP address for the VoIP call."                       ]"Remote system UDP listener signalling port to which to
            transmit voice packets."                       ?"The type of remote system media IP address for the VoIP call."                       3"Remote system media IP address for the VoIP call."                       X"Remote system UDP listener media port to which to transmit voice
            packets."                      -"The object specifies the session protocol to be used for internet
            call between local and remote router via IP backbone.
            unknown        The protocol is unknown.
            h323           The protocol is H323.
            sip            The protocol is session initiation."                       b"The negotiated coder type.  It specifies the encode type to the
            VoIP leg of a call."                      