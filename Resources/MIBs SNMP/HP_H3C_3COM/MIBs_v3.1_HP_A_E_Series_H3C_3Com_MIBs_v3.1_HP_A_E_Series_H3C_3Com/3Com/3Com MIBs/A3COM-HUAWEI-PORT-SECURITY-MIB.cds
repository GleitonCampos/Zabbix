�-- =================================================================
-- Copyright (C) 2001,2002 by  HUAWEI 3COM TECHNOLOGIES. All rights reserved.
--
-- Description: description of Port Security
-- Reference:
-- Version: V1.6
-- History:
--   V1.0 2004-11-24, Created by lijian
--   V1.1 2005-2-23,  Modified by Zhangmin
--        Add objects:h3cSecureRalmAuthDomain,h3cSecureRalmAuthOfflineTime
--                    h3cSecureRalmAuthServerTimeoutTime,
--                    h3cSecureRalmLoginFailure,h3cSecureRalmLogon
--                    h3cSecureRalmLogoff
--   V1.2 2005-10-21, Modified the value range of 'h3cSecureRalmAuthPassword'
--                    from (0..16) to (0..63) by lijian
--   V1.3 2006-01-21, Add TruthValue and h3cSecureAssignTable by wangyingxia
--   V1.4 2006-02-24, Modified the description of h3cSecureBindingTable
--                    Modified the range of h3cSecureBindingIndex by xulei
--   V1.5 2006-05-27, Add h3cSecureMacControl by ludi
--   V1.6 2006-11-16, Add macAddressAndUserLoginSecure
--                    and macAddressAndUserLoginSecureExt for h3cSecurePortMode
--                    by huangyang
-- =================================================================
                                                                                     4"The MIB module is used for managing port security.""R&D Beijing, Huawei-3COM Technologies Co.,Ltd.
        Huawei Bld.,NO.3 Xinxi Rd.,
        Shang-Di Information Industry Base,
        Hai-Dian District Beijing P.R. China
        Zip:100085
        Http://www.huawei-3com.com
        E-mail:support@huawei-3com.com " "200411240000Z" +"The Initial Version of h3cPortSecurityMIB"                   �"This attribute controls the system wide operation of network
        access control.  The configured port security options only become
        operational when this attribute is set to enabled."                      J"This is a dummy MIB object referenced by the h3csecureLogon and
        h3csecureLogoff traps.  This object contains a comma separated list of
        the VLAN identifiers (0-4095) assigned to a port.  A tagged VLAN has a
        'T' suffix after the VLAN number and an untagged VLAN may have an
        optional 'U' suffix."                           �"Specifies the default session lifetime in seconds before
        a forwarding MAC address is re-authenticated.
        The default time is 1800 seconds."                       �"Specifies the time in seconds before
        a blocked (denied) MAC address can be re-authenticated.
        The default time is 60 seconds."                       �"Writing a MAC address to this object causes an
        immediate RALM re-authentication of this address (can be on
        any port).  If the MAC address not currently known to RALM,
        it silently ignores the write."                      "This controls how MAC addresses are authenticated.

        papUsernameAsMacAddress(1)
            Authentication uses the RADIUS server by
            sending a PAP request with Username and
            Password both equal to the MAC address being
            authenticated.  This is the default.

        papUsernameFixed(2)
            Authentication uses the RADIUS server by
            sending a PAP request with Username and
            Password coming from the h3cSecureRalmAuthUsername and
            h3cSecureRalmAuthPassword MIB objects.  In this mode
            the RADIUS server would normally take into account
            the request's calling-station-id attribute, which is
            the MAC address of the host being authenticated."                       �"This is the username used for authentication requests
        where h3cSecureRalmAuthMode is papUsernameFixed.
        Default shall be 'mac'."                       �"This is the password used for authentication requests
        where h3cSecureRalmAuthMode is papUsernameFixed.
        Default shall be a null string."                       �"MAC-authentication users may be configured in a specific domain,
        which excludes 802.1x and other authentication users. This
        specifies the domain of all MAC-authentication users."                      6"Switch isn't informed when online user is offline,
        so switch should be able to detect offline and inform radius
        server to stop accounting when there is no traffic of the user.
        This attribute configures the timer interval of offline-detect.
        The default time is 300 seconds."                      ;"When switch sends request packets (include connecting
        request and offline request, etc) to radius server and
        there is no response, switch will terminate the authentication
        process. This attribute configures the timer interval of
        server-timeout. The default time is 100 seconds."                      "This attribute controls the system wide operation of
        mac-authentication.  The system-wide mac-authentication options
        become non-operational when this attribute is set to disabled.
        This is required for h3cSecurePortSecurityControl to be enabled."                           �"This table defines the security status of each secure port.
        Each port can have a number of authorised MAC addresses, and these are
        stored in the h3cSecureAddressTable."                       �"There is a row in this table for each secure port, and
        allows repeater ports to be configured for security on a per port basis.
        It is indexed using the object ifIndex in RFC1213-MIB."                      I"Determines the learning and security modes of the port.
        See h3cSecureNeedToKnowMode and h3cSecureIntrusionAction to
        configure Need To Know and Intrusion Action on each port.
        (When in a learning mode, h3cSecureNumberAddresses determines the maximum
        number of addresses that can be learned on the port.  This is set
        by the user.)

        noRestrictions(1)    All of the security features are disabled.

        continuousLearning(2)   Addresses are learned continually.  If more
            addresses are learned than are permitted on the
            port, then one of the older entries will be aged
            out.  Need To Know and Intrusion Action depends on
            h3cSecureNeedToKnowMode and h3cSecureIntrusionAction
            respectively.

        autoLearn(3)      All addresses for this port are deleted, and then
            addresses are learned up to the number permitted.
            h3cSecurePortMode is then set to secure.  Need To
            Know and Intrusion Action depends on
            h3cSecureNeedToKnowMode and h3cSecureIntrusionAction
            respectively.

        secure(4)      Learning is disabled. Need To Know and Intrusion
            Action depends on h3cSecureNeedToKnowMode and
            h3cSecureIntrusionAction respectively.

        userLogin(5)   Access to the port is denied until the port client is
            authorised (by 802.1X or other authentication mechanism).
            Once authorised, traffic will be accepted from any MAC
            address.  The Need To Know and Intrusion Action are ignored.

        userLoginSecure(6) Access to the port is denied until the port client
            is authorised (by 802.1X or other authentication mechanism).
            When the client is authorised, the MAC address is added to the
            Secure Address Table.
            The h3cSecureMaximumAddresses is set to one automatically when
            this mode is entered.  Any existing MAC addresses in the Secure
            Address Table are deleted.  Need To Know and Intrusion Action
            depends on h3cSecureNeedToKnowMode and h3cSecureIntrusionAction
            respectively.  Learning is disabled.

        userLoginWithOUI(7) This mode is similar to the userLoginSecure mode
            except that a second MAC address may be placed in the Secure
            Address Table.  This second address is authorised based on the
            MAC address OUI value.
            If a new device with an authorised OUI value is discovered,
            the previous entry is deleted.  Traffic from the
            OUI authorised device will be accepted even if the user has
            not been authenticated.  Need To Know and Intrusion Action
            depends on h3cSecureNeedToKnowMode and h3cSecureIntrusionAction
            respectively.

        macAddressWithRadius(8) This selects the RADIUS Authenticated Login using
            MAC-address (RALM) security mode on the port.  This feature controls
            network access of a host based on authenticating its MAC
            address.  Once authorised, the host is allowed access to the
            network.  If unauthorised, the port can be configured to deny
            access to this MAC address or to allow some access depending
            upon the port VLAN and QoS configuration.
            Where access is allowed, the MAC address is added to the Secure
            Address Table.

        macAddressOrUserLoginSecure(9) This selects both the macAddressWithRadius and
            userLoginSecure modes together such that either or both are allowed to
            authorised access.  Where both authorised access, userLoginSecure takes
            precedence.

        macAddressElseUserLoginSecure(10) This selects both the macAddressWithRadius and
            userLoginSecure modes together such that the MAC address is first
            authenticated and only if this fails does the userLoginSecure then attempt
            user authentication.

        userLoginSecureExt(11) Access to the port is denied until the port client
            is authorised (by 802.1X or other authentication mechanism).
            When the client is authorised, the MAC address is added to the
            Secure Address Table.
            The h3cSecureNumberAddresses is restricted by the value of h3cSecureMaximumAddresses
            automatically when this mode is entered.
            Any existing MAC addresses in the Secure Address Table are deleted.
            Need To Know and Intrusion Action depends on h3cSecureNeedToKnowMode
            and h3cSecureIntrusionAction respectively.  Learning is disabled.

        macAddressOrUserLoginSecureExt(12) This selects both the macAddressWithRadius and
            userLoginSecureExt modes together such that either or both are allowed to
            authorised access.  Where both authorised access, userLoginSecure takes
            precedence.

        macAddressElseUserLoginSecureExt(13) This selects both the macAddressWithRadius and
            userLoginSecureExt modes together such that the MAC address is first
            authenticated and only if this fails does the userLoginSecure then attempt
            user authentication.

        macAddressAndUserLoginSecure(14) This selects both the macAddressWithRadius and
            userLoginSecure modes together such that the MAC address is first
            authenticated and only if this succeeds does the userLoginSecure then attempt
            user authentication.

        macAddressAndUserLoginSecureExt(15) This selects both the macAddressWithRadius and
            userLoginSecureExt modes together such that the MAC address is first
            authenticated and only if this succeeds does the userLoginSecure then attempt
            user authentication.
        "                      �"Attribute to determine which frames are to be forwarded to
        this port intact.

        1 - Need To Know is not available.
        2 - All frames.
        3 - Frames addressed to the authorised devices only.
        4 - Frames addressed to the authorised devices, plus all broadcast
            frames.
        5 - Frames addressed to the authorised devices, plus all broadcast
            and multicast frames.
        6 - As 3 and cannot be changed.
        7 - As 4 and cannot be changed.
        8 - As 5 and cannot be changed.

        If this object returns 1,6,7 or 8, it means that the Need To Know
        configuration cannot be changed, and any attempt to write to this object
        will cause an error."                       ^"Attribute to determine the action if an unauthorised device
        transmits on this port."                      "The maximum number of addresses that the port can learn or
        store. Reducing this number may cause some addresses to be deleted.
        This value is set by the user and cannot be automatically changed by the
        agent.  The maximum number will not include and limit the number of
        static mac addresses that configured by manager.

        The following relationship must be preserved.
        h3cSecureNumberAddressesStored <= h3cSecureNumberAddresses <=
        h3cSecureMaximumAddresses
        "                      �"The number of addresses that are currently in the
        AddressTable for this port.  If this object has the same value as
        h3cSecureNumberAddresses, then no more addresses can be authorised on this
        port.  The number will not include and limit the number of
        static mac addresses that configured by manager.

        Those objects are bound by the relationship:
        h3cSecureNumberAddressesStored <= h3cSecureNumberAddresses <=
        h3cSecureMaximumAddresses
        "                      �"This indicates the maximum value that h3cSecureNumberAddresses
        can be set to.  It is dependent on the resources available so may change,
        eg. if resources are shared between ports, then this value can both
        increase and decrease.  This object must be read before setting
        h3cSecureNumberAddresses.

        Those objects are bound by the relationship:
        h3cSecureNumberAddressesStored <= h3cSecureNumberAddresses <=
        h3cSecureMaximumAddresses
        "                       �"This table stores the MAC addresses assigned to each
        port.  This table can be written to by the agent as well as the
        management station."                       �"This table allows multiple addresses to be assigned to each
        secure port.  It is indexed using the objects ifIndex,
        h3cSecureAddrMAC and h3cSecureVlanID."                       w"The MAC address of a station assigned to this port.
        This is the second index into the h3cSecureAddressTable."                       {"The Vlan ID associate with the port and the MAC address.
        This is the third index into the h3cSecureAddressTable."                      "The state of the mac address assigned to this port.

        addressBlackhole (1) the mac address is a blackhole address,
            Each packet whose source address is equal to this address will be
            dropped by the agent.
        addressUserConfig (2) the mac address configed by user with this state
            are preserved across power cycles and resets.
        addressDot1xAuth (3) the mac address is authorized by 802.1x authenticator,
            User can not configure this mac address.  This value is used for GET
            and GETNEXT operation.
        addressRALM (4) the mac address is authorized by RALM authenticator,
            User can not configure this mac address.  This value is used for GET
            and GETNEXT operation.
        "                      �"This manages the creation and deletion or rows, and shows
        the current status of the indexed MAC address.  This object has the
        following values.

        active(1)        The indexed MAC address is authorised on this port.
        notInService(2)  Not Supported.
        notReady(3)      Not Supported.
        createAndGo(4)   Assign a new MAC address to the port and authorise
                         immediately.
        createAndWait(5) Not Supported.
        destroy(6)       Delete this entry.

        When creating a new entry, index a new row and use createAndGo(4).
        When reading this object, only active(1) will be
        returned.
        "                       I"This table stores the OUI values for OUI based
        authentication."                       )"This is a row in the h3cSecureOUITable."                       Q"The index number.  This is the first index into the
        h3cSecureOUITable."                       )"The OUI value for an authorised device."                      Q"This manages the creation and deletion of rows, and shows
        the current status of the entry.

        active(1)       The indexed OUI value is authorised.
        notInService(2) Not Supported.
        notReady(3)     Not Supported.
        createAndGo(4)  Assign a new OUI to the unit and authorise
                        immediately.
        createAndWait(5) Not Supported.
        destroy(6)      Delete this entry.

        When creating a new entry, index a new row and use createAndGo(4) .
        When reading this object, only active(1) will be returned.
        "                      "This table stores the elements of binding rules include the
        MAC addresses, the IP address and the port.  Only the frame exactly
        matching the binding rules can be forwarded.  This table can be
        written to by the agent as well as the management station."                       k"This table allows multiple binding rules.  It is indexed using the object
        h3cSecureBindingIndex."                       U"The index number.  This is the first index into the
        h3cSecureBindingTable."                       U"The port number of the port bound with the IP address
        and the MAC address."                       9"The MAC address bound with the port and the IP address."                       9"The IP address bound with the port and the MAC address."                      �"This manages the creation and deletion or rows, and shows
        status of the entry.  This object has the following values.

        active(1)        The indexed MAC address is authorised on this port.
        notInService(2)  Not Supported.
        notReady(3)      Not Supported.
        createAndGo(4)   Assign a new MAC address to the port and authorise
                         immediately.
        createAndWait(5) Not Supported.
        destroy(6)       Delete this entry.

        When creating a new entry, index a new row and use createAndGo(4).
        When reading this object, only active(1) will be
        returned.
        "                       H"Table of port assignment management information about authorised user."                       j"An entry (conceptual row) representing information about port assignment
        about authorised user."                      O"The user-based port configuration control. Setting this attribute
        TRUE causes the port to be configured with any configuration
        parameters supplied by the authentication server. Setting this
        attribute to FALSE causes any configuration parameters supplied
        by the authentication server to be ignored."                      E"The VLAN membership assigned to the port for the authorised user.
        This contains the actual value received from the authentication
        server. This object will contain a null value if there is no user
        authorised to access the port or if the authorised user was not
        assigned a VLAN membership."                           �"This trap is sent when a new station has been learned.  The
        port on which the address was received is the first object,
        and the MAC address of the learned station is in the second object."                �"This trap is sent whenever a security violation has occurred.
        The port on which the violation occured is the first object,
        and the MAC address of the offending station is in the second object.
        ifAdminStatus indicates if the port has been disabled because of the violation.
        The implementation may not send violation traps from the same port
        at intervals of less than 5 seconds."                L"This trap is sent whenever a user network access
        authentication has failed.  The port on which the violation occured is
        the first object, and the MAC address of the offending station is in
        the second object.  The dot1xAuthSessionUserName is the identity supplied
        during the user authentication."                3"This trap is sent when a new session is started for
        an authorised port user.  The port on which the violation occured is
        the first object, and the MAC address of the offending station is in
        the second object.
        The dot1xAuthSessionUserName is the identity supplied during the user
        authentication.  The dot1xAuthSessionAuthenticMethod indicates how the
        user was authorised.  The h3cSecurePortVlanMembershipList object
        identifies the VLAN membership assigned to the port on session
        activation."                "This trap is sent when a user session is terminated.
        The port on which the violation occured is the first object,
        and the MAC address of the offending station is in the second object.
        The dot1xAuthSessionUserName is the identity supplied during the user
        authentication.  The dot1xAuthSessionTerminateCause indicates the
        reason why the session was terminated.
        The h3cSecurePortVlanMembershipList object identifies the VLAN
        membership assigned to the port on session termination."                �"This trap is sent whenever a user network access
        authentication has failed.  The port on which the violation
        occured is the first object, and the MAC address of the
        offending station is in the second object. The authentication mode
        indicates how the user was authorised. The h3cSecureRalmAuthUsername
        is the identity supplied during the user authentication."                "This trap is sent when a new session is started for
        an authorised port user.  The port on which the violation
        occured is the first object, and the MAC address of
        the offending station is in the second object. The authentication mode
        indicates how the user was authorised. The h3cSecureRalmAuthUsername is
        the identity supplied during the user authentication. The
        h3cSecurePortVlanMembershipList object identifies the VLAN
        membership assigned to the port on session activation."                "This trap is sent when a new session is started for
        an authorised port user.  The port on which the violation
        occured is the first object, and the MAC address of the
        offending station is in the second object. The authentication mode
        indicates how the user was authorised. The h3cSecureRalmAuthUsername is
        the identity supplied during the user authentication. The
        h3cSecurePortVlanMembershipList object identifies the VLAN
        membership assigned to the port on session activation."                