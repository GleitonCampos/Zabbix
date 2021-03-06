                                                                                   "Manage WAPI module." �"Contact:
            E-mail: bwips@chinabwips.org
            P.O.BOX 88, West High-tech Development Center, Xi'an, China.
            710075
            Tel: +86 29 8838 6220
            Fax: +86 29 8838 6218
            "                   2"The table containing WAPI configuration objects."                       ."An entry in the gb15629dot11wapiConfigTable."                       0"The highest WAPI version this entity supports."                      �"This object indicates whether the entity enables
            authentication. When the value is FALSE, it shall indicate that
            authentication is not enabled on this entity, and the status of
            the controlled port is 'authenticated'. When the value is TURE,
            it shall indicate that authentication is enabled, and the status
            of controlled port is decided by
            gb15629dot11wapiControlledPortControl."                      �"This object indicates the controlling type of the entity's port.
            This object is available when
            gb15629dot11wapiControlledAuthControl is TURE. When the value is
            zero, it means 'automatic', and the status of the controlled port
            is decided by authentication result. When the value is one,
            it means 'forcible unauthenticated', and the status of the
            controlled port is 'unauthenticated'."                       �"This object indicates whether the entity support WAPI. When the
            value is TURE, it shall indicate that the entity support WAPI.
            Otherwise, it shall indicate that the entity doesn't support WAPI."                       �"This object indicates whether the entity support WAPI
            preauthentication. This object can't be set to TURE, unless
            gb15629dot11wapiOptionImplemented is TURE."                       �"When this object is set to TRUE, it shall indicate that WAPI is
            enabled on this entity. The entity will advertise the WAPI
            information element in its beacon and probe response frames."                      ;"When this object is set to TRUE, it shall indicate that WAPI
            preauthentication is enabled on this entity. Otherwise, it shall
            indicate that WAPI preauthentication is disabled on this entity.
            This object requires that gb15629dot11WAPIEnabled also be set to
            TRUE."                       X"This object indicates how many unicast keys the entity supports
            for WAPI."                       �"This object selects a mechanism for rekeying the WAPI USK. The
            default is time-based, once per day. Rekeying the USK is only
            applicable to an entity acting as a role of AE or ASUE."                       �"The time in seconds after which the WAPI USK shall be refreshed.
            The timer shall start at the moment the USK was set using the
            MLME-SETWPIKEYS request primitive."                       "A packet count (in 1000s of packets) after which the WAPI USK
            shall be refreshed. The packet counter shall start at the moment
            the USK was set using the MLME-SETKEYS request primitive and it
            shall count all packets encrypted using the current USK."                      C"This object indicates the multicast cipher suite selector the
            entity must use. The multicast cipher suite in the WAPI
            information element shall take its value from this variable.
            It consists of an OUI (the first 3 octets) and a cipher suite
            identifier (the last octet)."                       �"This object selects a mechanism for rekeying the WAPI MSK. The
            default is time-based, once per day. Rekeying the MSK is only
            applicable to an entity acting as a role of AE or ASUE."                       �"The time in seconds after which the WAPI MSK shall be refreshed.
            The timer shall start at the moment the MSK was set using the
            MLME-SETWPIKEYS request primitive."                       "A packet count (in 1000s of packets) after which the WAPI MSK
            shall be refreshed. The packet counter shall start at the moment
            the MSK was set using the MLME-SETKEYS request primitive and it
            shall count all packets encrypted using the current MSK."                       x"This object signals that the MSK shall be refreshed whenever a
            STA leaves the BSS that possesses the MSK."                      "The PSK value when WAPI in PSK mode is the selected AKM suite.
            In that case, the BK will obtain its value from this object.
            This object is logically write-only. Reading this variable shall
            return unsuccessful status or null or zero."                      p"The PSK value when WAPI in PSK mode is the selected AKM suite,
            is configured by gb15629dot11wapiConfigPSKValue.
            An alternative manner of setting the PSK uses the password-to-key
            algorithm. This variable provides a means to enter a
            pass-phrase. When this object is written, the WAPI entity shall
            use the password-to-key algorithm to derive a preshared
            and populate gb15629dot11wapiConfigPSKValue with this key.
            This object is logically write-only. Reading this variable shall
            return unsuccessful status or null or zero."                       �"The number of times message in the WAPI certificate
            authenticating handshake will be retried per certificate
            authenticating handshake attempt."                       y"The number of times message in the WAPI multicast key handshake
            will be retried per MSK handshake attempt."                       y"The number of times message in the WAPI unicast key handshake
            will be retried per 3-way handshake attempt."                       �"This object indicates the length in bits of the multicast
            cipher key. This should be 256 for SMS4. first 128 bits for
            encrypting, last 128 bits for integrity checking."                       /"The maximum lifetime of a BK in the BK cache."                       f"The percentage of the BK lifetime that should expire before an
            reauthentication occurs."                       ?"The maximum time a security association shall take to set up."                       0"The selector of the last AKM suite negotiated."                       5"The selector of the last unicast cipher negotiated."                       7"The selector of the last multicast cipher negotiated."                       ["The selector of the last BKID used in the last unicast
            cipher key handshake."                       /"The selector of the last AKM suite requested."                       4"The selector of the last unicast cipher requested."                       6"The selector of the last multicast cipher requested."                      0"This table lists the unicast ciphers supported by this entity.
            It allows enabling and disabling of each unicast cipher by
            network management. The unicast cipher suite list in the WAPI
            information element is formed using the information in this
            table."                       j"The table entry, indexed by the interface index (or all
            interfaces) and the unicast cipher."                       V"The auxiliary index into the
            gb15629dot11wapiConfigUnicastCiphersTable."                       �"The selector of a supported unicast cipher. It consists of an
            OUI(the first 3 octets) and a cipher suite identifier
            (the last octet)."                       5"This object enables or disables the unicast cipher."                       �"This object indicates the length in bits of the unicast cipher
            key. This should be 256 for SMS4, first 128 bits for encrypting,
            last 128 bits for integrity checking."                       �"This table lists the AKM suites supported by this entity. Each
            AKM suite can be individually enabled and disabled. The AKM
            suite list in the WAPI information element is formed using the
            information in this table."                       U"An entry (row) in the
            gb15629dot11wapiConfigAuthenticationSuitesTable."                       p"The auxiliary variable used as an index into the
            gb15629dot11wapiConfigAuthenticationSuitesTable."                       �"The selector of an AKM suite. It consists of an OUI (the first 3
           octets) and a cipher suite identifier (the last octet)."                       Z"This variable indicates the corresponding AKM suite is enabled
            or disabled."                       �"This table maintains per-STA statistics in an WAPI. The entry
            with gb15629dot11wapiStatsSTAAddress set to FF-FF-FF-FF-FF-FF
            shall contain statistics for broadcast/multicast traffic."                       -"An entry in the gb15629dot11wapiStatsTable."                       9"An auxiliary index into the gb15629dot11wapiStatsTable."                       `"The MAC address of the STA to which the statistics in this
            conceptual row belong."                       1"The WAPI version with which the STA associated."                       �"This object indicates the status of the authentication
            entity's controlled port. When the value is TURE, it means
            'authenticated'. Otherwise, it means 'unauthenticated'."                       <"The unicast cipher suite selector used during association."                       <"The number of WPI MPDUs discarded by the replay mechanism."                       l"The number of WPI MPDUs discarded because of unavailable cipher
            key when WPI-SMS4 decrypting."                       j"The number of WPI MPDUs discarded because of MIC checking
            failure when WPI-SMS4 decrypting."                       X"This counter increases when the received WAI packets' signature
            is wrong."                       v"This counter increases when the received WAI packets'
            message authentication key checking error occurs."                       Y"This counter increases when the WAI authentication result
            is unsuccessful."                       P"This counter increases when the received WAI packet is
            discarded."                       O"This counter increases when the WAI packet overtime is
            detected."                       B"This counter increases when the WAI packets' format error occurs"                       \"This counter increases when the WAI certificate authenticates
            unsuccessfully."                       `"This counter increases when the WAI unicast cipher key
            negotiates unsuccessfully."                       a"This counter increases when the WAI multicast cipher key
            announces unsuccessfully."                               �"The gb15629dot11wapiBase object class provides the
            necessary support for managing WAPI functionality in the
            STA."                 �"The gb15629dot11wapiBKcachingGroup object class provides
            the necessary support for managing BK caching
            functionality in the STA"                     X"The compliance statement for SNMPv2 entities that implement the
            WAPI MIB."                      