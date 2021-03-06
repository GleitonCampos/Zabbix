�-- =====================================================================
-- Copyright (c) 2004-2010 Hangzhou H3C Tech. Co., Ltd. All rights reserved.
--
-- Description: The file defines a MIB to provide WLAN QoS configuration.
-- configuration information.
-- Reference:
-- Version: V1.1
-- History:
-- V1.0 2008-7-23 created by heziqi
-- V1.1 2010-03-15 Modified by Wang Lu
--      Add h3cDot11RadioWmmEdcaCfg2Table
-- =====================================================================
  ."The AC level which SVP packets are assigned to.
         acbk    : for background access category,
         acbe    : for best-effort access category,
         acvi    : for voice access category,
         acvo    : for video access category,
         disable : for disable SVP feature
        "               �"The policy of CAC.
         channelUtilization : the channel utilization-based admission policy
                                 for CAC,
         userNumber         : the users-based admission policy for CAC"                                            d"This MIB provides information about WLAN QoS configuration.

        GLOSSARY

        IEEE 802.11
        Standard to encourage interoperability among
        wireless networking equipment.

        WMM
        WMM is a wireless QoS protocol designed to preferentially
        transmit packets with high priority, thus guaranteeing
        better QoS services for voice and video applications in
        a wireless network.

        EDCA
        Enhanced distributed channel access (EDCA) is a channel
        contention mechanism designed by WMM to preferentially
        transmit packets with high priority and allocate more
        bandwidth to such packets.

        AC
        Access category (AC), is used for channel contention.
        WMM defines four access categories; they are AC-VO (voice),
        AC-VI (video), AC-BE (best-effort), and AC-BK (background)
        in the descending order of priority.  When contending for a
        channel, a high-priority AC preempts a low-priority AC.

        CAC
        Connection admission control (CAC) limits the number of
        clients that are using high-priority ACs (AC-VO and AC-VI)
        to guarantee sufficient bandwidth for existing high-priority
        traffic.

        U-APSD
        Unscheduled automatic power-save delivery (U-APSD) is a new
        power saving mechanism defined by WMM to enhance the power
        saving capability of clients.

        SVP
        SpectraLink voice priority (SVP) is a voice priority protocol
        designed by the Spectralink company to guarantee QoS for voice
        traffic." �"Platform Team Hangzhou H3C Technologies Co., Ltd.
         Hai-Dian District Beijing P.R. China
         Http://www.h3c.com
         Zip:100085" "200807231200Z" *"The initial revision of this MIB module."                   ?"The table defines the basic parameters for WMM configuration."                       B"This entry contains the basic information for WMM configuration."                        "Represents index of the radio."                       �"Represents the status of WMM in radio.
         'true' : The WMM function is enabled.
         'false': The WMM function is disabled."                      y"Represents the AC level which SVP packets are assigned to.
         'acbk'   : Specifies the AC-BK (background traffic) queue.
         'acbe'   : Specifies the AC-BE (best-effort traffic) queue.
         'acvi'   : Specifies the AC-VI (video traffic) queue.
         'acvo'   : Specifies the AC-VO (voice traffic) queue.
         'disable' : Disable SVP packet mapping."                      u"Represents the policy for CAC.
         CAC requires that a client obtain permission of the AP before it can
         use a high-priority AC for transmission, thus guaranteeing bandwidth
         to the clients that have gained access.  CAC controls real time traffic
         (AC-VO and AC-VI traffic) but not common data traffic (AC-BE and AC-BK
         traffic)."                      !"Represents Maximum channel utilization rate, that is, the medium
         time of the accepted AC-VO traffic and AC-VI traffic to the valid
         time during the unit time.
         This object can be set only if the value of h3cDot11RadioCacPolicy is
         ChannelUtilization."                       �"Represents the users-based admission policy for CAC.
         This object can be set only if the value of h3cDot11RadioCacPolicy is
         userNumber."                       S"The table defines the basic parameters for EDCA configuration of
         radio."                       V"This entry contains the basic information for EDCA configuration of
         radio."                      "Represents the AC level index of EDCA parameters of radio.
         'acbk' : Specifies AC-BK (background traffic).
         'acbe' : Specifies AC-BE (best-effort traffic).
         'acvi' : Specifies AC-VI (video traffic).
         'acvo' : Specifies AC-VO (voice traffic)."                       x"Represents AIFSN parameter of EDCA.  The value range of this
         object is limited by the radio chip capability."                       �"Represents ECWmin parameter of EDCA.  The value range of this
         object is limited by the radio chip capability.
         ECWmin parameter of EDCA must be smaller than ECWmax parameter."                       �"Represents ECWmax parameter of EDCA.  The value range of this
         object is limited by the radio chip capability.
         ECWmin parameter of EDCA must be larger than ECWmax parameter."                      '"Represents TXOPLimit parameter of EDCA, the value must be
         in the range of 0 to 65535 (in units of 32 microseconds).
         The TXOP value of 0 indicates that only one MPDU can be
         transmitted.  The range of this argument is limited by the
         radio chip capability."                       x"Represents the AC to adopt the No ACK policy.  The protocol
         defines two ACK policies: Normal ACK and No ACK."                       U"The table defines the basic parameters for EDCA configuration of
         station."                      O"This entry contains the basic information for EDCA configuration of
         client.  If CAC is enabled for an AC, CAC is also enabled for ACs with
         higher priority.  For example, if CAC is enabled for AC-VI, CAC
         is also enabled for AC-VO.  However, enabling CAC for AC-VO does
         not enable CAC for AC-VI."                      "Represents the AC level index of EDCA parameters of client.
         'acbk' : Specifies AC-BK (background traffic).
         'acbe' : Specifies AC-BE (best-effort traffic).
         'acvi' : Specifies AC-VI (video traffic).
         'acvo' : Specifies AC-VO (voice traffic)."                       %"Represents AIFSN parameter of EDCA."                       &"Represents ECWmin parameter of EDCA."                       &"Represents ECWmax parameter of EDCA."                       �"Represents TXOPLimit parameter of EDCA, the value is in units of 32
         microseconds.
         The TXOP value of 0 indicates that only one MPDU can be
         transmitted."                       �"Represents the AC to adopt the No ACK policy.  The protocol
         defines two ACK policies: Normal ACK and No ACK.  Only if
         the value of h3cDot11StationWmmAC is 'acvo' or 'acvi', Cac
         can be set correctly here."                          �"Clear the WMM statistics information of the radio of the
         specified AP or all radios.
         The meaning of this object is the same as h3cDot11APElementIndex,
         it represents the index of AP element.  If the value of this object
         is set to 0xFFFFFFFF, WMM statistics information of all radios
         will be cleared.
         The value of this object is always 0 with the get operation."                      �"Clear the WMM statistics information of the clients associated
         with the specified AP, or of all clients.
         The meaning of this object is the same as h3cDot11APElementIndex,
         it represents the index of AP element.  If set with the
         0xFFFFFFFF, it will clear the WMM statistics information of all
         clients.
         The value of this object is always 0 with the get operation."                       S"The table defines the basic parameters for EDCA configuration of
         radio."                       V"This entry contains the basic information for EDCA configuration of
         radio."                       "Serial ID of the AP."                       "radio ID of the radio."                      "Represents the AC level index of EDCA parameters of radio.
         'acbk' : Specifies AC-BK (background traffic).
         'acbe' : Specifies AC-BE (best-effort traffic).
         'acvi' : Specifies AC-VI (video traffic).
         'acvo' : Specifies AC-VO (voice traffic)."                       x"Represents AIFSN parameter of EDCA.  The value range of this
         object is limited by the radio chip capability."                       �"Represents ECWmin parameter of EDCA.  The value range of this
         object is limited by the radio chip capability.
         ECWmin parameter of EDCA must be smaller than ECWmax parameter."                       �"Represents ECWmax parameter of EDCA.  The value range of this
         object is limited by the radio chip capability.
         ECWmin parameter of EDCA must be larger than ECWmax parameter."                      '"Represents TXOPLimit parameter of EDCA, the value must be
         in the range of 0 to 65535 (in units of 32 microseconds).
         The TXOP value of 0 indicates that only one MPDU can be
         transmitted.  The range of this argument is limited by the
         radio chip capability."                      