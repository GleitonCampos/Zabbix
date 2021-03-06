�-- ==================================================================
-- Copyright (C) 2009 by H3C Technologies. All rights reserved.
--
-- Description: Domain MIB
-- Reference:
-- Version: V1.6
-- History:
-- V1.0 2005.03.23 The initial version, created by Xulei
-- V1.1 2005.06.03 updated by Xulei
--      Update SMIv2 syntax of some MIB objects
-- V1.2 2006.03.27 updated by yuanzhijie
--      1. Modified the description of h3cDomainSchemeRowStatus
--      2. Add h3cDomainSchemeAAAType, h3cDomainSchemeAAAName,
--         h3cDomainSchemeAccessMode
--      3. Change the value range of the object h3cDomainAuthSchemeName
--         and h3cDomainAcctSchemeName
-- V1.3 2007.03.07 updated by yangyang
--      Change SYNTAX of h3cDomainName and h3cDomainDefault
-- V1.4 2008.11.25 updated by ouzhili
--      Add an enumeration vlanlist(3) to object h3cDomainVlanAssignMode
-- V1.5 2008.12.30 updated by dupengfei
--      Add h3cDomainCurrentAccessNum
-- V1.6 2009.08.05 updated by huxiulan
--      Add an enumeration wapi(12) to object h3cAccessModeofDomainScheme
-- ==================================================================
    "The access mode of the domain."              "The scheme mode of the domain.
        none: indicates the domain has no scheme.
        local:indicates the domain will use local-server as a scheme.
        radius:indicates the domain will use radius scheme.
        tacacs:indicates the domain will use tacacs scheme."               !"The service type of the server."                                                     -"The MIB module is used for managing domain." u"Platform Team Beijing Institute H3C Tech, Inc.
            Http://www.h3c.com
            E-mail:support@h3c.com "       !-- August 05, 2009 at 00:00 GMT
           H"Specifies default domain on the equipment.  Default value is 'system'."                           -"The (conceptual) table listing the domains."                       2"An entry (conceptual row) representing a domain."                       )"An index uniquely identifies a domain. "                       i"The state of the domain, which reflects whether the domain is active.
        Default value is active."                       ~"The maximum number which the domain allows to access.  If the value
        is set to 0, the access limit will be disabled."                      /"The vlan assignment mode.  The mode SHOULD be the same as the mode of
        corresponding server.
        1 (integer) - Integer Vlan assignment mode.
        2 (string)  - String Vlan assignment mode.
        3 (vlanlist)  - VLAN-List Vlan assignment mode.
        The default value is integer."                       �"The idle cut control.  Setting this attribute to true, the connection will be
        cut when the flow is less than h3cDomainIdleCutMinFlow and lasts
        h3cDomainIdleCutMaxTime. Default value is false."                       �"The maximal time of idle-cut.  The unit is minute.  If the value of
        h3cDomainIdleCutEnable is false, the value of h3cDomainIdleCutMaxTime
        is meaningless."                       �"The minimal flow of idle-cut.  The unit is byte. If the value of
        h3cDomainIdleCutEnable is false, the value of h3cDomainIdleCutMinFlow
        is meaningless."                       �"The messenger service control.  If set h3cDomainMessengerEnable to true,
        h3cDomainMessengerLimitTime and h3cDomainMessengerSpanTime must be
        set to valid values.  Default value is false."                       �"The messenger service limit time.  The unit is minute.  If the value of
        h3cDomainMessengerEnable is false, the value of h3cDomainMessengerLimitTime
        is meaningless."                       �"The messenger service span time.  The unit is minute.
        It must be a multiple of 5.  If the value of h3cDomainMessengerEnable is false,
        the value of h3cDomainMessengerSpanTime is meaningless."                       �"The self service control.  If set h3cDomainSelfServiceEnable to true,
        h3cDomainSelfServiceURL must be set to a valid value.
        Default value is FALSE."                       ;"Self-service URL(Uniform Resource Locator) of the domain."                      �"Defines the action that authentication should be taken if
        authentication succeeds but the associated accounting start
        fails.
        1 (ignore) - treat as authentication success; ignore
            accounting start failure.
        2 (reject) - treat as authentication failed if
            corresponding accounting start fails.
        Default value is reject."                       �"This object is responsible for managing the creation, deletion and modification
        of rows, which supports active status and CreateAndGo, Destroy operation. To destroy
        an existent row, the domain of the row MUST NOT be used by user."                       *"The current access number of the domain."                       8"The (conceptual) table listing schemes of all domains."                       ?"An entry (conceptual row) representing an IP pool of a domain"                       H"The scheme index of domain, which is an identifier of a domain scheme."                      �"The scheme mode of the domain.  Setting h3cDomainSchemeMode to none(1) indicates
        the domain has none scheme.  Setting h3cDomainSchemeMode to local(2) indicates the
        domain will use local-server as a scheme.  Setting h3cDomainSchemeMode to radius(3)
        or tacacs(4) indicates the domain will use radius or tacacs scheme.  If set
        h3cDomainSchemeMode to radius(3) or tacacs(4), h3cDomainAuthSchemeName and
        h3cDomainAcctSchemeName must be set to valid values.  And if h3cDomainSchemeMode is
        set to none(1) or local(2), the value of h3cDomainAuthSchemeName and h3cDomainAcctSchemeName
        will be ignored."                       �"The authentication scheme name of domain.  If h3cDomainSchemeMode is set to radius
        or tacacs, the h3cDomainAuthSchemeName must be configured with a valid value."                       �"The accounting scheme name of the domain. If h3cDomainSchemeMode is set to radius
        or tacacs, the h3cDomainAcctSchemeName must be configured with a valid value."                      >"This object is responsible for managing the creation, deletion and modification
        of rows, which supports active status and createAndGo, destroy operation. To
        create a new row, h3cDomainSchemeMode must be specified. To destroy an existent
        row, the scheme of the row MUST NOT be used by user."                       "Service Type of the server."                      ?"The scheme name of the domain, whether the scheme represents accounting,
          authentication or authorization references the object h3cDomainSchemeAAAType.
          The value of the object must be valid if the value of h3cDomainSchemeMode
          is radius or tacacs, the value of the object will be ignored if the value
          of h3cDomainSchemeMode is none or local. If the domain has no scheme,
          there will be a null string. If this object is supported, the objects
          h3cDomainAuthSchemeName and h3cDomainAcctSchemeName will be ignored."                       '"The access mode of the domain scheme."                       9"The (conceptual) table listing IP pools of all domains."                       @"An entry (conceptual row) representing an IP pool of a domain."                       >"The number of IP pool, which is an identifier of an IP pool."                       6"The low IP addresses type (IPv4 or IPv6) of IP pool."                        "The low IP address of IP pool."                       -"The length of IP pool.  Default value is 1."                      ]"This object is responsible for managing the creation, deletion and modification
        of rows, which supports active status and CreateAndGo, Destroy operation.  To
        create a new row, h3cDomainIpPoolNum and h3cDomainIpPoolLowIpAddr must be specified.
        To destroy an existent row, the IP pool of this row MUST NOT be used by user."                              