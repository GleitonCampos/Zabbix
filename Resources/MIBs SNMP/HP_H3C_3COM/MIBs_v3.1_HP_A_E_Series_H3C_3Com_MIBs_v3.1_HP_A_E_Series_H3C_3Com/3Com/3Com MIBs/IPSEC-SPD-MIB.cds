�-- Network Working Group                                            M. Baer
-- Request for Comments: 4807                                  Sparta, Inc.
-- Category: Standards Track                                     R. Charlet
--                                                                     Self
--                                                              W. Hardaker
--                                                             Sparta, Inc.
--                                                                 R. Story
--                                                      Revelstone Software
--                                                                  C. Wang
--                                                                      ARO
--                                                               March 2007
--             IPsec Security Policy Database Configuration MIB
   �"The SpdBooleanOperator operator is used to specify
         whether sub-components in a decision-making process are
         ANDed or ORed together to decide if the resulting
         expression is true or false."               �"The SpdAdminStatus is used to specify the administrative
         status of an object.  Objects that are disabled MUST NOT
         be used by the packet processing engine."             "RFC 3060, 3269"�"This property identifies an overall range of calendar dates
         and time.  In a boolean context, a value within this time
         range, inclusive, is considered true.

         This information is encoded as an octet string using
         the UTF-8 transformation format described in STD 63,
         RFC 3629.

         It uses the format suggested in RFC 3060.  An octet string
         represents a start date and time and an end date and time.
         For example:

         yyyymmddThhmmss/yyyymmddThhmmss

         Where: yyyy = year     mm = month     dd = day
                  hh = hour     mm = minute    ss = second

         The first 'yyyymmddThhmmss' sub-string indicates the start
         date and time.  The second 'yyyymmddThhmmss' sub-string
         indicates the end date and time.  The character 'T' within
         these sub-strings indicates the beginning of the time
         portion of each sub-string.  The solidus character '/'
         separates the start from the end date and time.  The end
         date and time MUST be subsequent to the start date and
         time.

         There are also two allowed substitutes for a
         'yyyymmddThhmmss' sub-string: one for the start date and
         time, and one for the end date and time.

         If the start date and time are replaced with the string
         'THISANDPRIOR', this sub-string would indicate the current
         date and time and the previous dates and time.

         If the end date and time are replaced with the string
         'THISANDFUTURE', this sub-string would indicate the current
         date and time and the subsequent dates and time.

         Any of the following SHOULD be considered a
         'wrongValue' error:
         - Setting a value with the end date and time earlier than
           or equal to the start date and time.
         - Setting the start date and time to 'THISANDFUTURE'.
         - Setting the end date and time to 'THISANDPRIOR'."              "SpdIPPacketLogging specifies whether an audit message
         SHOULD be logged if a packet is passed through a Security
         Association (SA) and if some of that packet is included in
         the log event.  A value of '-1' indicates no logging.  A
         value of '0' or greater indicates that logging SHOULD be
         done and indicates the number of bytes starting at the
         beginning of the packet to place in the log.  Values greater
         than the size of the packet being processed indicate that
         the entire packet SHOULD be sent.

         Examples:
         '-1' no logging
         '0'  log but do not include any of the packet in the log
         '20' log and include the first 20 bytes of the packet
              in the log."                                                                                                                        �"This MIB module defines configuration objects for managing
      IPsec Security Policies.  In general, this MIB can be
      implemented anywhere IPsec security services exist (e.g.,
      bump-in-the-wire, host, gateway, firewall, router, etc.).

      Copyright (C) The IETF Trust (2007).  This version of
      this MIB module is part of RFC 4807; see the RFC itself for
      full legal notices."�"Michael Baer
                  P.O. Box 72682
                  Davis, CA 95617
                  Phone: +1 530 902 3131
                  Email: baerm@tislabs.com

                  Ricky Charlet
                  Email: rcharlet@alumni.calpoly.edu

                  Wes Hardaker
                  Sparta, Inc.
                  P.O. Box 382
                  Davis, CA  95617
                  Phone: +1 530 792 1913
                  Email: hardaker@tislabs.com

                  Robert Story
                  Revelstone Software
                  PO Box 1812
                  Tucker, GA 30085
                  Phone: +1 770 617 3722
                  Email: rstory@ipsp.revelstone.com

                  Cliff Wang
                  ARO
                  4300 S. Miami Blvd.
                  Durham, NC 27703
                  E-Mail: cliffwangmail@yahoo.com" "200702070000Z" )"Initial version, published as RFC 4807."       -- 7 February 2007
          ("This table maps policies (groupings) onto an endpoint
         (interface).  A policy group assigned to an endpoint is then
         used to control access to the network traffic passing
         through that endpoint.

         If an endpoint has been configured with a policy group and
         no rule within that policy group matches that packet, the
         default action in this case SHALL be to drop the packet.

         If no policy group has been assigned to an endpoint, then
         the policy group specified by spdIngressPolicyGroupName MUST
         be used on traffic inbound from the network through that
         endpoint, and the policy group specified by
         spdEgressPolicyGroupName MUST be used for traffic outbound
         to the network through that endpoint."                       4"A mapping assigning a policy group to an endpoint."                      H"This object indicates which direction of packets crossing
         the interface are associated with which spdEndGroupName
         object.  Ingress packets, or packets into the device match
         when this value is inbound(1).  Egress packets or packets
         out of the device match when this value is outbound(2)."                       �"This value matches the IF-MIB's ifTable's ifIndex column
         and indicates the interface associated with a given
         endpoint.  This object can be used to uniquely identify an
         endpoint that a set of policy groups are applied to."                       �"The policy group name to apply at this endpoint.  The
         value of the spdEndGroupName object is then used as an
         index into the spdGroupContentsTable to come up with a list
         of rules that MUST be applied at this endpoint."                      ?"The value of sysUpTime when this row was last modified
         or created either through SNMP SETs or by some other
         external means.

         If this row has not been modified since the last
         re-initialization of the network management subsystem, this
         object SHOULD have a zero value."                      "The storage type for this row.  Rows in this table that
         were created through an external process MAY have a storage
         type of readOnly or permanent.

         For a storage type of permanent, none of the columns have
         to be writable."                      �"This object indicates the conceptual status of this row.

         The value of this object has no effect on whether other
         objects in this conceptual row can be modified.

         This object is considered 'notReady' and MUST NOT be set to
         active until one or more active rows exist within the
         spdGroupContentsTable for the group referenced by the
         spdEndGroupName object."                      k"This table contains a list of rules and/or subgroups
         contained within a given policy group.  For a given value
         of spdGroupContName, the set of rows sharing that value
         forms a 'group'.  The rows in a group MUST be processed
         according to the value of the spdGroupContPriority object
         in each row.  The processing MUST be executed starting with
         the lowest value of spdGroupContPriority and in ascending
         order thereafter.

         If an action is executed as the result of the processing of
         a row in a group, the processing of further rows in that
         group MUST stop.  Iterating to the next policy group row by
         finding the next largest spdGroupContPriority object SHALL
         only be done if no actions were run while processing the
         current row for a given packet."                       �"Defines a given sub-component within a policy group.  A
         sub-component is either a rule or another group as
         indicated by spdGroupContComponentType and referenced by
         spdGroupContComponentName."                       �"The administrative name of the group associated with this
        row.  A 'group' is formed by all the rows in this table that
        have the same value of this object."                      Z"The priority (sequence number) of the sub-component in
         a group that this row represents.  This value indicates
         the order that each row of this table MUST be processed
         from low to high.  For example, a row with a priority of 0
         is processed before a row with a priority of 1, a 1 before
         a 2, etc."                      ,"spdGroupContFilter points to a filter that is evaluated
         to determine whether the spdGroupContComponentName within
         this row is exercised.  Managers can use this object to
         classify groups of rules, or subgroups, together in order to
         achieve a greater degree of control and optimization over
         the execution order of the items within the group.  If the
         filter evaluates to false, the rule or subgroup will be
         skipped and the next rule or subgroup will be evaluated
         instead.  This value can be used to indicate a scalar or
         row in a table.  When indicating a row in a table, this
         value MUST point to the first column instance in that row.

         An example usage of this object would be to limit a
         group of rules to executing only when the IP packet
         being processed is designated to be processed by IKE.
         This effectively creates a group of IKE-specific rules.

         The following tables and scalars can be pointed to by this
         column.  All but diffServMultiFieldClfrTable are defined in
         this MIB:

                diffServMultiFieldClfrTable
                spdIpOffsetFilterTable
                spdTimeFilterTable
                spdCompoundFilterTable
                spdTrueFilter
                spdIpsoHeaderFilterTable

         Implementations MAY choose to provide support for other
         filter tables or scalars.

         If this column is set to a VariablePointer value, which
         references a non-existent row in an otherwise supported
         table, the inconsistentName exception MUST be returned.  If
         the table or scalar pointed to by the VariablePointer is
         not supported at all, then an inconsistentValue exception
         MUST be returned.

         If, during packet processing, a row in this table is applied
         to a packet and the value of this column in that row
         references a non-existent or non-supported object, the
         packet MUST be dropped." 
"RFC 3289"                     �"Indicates whether the spdGroupContComponentName object
         is the name of another group defined within the
         spdGroupContentsTable or is the name of a rule defined
         within the spdRuleDefinitionTable."                       �"The name of the policy rule or subgroup contained within
         this row, as indicated by the spdGroupContComponentType
         object."                      ?"The value of sysUpTime when this row was last modified
         or created either through SNMP SETs or by some other
         external means.

         If this row has not been modified since the last
         re-initialization of the network management subsystem,
         this object SHOULD have a zero value."                      "The storage type for this row.  Rows in this table that
         were created through an external process MAY have a storage
         type of readOnly or permanent.

         For a storage type of permanent, none of the columns have
         to be writable."                      �"This object indicates the conceptual status of this row.

         The value of this object has no effect on whether other
         objects in this conceptual row can be modified.

         This object MUST NOT be set to active until the row to
         which the spdGroupContComponentName points to exists and is
         active.

         If active, this object MUST remain active unless one of the
         following two conditions are met:

         I.  No active row in spdEndpointToGroupTable exists that
             references this row's group (i.e., indicate this row's
             spdGroupContName).

         II. Or at least one other active row in this table has a
             matching spdGroupContName.

         If neither condition is met, an attempt to set this row to
         something other than active MUST result in an
         inconsistentValue error."                       n"This table defines a rule by associating a filter
         or a set of filters to an action to be executed."                       x"A row defining a particular rule definition.  A rule
         definition binds a filter pointer to an action pointer."                       �"spdRuleDefName is the administratively assigned name of
         the rule referred to by the spdGroupContComponentName
         object."                       `"A user defined string.  This field MAY be used for
         administrative tracking purposes."                      ;"spdRuleDefFilter points to a filter that is used to
         evaluate whether the action associated with this row is
         executed or not.  The action will only execute if the
         filter referenced by this object evaluates to TRUE after
         first applying any negation required by the
         spdRuleDefFilterNegated object.

         The following tables and scalars can be pointed to by this
         column.  All but diffServMultiFieldClfrTable are defined in
         this MIB.  Implementations MAY choose to provide support
         for other filter tables or scalars as well:

                diffServMultiFieldClfrTable
                spdIpOffsetFilterTable
                spdTimeFilterTable
                spdCompoundFilterTable
                spdTrueFilter

         If this column is set to a VariablePointer value, which
         references a non-existent row in an otherwise supported
         table, the inconsistentName exception MUST be returned.  If
         the table or scalar pointed to by the VariablePointer is
         not supported at all, then an inconsistentValue exception
         MUST be returned.

         If, during packet processing, this column has a value that
         references a non-existent or non-supported object, the
         packet MUST be dropped." 
