     F"The status values of the Authenticator PAE controlled
        Port."               4"The control mode values for the Authenticator PAE."               G"The control values of the Authenticator PAE controlled
        Port."                                                                     L" The Port Access Entity module for managing IEEE
                 802.1X." :" http:// grouper. ieee. org/ groups/ 802/ 1/ index. html"                       X"The administrative enable/disable state for
         Port Access Control in a System." "9.6.1, SystemAuthControl"                     �"A table of system level information for each port
        supported by the Port Access Entity.  An entry appears
        in this table for each port of this system." "9.6.1"                     T"The Port number, protocol version, and
        initialization control for a Port."                       ,"The Port number associated with this Port." "9.6.1, Port number"                     1"The protocol version associated with this Port." "9.6.1, Protocol version"                     l"Indicates the PAE functionality that this Port
        supports and that may be managed through this MIB." "9.6.1, PAE Capabilities"                     �"The initialization control for this Port. Setting this
        attribute TRUE causes the Port to be initialized.
        The attribute value reverts to FALSE once initialization
        has completed." "9.6.1.2, Initialize Port"                    ("The reauthentication control for this port. Setting
        this attribute TRUE causes the Authenticator PAE state
        machine for the Port to reauthenticate the Supplicant.
        Setting this attribute FALSE has no effect.
        This attribute always returns FALSE when it is read." ""                         �"A table that contains the configuration objects for the
        Authenticator PAE associated with each port.
        An entry appears in this table for each port that may
        authenticate access to itself." #"9.4.1 Authenticator Configuration"                     B"The configuration information for an Authenticator
        PAE."                       D"The current value of the Authenticator PAE state
        machine."  "9.4.1, Authenticator PAE state"                     I"The current state of the Backend Authentication
        state machine." %"9.4.1, Backend Authentication state"                     `"The current value of the administrative controlled
        directions parameter for the Port." "9.4.1, Admin Control Mode"                     ]"The current value of the operational controlled
        directions parameter for the Port." "9.4.1, Oper Control Mode"                     R"The current value of the controlled Port
        status parameter for the Port." !"9.4.1, AuthControlledPortStatus"                     S"The current value of the controlled Port
        control parameter for the Port." ""9.4.1, AuthControlledPortControl"                     "The value, in seconds, of the quietPeriod constant
        currently in use by the Authenticator PAE state
        machine." "9.4.1, quietPeriod"                     |"The value, in seconds, of the txPeriod constant
        currently in use by the Authenticator PAE state
        machine." "9.4.1, txPeriod"                     �"The value, in seconds, of the suppTimeout constant
        currently in use by the Backend Authentication state
        machine." "9.4.1, suppTimeout"                     �"The value, in seconds, of the serverTimeout constant
        currently in use by the Backend Authentication state
        machine." "9.4.1, serverTimeout"                     i"The value of the maxReq constant currently in use by
        the Backend Authentication state machine." "9.4.1, maxReq"                     �"The value, in seconds, of the reAuthPeriod constant
        currently in use by the Reauthentication Timer state
        machine." "9.4.1, reAuthPeriod"                     a"The enable/disable control used by the Reauthentication
        Timer state machine (8.5.5.1)." "9.4.1, reAuthEnabled"                     }"The value of the keyTransmissionEnabled constant
        currently in use by the Authenticator PAE state
        machine." "9.4.1, keyTransmissionEnabled"                     �"A table that contains the statistics objects for the
         Authenticator PAE associated with each Port.
         An entry appears in this table for each port that may
         authenticate access to itself."  "9.4.2 Authenticator Statistics"                     6"The statistics information for an Authenticator PAE."                       f"The number of valid EAPOL frames of any type
        that have been received by this Authenticator." "9.4.2, EAPOL frames received"                     c"The number of EAPOL frames of any type
        that have been transmitted by this Authenticator." !"9.4.2, EAPOL frames transmitted"                     Z"The number of EAPOL Start frames that have
        been received by this Authenticator." $"9.4.2, EAPOL Start frames received"                     ["The number of EAPOL Logoff frames that have
        been received by this Authenticator." %"9.4.2, EAPOL Logoff frames received"                     Z"The number of EAP Resp/Id frames that have
        been received by this Authenticator." &"9.4.2, EAPOL Resp/Id frames received"                     �"The number of valid EAP Response frames
        (other than Resp/Id frames) that have been
        received by this Authenticator." '"9.4.2, EAPOL Response frames received"                     \"The number of EAP Req/Id frames that have been
        transmitted by this Authenticator." ("9.4.2, EAPOL Req/Id frames transmitted"                     �"The number of EAP Request frames
        (other than Rq/Id frames) that have been
        transmitted by this Authenticator." )"9.4.2, EAPOL Request frames transmitted"                     �"The number of EAPOL frames that have been
        received by this Authenticator in which the
        frame type is not recognized." &"9.4.2, Invalid EAPOL frames received"                     �"The number of EAPOL frames that have been received
        by this Authenticator in which the Packet Body
        Length field is invalid." )"9.4.2, EAP length error frames received"                     Y"The protocol version number carried in the
        most recently received EAPOL frame." !"9.4.2, Last EAPOL frame version"                     T"The source MAC address carried in the
        most recently received EAPOL frame."  "9.4.2, Last EAPOL frame source"                     �"A table that contains the session statistics objects
        for the Authenticator PAE associated with each Port.
        An entry appears in this table for each port that may
        authenticate access to itself." "9.4.4"                    %"The session statistics information for an Authenticator
        PAE.  This shows the current values being collected for
        each session that is still in progress, or the final
        values for the last valid session on each port where
        there is no session currently active."                       ]"The number of octets received in user data
        frames on this Port during the session."  "9.4.4, Session Octets Received"                     `"The number of octets transmitted in user data
        frames on this Port during the session." #"9.4.4, Session Octets Transmitted"                     S"The number of user data frames received
        on this Port during the session."  "9.4.4, Session Frames Received"                     V"The number of user data frames transmitted
        on this Port during the session." #"9.4.4, Session Frames Transmitted"                     ~"A unique identifier for the session, in the
        form of a printable ASCII string of at least
        three characters." "9.4.4, Session Identifier"                     C"The authentication method used to establish the
        session." &"9.4.4, Session Authentication Method"                     )"The duration of the session in seconds." "9.4.4, Session Time"                     )"The reason for the session termination."  "9.4.4, Session Terminate Cause"                     I"The User-Name representing the identity of the
        Supplicant PAE." "9.4.4, Session User Name"                                 _"A collection of objects providing system information
        about, and control over, a PAE."                 b"A collection of objects providing configuration
        information about an Authenticator PAE."                 S"A collection of objects providing statistics about an
        Authenticator PAE."                 t"A collection of objects providing statistics about the
        current, or last session for an Authenticator PAE."                     N"The compliance statement for device support of
        Port Access Control."   g"This group is mandatory for systems that support
            the Authenticator functions of the PAE."  "Support for in(1) is optional."  "Support for in(1) is optional." �"An Authenticator PAE that does not support
          EAPOL-Key frames may implement this object as
          read-only, returning a value of FALSE." g"This group is mandatory for systems that support
            the Authenticator functions of the PAE." f"This group is optional for systems that support
            the Authenticator functions of the PAE."                