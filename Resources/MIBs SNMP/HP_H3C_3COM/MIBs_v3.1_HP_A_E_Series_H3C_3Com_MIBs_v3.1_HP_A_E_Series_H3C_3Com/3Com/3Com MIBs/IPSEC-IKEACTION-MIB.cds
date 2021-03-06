   ,"RFC 2409 appendix A,
                IANA"%"Values for authentication methods negotiated
                for the ISAKMP SA by IKE in Phase I.  These are
                values for SA Attrbute type Authentication
                Method (3).

                Unused values <= 65000 are reserved to IANA.

                    reserved(0),        -- reserved in IKE
                    preSharedKey(1),
                    dssSignatures(2),
                    rsaSignatures(3),
                    encryptionWithRsa(4),
                    revisedEncryptionWithRsa(5),
                    reservedDontUse6(6), -- not to be used
                    reservedDontUse7(7), -- not to be used
                    ecdsaSignatures(8)

                Values 65001-65535 are for private use among
                mutually consenting parties."             ,"RFC 2409 appendix A,
                IANA"5"Values for encryption algorithms negotiated
                for the ISAKMP SA by IKE in Phase I.  These are
                values for SA Attrbute type Encryption
                Algorithm (1).

                Unused values <= 65000 are reserved to IANA.
                Currently assigned values at the time of this
                writing:

                    reserved(0),        -- reserved in IKE
                    desCbc(1),          -- RFC 2405
                    ideaCbc(2),
                    blowfishCbc(3),
                    rc5R16B64Cbc(4),    -- RC5 R16 B64 CBC
                    tripleDesCbc(5),    -- 3DES CBC
                    castCbc(6),
                    aesCbc(7)
                Values 65001-65535 are for private use among
                mutually consenting parties."               "."             +"RFC 2407 sections 4.4.5, 4.6.2.1, and 6.9" "."             "RFC 2407 section 4.4.1"w"These are the IPsec DOI values for the Protocol-Id
                field in an ISAKMP Proposal Payload, and in all
                Notification Payloads.

                They are also used as the Protocol-ID In the
                Notification Payload and the Delete Payload.

                Currently assigned values at the time of this
                writing:

                    reserved(0),        -- reserved in DOI
                    protoIsakmp(1),     -- message protection
                                        -- required during Phase I
                                        -- of the IKE protocol
                    protoIpsecAh(2),    -- IP packet authentication
                                        -- via Authentication Header
                    protoIpsecEsp(3),   -- IP packet confidentiality
                                        -- via Encapsulating
                                        -- Security Payload
                    protoIpcomp(4)      -- IP payload compression

                The values 249-255 are reserved for private use
                amongst cooperating systems."             ,"RFC 2409 appendix A,
                IANA"�"Values for Oakley key computation groups for
                Diffie-Hellman exchange negotiated for the ISAKMP
                SA by IKE in Phase I.  They are also used in Phase II
                when perfect forward secrecy is in use.  These are
                values for SA Attrbute type Group Description (4).

                Unused values <= 32767 are reserved to IANA.
                Currently assigned values at the time of this
                writing:

                    none(0),            -- reserved in IKE, used
                                        -- in MIBs to reflect that
                                        -- none of the predefined
                                        -- groups are used
                    modp768(1),         -- default 768-bit MODP group
                    modp1024(2),        -- alternate 1024-bit MODP
                                        -- group
                    ec2nGF155(3),       -- EC2N group on Galois
                                        -- Field GF[2^155]
                    ec2nGF185(4),       -- EC2N group on Galois
                                        -- Field GF[2^185]
                    ec2nGF163Random(6), -- EC2N group on Galois
                                        -- Field GF[2^163],
                                        -- random seed
                    ec2nGF163Koblitz(7),
                                        -- EC2N group on Galois
                                        -- Field GF[2^163],
                                        -- Koblitz curve
                    ec2nGF283Random(8), -- EC2N group on Galois
                                        -- Field GF[2^283],
                                        -- random seed
                    ec2nGF283Koblitz(9),
                                        -- EC2N group on Galois
                                        -- Field GF[2^283],
                                        -- Koblitz curve
                    ec2nGF409Random(10),
                                        -- EC2N group on Galois
                                        -- Field GF[2^409],
                                        -- random seed
                    ec2nGF409Koblitz(11),
                                        -- EC2N group on Galois
                                        -- Field GF[2^409],
                                        -- Koblitz curve
                    ec2nGF571Random(12),
                                        -- EC2N group on Galois
                                        -- Field GF[2^571],
                                        -- random seed
                    ec2nGF571Koblitz(13)
                                        -- EC2N group on Galois
                                        -- Field GF[2^571],
                                        -- Koblitz curve

                Values 32768-65535 are for private use among
                mutually consenting parties."               "."             ,"RFC 2409 appendix A,
                IANA"�"Values for hash algorithms negotiated
                for the ISAKMP SA by IKE in Phase I.  These are
                values for SA Attrbute type Hash Algorithm (2).

                Unused values <= 65000 are reserved to IANA.
                Currently assigned values at the time of this
                writing:

                    reserved(0),        -- reserved in IKE
                    md5(1),             -- RFC 1321
                    sha(2),             -- FIPS 180-1
                    tiger(3),
                    sha256(4),
                    sha384(5),
                    sha512(6)

                Values 65001-65535 are for private use among
                mutually consenting parties."                                                                                                 �"The MIB module for defining IKE actions for managing IPsec
      Security Policy.
      Copyright (C) The Internet Society (2006). This version of
      this MIB module is part of RFC YYYY, see the RFC itself for
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
                  Email: rstory@sparta.com

                  Cliff Wang
                  ARO/North Carolina State University
                  4300 S. Miami Blvd.
                  RTP, NC 27709
                  E-Mail: cliffwangmail@yahoo.com" "20060905'" )"Initial version, published as RFC YYYY."       -- 05 September 2006
     -- RFC-editor assigns YYYY
    �"This table is used to provide credentials for IKE
         identities.
         It can be used to for filters which are matched to
         credentials of IKE peers, where the credentials in question
         have been obtained from an IKE phase 1 exchange.  They MAY
         be X.509 certificates, Kerberos tickets, etc...

         It can also be used to provide credentials for local IKE
         identities."                       /"A row defining a particular credential filter"                       )"The administrative name of this filter."                       L"The credential type that is expected for this filter to
         succeed."                      Y"The piece of the credential to match against.  Examples:
         serialNumber, signatureAlgorithm, issuerName or
         subjectName.

         For credential types without fields (e.g. shared secret),
         this field SHOULD be left empty, and the entire credential
         will be matched against the ipiaCredFiltMatchFieldValue."                       �"The value that the field indicated by the
         ipiaCredFiltMatchFieldName MUST match against for the
         filter to be considered TRUE."                       �"This value is used to look up a row in the
         ipiaIpsecCredMngServiceTable for the Certificate Authority
         (CA) Information.  This value is empty if there is no CA
         used for this filter."                       �"The value of sysUpTime when this row was last modified or
         created either through SNMP SETs or by some other external
         means."                      	"The storage type for this row.  Rows in this table which
         were created through an external process MAY have a storage
         type of readOnly or permanent.

         For a storage type of permanent, none of the columns have
         to be writable."                      �"This object indicates the conceptual status of this row.

         The value of this object has no effect on whether other
         objects in this conceptual row can be modified.

         If active, this object MUST remain active if it is
         referenced by an active row in another table.  An attempt
         to set it to anything other than active while it is
         referenced by an active row in another table MUST result in
         an inconsistentValue error."                       �"The ipiaIkeActionTable contains a list of the parameters
         used for an IKE phase 1 SA DOI negotiation.  See the
         corresponding table ipiaIkeActionProposalsTable for a list
         of proposals contained within a given IKE Action."                       H"The ipiaIkeActionEntry lists the IKE negotiation
         attributes."                       8"This object contains the name of this ikeAction entry."                      i"This object is administratively assigned to reference a row
         in the ipiaSaNegotiationParametersTable where additional
         parameters affecting this action can be found.

         An attempt to set this object to a value that does not
         exist in the ipiaSaNegotiationParametersTable MUST result
         in an inconsistentValue error."                      "ipiaIkeActThresholdDerivedKeys specifies what percentage
         of the derived key limit (see the LifetimeDerivedKeys
         property of IKEProposal) can expire before IKE SHOULD
         attempt to renegotiate the IKE phase 1 security
         association."                       N"ipiaIkeActExchangeMode specifies the IKE Phase 1
         negotiation mode."                       4"The values to be used for Diffie-Hellman exchange."                       �"This column along with ipiaIkeActIdentityContext and
         endpoint information is used to refer an
         ipiaIkeIdentityEntry in the ipiaIkeIdentityTable."                       �"This column, along with ipiaIkeActIdentityType and endpoint
         information, is used to refer to an ipiaIkeIdentityEntry in
         the ipiaIkeIdentityTable."                       �"This object indicates the peer id name of the IKE peer.
         This object can be used to look up the peer id value,
         address, credentials and other values in the
         ipiaPeerIdentityTable."                       v"ikeDoActionLogging specifies whether or not an audit
         message SHOULD be logged when this ike SA is created."                       �"ikeDoPacketLogging specifies whether or not an audit
         message SHOULD be logged and if there is logging, how many
         bytes of the packet to place in the notification."                       "Vendor ID Payload.  A value of NULL means that Vendor ID
         payload will be neither generated nor accepted.  A non-NULL
         value means that a Vendor ID payload will be generated
         (when acting as an initiator) or is expected (when acting
         as a responder)."                       �"The value of sysUpTime when this row was last modified or
         created either through SNMP SETs or by some other external
         means."                      	"The storage type for this row.  Rows in this table which
         were created through an external process MAY have a storage
         type of readOnly or permanent.

         For a storage type of permanent, none of the columns have
         to be writable."                      �"This object indicates the conceptual status of this row.

         The value of this object has no effect on whether other
         objects in this conceptual row can be modified.

         This object MUST NOT be set to destroy if referred to by
         other rows in other action tables.  An attempt to set it to
         anything other than active while it is referenced by an
         active row in another table MUST result in an
         inconsistentValue error."                       u"The ipiaIpsecActionTable contains a list of the parameters
         used for an IKE phase 2 IPsec DOI negotiation."                       L"The ipiaIpsecActionEntry lists the IPsec negotiation
         attributes."                       8"ipiaIpsecActName is the name of the ipsecAction entry."                      T"This object is used to reference a row in the
         ipiaSaNegotiationParametersTable where additional
         parameters affecting this action can be found.

         An attempt to set this column to a value that does not
         exist in the ipiaSaNegotiationParametersTable MUST result
         in an inconsistentValue error."                      T"This object is used to reference one or more rows in the
         ipiaIpsecProposalsTable where an ordered list of proposals
         affecting this action can be found.

         An attempt to set this column to a value that does not
         exist in the ipiaIpsecProposalsTable MUST result in an
         inconsistentValue error."                       �"This MIB object specifies whether or not perfect forward
         secrecy is used when refreshing keys.  A value of true
         indicates that PFS SHOULD be used."                       ["The VendorID property is used to identify vendor-defined
         key exchange GroupIDs."                      8"This object specifies the Diffie-Hellman group to use for
         phase 2 when the object ipiaIpsecActUsePfs is true and the
         object ipiaIpsecActUseIkeGroup is false.  If the GroupID
         number is from the vendor-specific range (32768-65535), the
         VendorID qualifies the group number."                      �"This object indicates the peer id name of the peer
         gateway.  This object can be used to look up the peer id
         value, address and other values in the
         ipiaPeerIdentityTable.  This object is used when initiating
         a tunnel SA.  This object is not used for transport SAs.
         If no value is set and ipiaIpsecActMode is tunnel, the peer
         gateway is determined from the source or destination
         address of the packet."                       �"This object specifies whether or not to use the same
         GroupId for phase 2 as was used in phase 1.  If UsePFS is
         false, this entry SHOULD be ignored."                       �"This object specifies how the proposed selector for the
         security association will be created.  The selector is
         created by using the FilterList information.  The selector
         can be subnet, address, porotocol, or port."                       U"This object specifies the encapsulation of the IPsec SA
         to be negotiated."                       �"This object specifies the processing of DF bit by the
         negotiated IPsec tunnel.
         1 - DF bit is copied.
         2 - DF bit is set.
         3 - DF bit is cleared."                       �"ipiaIpsecActDoActionLogging specifies whether or not an
         audit message SHOULD be logged when this ipsec SA is
         created."                       �"ipiaIpsecActDoPacketLogging specifies whether or not an
         audit message SHOULD be logged and if there is logging, how
         many bytes of the packet to place in the notification."                       �"The value of sysUpTime when this row was last modified or
         created either through SNMP SETs or by some other external
         means."                      	"The storage type for this row.  Rows in this table which
         were created through an external process MAY have a storage
         type of readOnly or permanent.

         For a storage type of permanent, none of the columns have
         to be writable."                      �"This object indicates the conceptual status of this row.

         The value of this object has no effect on whether other
         objects in this conceptual row can be modified.

         If active, this object MUST remain active if it is
         referenced by an active row in another table.  An attempt
         to set it to anything other than active while it is
         referenced by an active row in another table MUST result in
         an inconsistentValue error."                       a"This table contains a list of all ike proposal names found
         within a given IKE Action."                       -"a row containing one ike proposal reference"                       �"The numeric priority of a given contained proposal inside
         an ike Action.  This index SHOULD be used to order the
         proposals in an IKE Phase I negotiation, lowest value first
         (i.e. 0 first, then 1,2,etc...)."                      4"The administratively assigned name that can be used to
         reference a set of values contained within the
         ipiaIkeProposalTable.

         An attempt to set this object to a value that doesn't exist
         in the ipiaIkeProposalTable MUST result in an
         inconsistentValue error."                       �"The value of sysUpTime when this row was last modified or
         created either through SNMP SETs or by some other external
         means."                      	"The storage type for this row.  Rows in this table which
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

         I.  No active row in the ipiaIkeActionTable exists
             which has a matching ipiaIkeActName.

         II. Or at least one other active row in this table has a
             matching ipiaIkeActName."                       ]"This table contains a list of IKE proposals which are used
         in an IKE negotiation."                       "One IKE proposal entry."                       �"ipiaIkePropLifetimeDerivedKeys specifies the number of
         times that a phase 1 key will be used to derive a phase 2
         key before the phase 1 security association needs
         renegotiated."                       p"ipiaIkePropCipherAlgorithm specifies the proposed phase 1
         security association encryption algorithm."                       t"This object specifies, in bits, the key length for
         the cipher algorithm used in IKE Phase 1 negotiation."                       t"This object specifies the number of key rounds for
         the cipher algorithm used in IKE Phase 1 negotiation."                       g"ipiaIkePropHashAlgorithm specifies the proposed phase 1
         security assocation hash algorithm."                       �"ipPRFAlgorithm specifies the proposed phase 1 security
         association psuedo-random function.

         Note: currently no prf algorithms are defined."                       ["The VendorID property is used to identify vendor-defined
         key exchange GroupIDs."                       `"This object specifies the proposed phase 1 security
         association Diffie-Hellman group"                       j"This object specifies the proposed authentication
         method for the phase 1 security association."                       �"ipiaIkePropMaxLifetimeSecs specifies the maximum amount of
         time to propose a security association remain valid.

         A value of 0 indicates that the default lifetime of
         8 hours SHOULD be used."                       |"ipiaIkePropMaxLifetimeKB specifies the maximum kilobyte
         lifetime to propose a security association remain valid."                       �"The value of sysUpTime when this row was last modified or
         created either through SNMP SETs or by some other external
         means."                      	"The storage type for this row.  Rows in this table which
         were created through an external process MAY have a storage
         type of readOnly or permanent.

         For a storage type of permanent, none of the columns have
         to be writable."                      �"This object indicates the conceptual status of this row.

         The value of this object has no effect on whether other
         objects in this conceptual row can be modified.

         If active, this object MUST remain active if it is
         referenced by an active row in another table.  An attempt
         to set it to anything other than active while it is
         referenced by an active row in another table MUST result in
         an inconsistentValue error."                       K"This table lists one or more IPsec proposals for
         IPsec actions."                       9"An entry containing (possibly a portion of) a proposal."                       "The name of this proposal."                       �"The priority level (AKA sequence level) of this proposal.
         A lower number indicates a higher precedence (0 before 1,
         etc..)."                       �"The protocol Id for the transforms for this proposal.  The
         protoIsakmp(1) value is not valid for this object.  This
         object, along with the ipiaIpsecPropTransformsName, is the
         index into the ipiaIpsecTransformsTable."                      p"The name of the transform or group of transforms for this
         protocol.  This object, along with the
         ipiaIpsecPropProtocolId, is the index into the
         ipiaIpsecTransformsTable.

         An attempt to set this object to a value that does not
         exist in the ipiaIpsecTransformTable MUST result in an
         inconsistentValue error."                       �"The value of sysUpTime when this row was last modified or
         created either through SNMP SETs or by some other external
         means."                      	"The storage type for this row.  Rows in this table which
         were created through an external process MAY have a storage
         type of readOnly or permanent.

         For a storage type of permanent, none of the columns have
         to be writable."                      q"This object indicates the conceptual status of this row.

         The value of this object has no effect on whether other
         objects in this conceptual row can be modified.

         This row MUST NOT be set to active until the corresponding
         row(s) in the ipiaIpsecTransformsTable exists and is
         active.

         If active, this object MUST remain active unless one of the
         following two conditions are met.  An attempt to set it to
         anything other than active while the following conditions
         are not met MUST result in an inconsistentValue error.  The
         two conditions are:

         I.  No active row in the ipiaIkeActionProposalTable exists
             which has a matching ipiaIpsecPropName.

         II. Or at least one other active row in this table has a
             matching ipiaIpsecPropName."                       �"This table lists the IPsec proposals contained within a
         given IPsec action and the transforms within each of those
         proposals.  These proposals and transforms can then be used
         to create phase 2 negotiation proposals."                       <"An entry containing the information on an IPsec transform."                       i"The protocol type for this transform.  The protoIsakmp(1)
         value is not valid for this object."                       5"The name for this transform or group of transforms."                      P"The priority level (AKA sequence level) of the this
         transform within the group of transforms (0 before 1,
         etc...).  This indicates the preference for which
         algorithms are requested when the list of transforms are
         sent to the remote host.  A lower number indicates a higher
         precedence."                      "The name for the given transform.  Depending on the value
         of ipiaIpsecTranType, this value is used to lookup the
         transform's specific parameters in the
         ipiaAhTransformTable, the ipiaEspTransformTable or the
         ipiaIpcompTransformTable."                       �"The value of sysUpTime when this row was last modified or
         created either through SNMP SETs or by some other external
         means."                      	"The storage type for this row.  Rows in this table which
         were created through an external process MAY have a storage
         type of readOnly or permanent.

         For a storage type of permanent, none of the columns have
         to be writable."                      �"This object indicates the conceptual status of this row.

         The value of this object has no effect on whether other
         objects in this conceptual row can be modified.

         This row MUST NOT be set to active until the corresponding
         row in the ipiaAhTransformTable, ipiaEspTransformTable or
         the ipiaIpcompTransformTable exists.

         If active, this object MUST remain active unless one of the
         following two conditions are met.  An attempt to set it to
         anything other than active while the following conditions
         are not met MUST result in an inconsistentValue error.  The
         two conditions are:

         I.  No active row in the IpiaIpsecProposalsTable exists
             which has a matching ipiaIpsecPropTransformsName.

         II. Or at least one other active row in this table has a
             matching ipiaIpsecPropTransformsName."                      �"IKEIdentity is used to represent the identities that are
         used for an IPProtocolEndpoint (or collection of
         IPProtocolEndpoints) to identify itself in IKE phase 1
         negotiations.  The column ipiaIkeActIdentityType and
         ipiaIkeIdentityContext in an ipiaIkeActionEntry together
         with the spdEndGroupInterface in the
         spdEndpointToGroupTable specifies the unique identity to
         use in a negotiation exchange."                       6"ikeIdentity lists the attributes of an IKE identity."                      �"This value is used as an index into the
         ipiaCredentialFilterTable to look up the actual credential
         value and other credential information.

         For ID's without associated credential information, this
         value is left blank.

         For ID's that are address types, this value MAY be left
         blank and the associated IPProtocolEndpoint or appropriate
         member of the Collection of endpoints is used."                       �"The value of sysUpTime when this row was last modified or
         created either through SNMP SETs or by some other external
         means."                      	"The storage type for this row.  Rows in this table which
         were created through an external process MAY have a storage
         type of readOnly or permanent.

         For a storage type of permanent, none of the columns have
         to be writable."                      �"This object indicates the conceptual status of this row.

         The value of this object has no effect on whether other
         objects in this conceptual row can be modified.

         If active, this object MUST remain active if it is
         referenced by an active row in another table.  An attempt
         to set it to anything other than active while it is
         referenced by an active row in another table MUST result in
         an inconsistentValue error."                          