"RFC 3289"                     �"spdRuleDefFilterNegated specifies whether or not the results of
         the filter referenced by the spdRuleDefFilter object is
         negated."                      p"This column points to the action to be taken.  It MAY,
         but is not limited to, point to a row in one of the
         following tables:

            spdCompoundActionTable
            ipsaSaPreconfiguredActionTable
            ipiaIkeActionTable
            ipiaIpsecActionTable

         It MAY also point to one of the scalar objects beneath
         spdStaticActions.

         If this object is set to a pointer to a row in an
         unsupported (or unknown) table, an inconsistentValue
         error MUST be returned.

         If this object is set to point to a non-existent row in an
         otherwise supported table, an inconsistentName error MUST
         be returned.

         If, during packet processing, this column has a value that
         references a non-existent or non-supported object, the
         packet MUST be dropped."                      +"Indicates whether the current rule definition is considered
         active.  If the value is enabled, the rule MUST be evaluated
         when processing packets.  If the value is disabled, the
         packet processing MUST continue as if this rule's filter
         had effectively failed."                      ?"The value of sysUpTime when this row was last modified
         or created either through SNMP SETs or by some other
         external means.

         If this row has not been modified since the last
         re-initialization of the network management subsystem, this
         object SHOULD have a zero value."                      "The storage type for this row.  Rows in this table that
         were created through an external process MAY have a
         storage type of readOnly or permanent.

         For a storage type of permanent, none of the columns have
         to be writable."                      "This object indicates the conceptual status of this row.

         The value of this object has no effect on whether other
         objects in this conceptual row can be modified.

         This object MUST NOT be set to active until the containing
         conditions, filters, and actions have been defined.  Once
         active, it MUST remain active until no active
         policyGroupContents entries are referencing it.  A failed
         attempt to do so MUST return an inconsistentValue error."                      �"Table used to allow multiple actions to be associated
         with a rule.  It uses the spdSubactionsTable to do this.
         The rows from spdSubactionsTable that are partially indexed
         by spdCompActName form the set of compound actions to be
         performed.  The spdCompActExecutionStrategy column in this
         table indicates how those actions are processed."                       &"A row in the spdCompoundActionTable."                       N"This is an administratively assigned name of this
         compound action."                      �"This object indicates how the sub-actions are executed
         based on the success of the actions as they finish
         executing.

         doAll           - run each sub-action regardless of the
                           exit status of the previous action.
                           This parent action is always
                           considered to have acted successfully.

         doUntilSuccess  - run each sub-action until one succeeds,
                           at which point stop processing the
                           sub-actions within this parent
                           compound action.  If one of the
                           sub-actions did execute successfully,
                           this parent action is also considered
                           to have executed successfully.

         doUntilFailure  - run each sub-action until one fails,
                           at which point stop processing the
                           sub-actions within this compound
                           action.  If any sub-action fails, the
                           result of this parent action is
                           considered to have failed."                      ?"The value of sysUpTime when this row was last modified
         or created either through SNMP SETs or by some other
         external means.

         If this row has not been modified since the last
         re-initialization of the network management subsystem, this
         object SHOULD have a zero value."                      "The storage type for this row.  Rows in this table that
         were created through an external process MAY have a storage
         type of readOnly or permanent.

         For a storage type of permanent, none of the columns have
         to be writable."                      �"This object indicates the conceptual status of this row.

         The value of this object has no effect on whether other
         objects in this conceptual row can be modified.

         Once a row in the spdCompoundActionTable has been made
         active, this object MUST NOT be set to destroy without
         first destroying all the contained rows listed in the
         spdSubactionsTable."                      
"This table contains a list of the sub-actions within a
         given compound action.  Compound actions executing these
         actions MUST execute them in series based on the
         spdSubActPriority value, with the lowest value executing
         first."                       O"A row containing a reference to a given compound-action
         sub-action."                      &"The priority of a given sub-action within a compound
         action.  The order in which sub-actions MUST be executed
         are based on the value from this column, with the lowest
         numeric value executing first (i.e., priority 0 before
         priority 1, 1 before 2, etc.)."                      �"This column points to the action to be taken.  It MAY,
         but is not limited to, point to a row in one of the
         following tables:

            spdCompoundActionTable         - Allowing recursion
            ipsaSaPreconfiguredActionTable
            ipiaIkeActionTable
            ipiaIpsecActionTable

         It MAY also point to one of the scalar objects beneath
         spdStaticActions.

         If this object is set to a pointer to a row in an
         unsupported (or unknown) table, an inconsistentValue
         error MUST be returned.

         If this object is set to point to a non-existent row in
         an otherwise supported table, an inconsistentName error
         MUST be returned.

         If, during packet processing, this column has a value that
         references a non-existent or non-supported object, the
         packet MUST be dropped."                      ?"The value of sysUpTime when this row was last modified
         or created either through SNMP SETs or by some other
         external means.

         If this row has not been modified since the last
         re-initialization of the network management subsystem, this
         object SHOULD have a zero value."                      "The storage type for this row.  Rows in this table that
         were created through an external process MAY have a storage
         type of readOnly or permanent.

         For a storage type of permanent, none of the columns have
         to be writable."                      �"This object indicates the conceptual status of this row.

         The value of this object has no effect on whether other
         objects in this conceptual row can be modified.

         If active, this object MUST remain active unless one of the
         following two conditions are met.  An attempt to set it to
         anything other than active while the following conditions
         are not met MUST result in an inconsistentValue error.  The
         two conditions are:

         I.  No active row in the spdCompoundActionTable exists
             which has a matching spdCompActName.

         II. Or, at least one other active row in this table has a
             matching spdCompActName."                                  