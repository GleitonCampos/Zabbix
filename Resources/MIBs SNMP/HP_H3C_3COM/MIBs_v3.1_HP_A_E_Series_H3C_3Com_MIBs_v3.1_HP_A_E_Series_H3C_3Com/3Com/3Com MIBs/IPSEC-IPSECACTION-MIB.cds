   \"RFC 2407 section 4.5, RFC 2407 section 4.4.3.1,
                 RFC 1826, IANA, RFC 2857"�"The ESP Authentication Algorithm used in the IPsec
                DOI as a SA Attributes definition in the Transform
                Payload of Phase II of an IKE negotiation.  This
                set of values defines the AH authentication
                algorithm, when the associated Proposal Payload has
                a Protocol-ID of 2 (AH).  This set of values
                defines the ESP authentication algorithm, when the
                associated Proposal Payload has a Protocol-ID
                of 3 (ESP).

                Unused values <= 61439 are reserved to IANA.
                Currently assigned values at the time of this
                writing:

                    none(0),            -- reserved in DOI, used
                                        -- in MIBs to reflect no
                                        -- encryption used
                    hmacMd5(1),         -- hashed MAC using MD5
                    hmacSha(2),         -- hashed MAC using SHA-1
                    desMac(3),          -- DES MAC
                    kpdk(4),            -- RFC 1826
                                        -- Key/Pad/Data/Key
                    hmacSha256(5),      -- hashed MAC using SHA-256
                    hmacSha384(6),      -- hashed MAC using SHA-384
                    hmacSha512(7),      -- hashed MAC using SHA-512
                    hamcRipemd(8)       -- hashed MAC using
                                        -- RIPEMD-160-96

                Values 61440-65535 are for private use.

                In a MIB, a value of 0 indicates that ESP
                has been negotiated without authentication."               x"IpsaCredentialType identifies the type of credential
         contained in a corresponding IpsaIdentityFilter object."             +"RFC 2407 sections 4.4.5, 4.6.2.1, and 6.9""The IPsec DOI Identification Type is an 8-bit value
                which is used in the ID Type field as a discriminant
                for interpretation of the variable-length
                Identification Payload.

                Currently assigned values at the time of this
                writing:

                    reserved(0),        -- reserved in DOI
                    idIpv4Addr(1),      -- a single four (4) octet
                                        -- IPv4 address
                    idFqdn(2),          -- fully-qualified domain
                                        -- name string
                    idUserFqdn(3),      -- fully-qualified username
                                        -- string
                    idIpv4AddrSubnet(4),
                                        -- a range of IPv4 addresses,
                                        -- represented by two
                                        -- four (4) octet values,
                                        -- where the first is an
                                        -- address and the second
                                        -- is a mask
                    idIpv6Addr(5),      -- a single sixteen (16)
                                        -- octet IPv6 address
                    idIpv6AddrSubnet(6),
                                        -- a range of IPv6 addresses,
                                        -- represented by two
                                        -- sixteen (16) octet values,
                                        -- where the first is an
                                        -- address and the second
                                        -- is a mask
                    idIpv4AddrRange(7), -- a range of IPv4 addresses,
                                        -- represented by two
                                        -- four (4) octet values,
                                        -- where the first is the
                                        -- beginning IPv4 address
                                        -- and the second is the
                                        -- ending IPv4 address
                    idIpv6AddrRange(8), -- a range of IPv6 addresses,
                                        -- represented by two
                                        -- sixteen (16) octet values,
                                        -- where the first is the
                                        -- beginning IPv6 address
                                        -- and the second is the
                                        -- ending IPv6 address
                    idDerAsn1Dn(9),     -- the binary DER encoding of
                                        -- ASN1 X.500
                                        -- DistinguishedName
                    idDerAsn1Gn(10),    -- the binary DER encoding of
                                        -- ASN1 X.500 GeneralName
                    idKeyId(11)         -- opaque byte stream which
                                        -- may be used to pass
                                        -- vendor-specific
                                        -- information

                The values 249-255 are reserved for private use
                amongst cooperating systems."             8"RFC 2407 sections 4.4.4 and 6.5,
                IANA"�"The values of the IPsec DOI ESP Transform Identifier
                which identify a particular algorithm to be used to
                provide secrecy protection for ESP.  It is used in
                the Tranform-ID field of a ISAKMP Transform Payload
                for the IPsec DOI, when the Protocol-Id of the
                associated Proposal Payload is 2 (AH), 3 (ESP),
                and 4 (IPCOMP).

                Currently assigned values at the time of this
                writing:

                    none(0),            -- reserved in DOI, used
                                        -- in MIBs to reflect no
                                        -- encryption used
                    espDesIv64(1),      -- DES-CBC transform defined
                                        -- in RFC 1827 and RFC 1829
                                        -- using a 64-bit IV
                    espDes(2),          -- generic DES transform
                                        -- using DES-CBC
                    esp3Des(3),         -- generic triple-DES
                                        -- transform
                    espRc5(4),          -- RC5 transform
                    espIdea(5),         -- IDEA transform
                    espCast(6),         -- CAST transform
                    espBlowfish(7),     -- BLOWFISH transform
                    esp3Idea(8),        -- reserved for triple-IDEA
                    espDesIv32(9),      -- DES-CBC transform defined
                                        -- in RFC 1827 and RFC 1829
                                        -- using a 32-bit IV
                    espRc4(10),         -- reserved for RC4
                    espNull(11),        -- no confidentiality
                                        -- provided by ESP
                    espAes(12)          -- NIST AES transform

                The values 249-255 are reserved for private use
                amongst cooperating systems."             <"RFC 2407 sections 4.4.5 and 6.6,
                RFC 3051"�"The IPsec DOI IPCOMP Transform Identifier is an
                8-bit value which identifies a particular algorithm
                to be used to provide IP-level compression before
                ESP. It is used in the Tranform-ID field of a ISAKMP
                Transform Payload for the IPsec DOI, when the
                Protocol-Id of the associated Proposal Payload is 4
                (IPCOMP).

                The values 1-47 are reserved for algorithms for which
                an RFC has been approved for publication.
                Currently assigned values at the time of this
                writing:

                    reserved(0),        -- reserved in DOI
                    ipcompOui(1),       -- proprietary compression
                                        -- transform
                    ipcompDeflate(2),   -- 'zlib' deflate algorithm
                    ipcompLzs(3),       -- Stac Electronics LZS
                    ipcompLzjh(4)       -- ITU-T V.44 packet method

                The values 48-63 are reserved for private use amongst
                cooperating systems.

                The values 64-255 are reserved for future expansion."              4"IpsaIdentityFilter contains a string encoded Identity Type
         value to be used in comparisons against an IKE Identity
         payload.  Wherever this TC is used, there SHOULD be an
         accompanying column which uses the IpsecDoiIdentType TC to
         specify the type of data in this object.

         See the IpsecDoiIdentType TC for the supported identity
         types available.  Note that the IpsecDoiIdentType TC
         sepcifies how to encode binary values, while this object
         will contain human readable string versions."              �"The Encapsulation Mode used as an IPsec DOI
                SA Attributes definition in the Transform Payload
                of a Phase II IKE negotiation.  This set of
                values defines encapsulation modes used for AH,
                ESP, and IPCOMP when the associated Proposal Payload
                has a Protocol-ID of 3 (ESP).

                Unused values <= 61439 are reserved to IANA.
                Currently assigned values at the time of this
                writing:

                    reserved(0),        -- reserved in DOI
                    tunnel(1),
                    transport(2)

                Values 61440-65535 are for private use."                                                                                             �"The MIB module defines IPsec actions for managing IPsec
      Security Policy.

      Copyright (C) The Internet Society (2006). This version of
      this MIB module is part of RFC XXXX, see the RFC itself for
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
                  E-Mail: cliffwangmail@yahoo.com" "200610170000Z" )"Initial version, published as RFC XXXX."       -- 17 October 2006
     -- RFC-editor assigns XXXX
     �"This table is a list of non-negotiated IPsec actions (SAs)
         that can be performed and contains or indicates the data
         necessary to create such an SA."                       2"One entry in the ipsaSaPreconfiguredActionTable."                       M"This object contains the name of this
         SaPreconfiguredActionEntry."                       P"This object indicates whether a row applies to egress
         or ingress SAs"                       c"An administratively assigned string which can be used
         to describe what the action does."                      �"ipsaSaPreActActionLifetimeSec specifies how long in seconds
         the security association derived from this action is used.
         The default lifetime is 8 hours.

         Note: the actual lifetime of the preconfigured SA will be
         the lesser of the value of this object and of the value of
         the MaxLifetimeSecs property of the associated transform.

         A value of 0 indicates no time limit on the lifetime
         of the SA."                       "ipsaSaPreActActionLifetimeKB specifies how long the
         security association derived from this action is used.
         After this value in KiloBytes has passed through the
         security association, this SA SHOULD be destroyed.

         Note: the actual lifetime of the preconfigured SA will be
         the lesser of the value of this object and of the value of
         the MaxLifetimeKB property of the associated transform.

         The default value, '0', indicates no kilobyte limit."                       �"ipsaSaPreActDoActionLogging specifies whether or not an
         audit message SHOULD be logged when a preconfigured SA is
         created."                       �"ipsaSaPreActDoPacketLogging specifies whether or not an
         audit message SHOULD be logged and if there is logging, how
         many bytes of the packet to place in the notification."                       �"This object specifies how to process the DF bit in packets
         sent through the preconfigured SA.  This object is not used
         for transport SAs."                       s"This object specifies the encapsulation mode to use for the
         preconfigured SA: tunnel or transport mode."                       5"This object represents the SPI value for the AH SA."                       �"This object is the name of the AH transform to use as an
         index into the AHTransformTable.  A zero length value
         indicates no transform of this type is used."                       �"This object contains a name value to be used as an index
         into the ipsaCredentialTable which holds the pertinent
         keying information for the AH SA."                       6"This object represents the SPI value for the ESP SA."                       �"This object is the name of the ESP transform to use as an
         index into the ESPTransformTable.  A zero length value
         indicates no transform of this type is used."                       �"This object contains a name value to be used as an index
         into the ipsaCredentialTable which holds the pertinent
         keying information for the encryption algorithm of the ESP
         SA."                       �"This object contains a name value to be used as an index
         into the ipsaCredentialTable which holds the pertinent
         keying information for the authentication algorithm of the
         ESP SA."                       9"This object represents the SPI value for the IPComp SA."                       �"This object is the name of the IPComp transform to use as
         an index into the IPCompTransformTable.  A zero length
         value indicates no transform of this type is used."                      �"This object indicates the peer id name of the peer
         gateway.  This object can be used to look up the peer
         gateway address in the ipsaPeerIdentityTable.

         This object is only used when initiating a tunnel SA, and
         is not used for transport SAs.  If ipsaSaPreActActionType
         specifies tunnel mode and this object is empty, the peer
         gateway is determined from the source or destination of the
         packet."                      ?"The value of sysUpTime when this row was last modified or
         created either through SNMP SETs or by some other external
         means.

         If this row has not been modified since the last
         re-initialization of the network management subsystem, this
         object SHOULD have a zero value."                      	"The storage type for this row.  Rows in this table which
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
         an inconsistentValue error."                       ^"This table lists all the AH transforms which can be used to
         build IPsec proposals."                       9"This entry contains the attributes of one AH transform."                       �"This object contains the name of this AH transform.  This
        row
         will be referred to by an ipsaIpsecTransformsEntry."                       �"ipsaAhTranMaxLifetimeSec specifies how long in seconds the
         security association derived from this transform SHOULD be
         used.

         A value of 0 indicates that the default lifetime of
         8 hours SHOULD be used."                       �"ipsaAhTranMaxLifetimeKB specifies how long in kilobytes the
         security association derived from this transform SHOULD be
         used."                       <"This object specifies the AH algorithm for this transform."                       q"ipsaAhTranReplayProtection indicates whether or not anti
         replay service is to be provided by this SA."                      "ipsaAhTranReplayWindowSize indicates the size, in bits, of
         the replay window to use if replay protection is true for
         this transform.  The window size is assumed to be a power
         of two.  If Replay Protection is false, this value can be
         ignored."                      ?"The value of sysUpTime when this row was last modified or
         created either through SNMP SETs or by some other external
         means.

         If this row has not been modified since the last
         re-initialization of the network management subsystem, this
         object SHOULD have a zero value."                      	"The storage type for this row.  Rows in this table which
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
         an inconsistentValue error."                       ^"This table lists all the ESP transforms which can be used
         to build IPsec proposals"                       :"This entry contains the attributes of one ESP transform."                       c"The name of this particular espTransform be referred to by
         an ipsaIpsecTransformsEntry."                       �"ipsaEspTranMaxLifetimeSec specifies how long in seconds the
         security association derived from this transform SHOULD be
         used.

         A value of 0 indicates that the default lifetime of
         8 hours SHOULD be used."                       �"ipsaEspTranMaxLifetimeKB specifies how long in kilobytes
         the security association derived from this transform is
         used."                       O"This object specifies the transform ID of the ESP cipher
         algorithm."                       X"This object specifies, in bits, the key length for
         the ESP cipher algorithm."                       X"This object specifies the number of key rounds for
         the ESP cipher algorithm."                       7"This object specifies the ESP integrity algorithm ID."                       r"ipsaEspTranReplayPrevention indicates whether or not
         anti-replay service is to be provided by this SA."                      "ipsaEspTranReplayWindowSize indicates the size, in bits, of
         the replay window to use if replay protection is true for
         this transform.  The window size is assumed to be a power
         of two.  If Replay Protection is false, this value can be
         ignored."                      ?"The value of sysUpTime when this row was last modified or
         created either through SNMP SETs or by some other external
         means.

         If this row has not been modified since the last
         re-initialization of the network management subsystem, this
         object SHOULD have a zero value."                      	"The storage type for this row.  Rows in this table which
         were created through an external process MAY have a storage
         type of readOnly or permanent.

         For a storage type of permanent, none of the columns have
         to be writable."                      �"This object indicates the conceptual status of this row.

         The value of this object has no effect on whether other
         objects in this conceptual row can be modified.

         If active, this object MUST remain active if it is
         referenced by a row in another table.  An attempt to set it
         to anything other than active while it is referenced by an
         active row in another table MUST result in an
         inconsistentValue error."                       w"A table of credential values.  Example of Credentials are
         shared secrets, certificates or kerberos tickets."                       #"A row in the ipsaCredentialTable."                       ="This object represents the name for an entry in this table."                       K"This object represents the type of the credential for this
         row."                      �"This object represents the credential value.

         If the size of the credential is greater than 1024, the
         credential MUST be configured via the ipsaCredSegmentTable.

         For credential type where the disclosure of the credential
         would compromise the credential (e.g. shared secrets), when
         this object is accessed for reading, it MUST return a null
         length (0 length) string and MUST NOT return the configured
         credential."                      &"This value represents the size of the credential.

         If this value is greater than 1024, the ipsaCreCredential
         column will return an empty (0 length) string. In this
         case, the value of the credential is retrived from the
         ipsaCredSegmentTable.

         For credential type where the disclosure of the credential
         would compromise the credential (e.g. shared secrets), when
         this object is accessed for reading, it MUST return a value
         of 0 and MUST NOT return the size credential."                       �"This value is used as an index into the
         ipsaIpsecCredMngServiceTable.  For IDs that have no
         credential management service, this value is left blank."                       �"This object represents the Identification (e.g. user name)
         of the user of the key information on the remote site.  If
         there is no ID associated with this credential, the value
         of this object SHOULD be the null string."                      �"Indicates whether this credential is considered
         active.  Rows with a disabled status MUST NOT be used for
         any purpose, including IKE or IPSEC processing.

         For credentials whose size does not execeed the maximum
         size for the ipsaCredCredential, it MAY be set to enabled
         during row creation. For larger credentials, it SHOULD be
         left as disabled until all rows have been uploaded to the
         ipsaCredSegmentTable."                      ?"The value of sysUpTime when this row was last modified or
         created either through SNMP SETs or by some other external
         means.

         If this row has not been modified since the last
         re-initialization of the network management subsystem, this
         object SHOULD have a zero value."                      	"The storage type for this row.  Rows in this table which
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
         an inconsistentValue error."                      "PeerIdentity is used to represent the identities that are
         used for peers to identify themselves in IKE phase I/II
         negotiations.  PeerIdentityTable aggregates the table
         entries that provide mappings between identities and their
         addresses."                       8"peerIdentity matches a peer's identity to its address."                       �"This is an administratively assigned value that, together
         with ipsaPeerIdPriority, uniquely identifies an entry in
         this table."                      �"This object, along with ipsaPeerIdName, uniquely identifies
         an entry in this table.  The priority also indicates the
         ordering of peer gateways from which to initiate or accept
         SAs.  The priority value is ordered from low to high.  For
         example, a row with a priority of 0 is used before a row
         with a priority of 1, a 1 before a 2, etc...."                       X"ipsaPeerIdType is an enumeration identifying the type of the
         Identity value."                      d"ipsaPeerIdValue contains an Identity filter to be used to
         match against the identity payload in an IKE request, or
         blank otherwise.  If this value matches the value in the
         identity payload, the credential for the peer can be found
         using the ipsaPeerIdCredentialName as an index into the
         credential table."                       l"The property ipsaPeerIdAddressType specifies the format of
         the ipsaPeerIdAddress property value."                       �"The property PeerAddress specifies the IP address of the
         peer.  The format is specified by the
         ipsaPeerIdAddressType."                       �"This value is used as an index into the ipsaCredentialTable
         to look up the actual credential value and other credential
         information.  For peer IDs that have no associated
         credential information, this value is left blank."                      ?"The value of sysUpTime when this row was last modified or
         created either through SNMP SETs or by some other external
         means.

         If this row has not been modified since the last
         re-initialization of the network management subsystem, this
         object SHOULD have a zero value."                      	"The storage type for this row.  Rows in this table which
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
         an inconsistentValue error."                                  ?"The compliance statement for SNMP entities that include an
         IPsec MIB implementation and supports IPsec actions.

         There are a number of INDEX objects that cannot be
         represented in the form of OBJECT clauses in SMIv2, but for
         which we have the following compliance requirements,
         expressed in OBJECT clause form in this description clause:

         -- OBJECT ipsaPeerIdAddressType
         -- SYNTAX InetAddressType { ipv4(1), ipv6(2) }
         -- DESCRIPTION
         -- Only support for global IPv4 and IPv6 address
         -- types is required.
         --
         -- OBJECT ipsaPeerIdAddress
         -- SYNTAX InetAddress (SIZE(4|16))
         -- DESCRIPTION
         -- Only support for global IPv4 and IPv6 address
         -- types is required.
         --"   m"This object is optional so as not to impose an undue
              burden on resource-constrained devices." m"This object is optional so as not to impose an undue
              burden on resource-constrained devices." m"This object is optional so as not to impose an undue
              burden on resource-constrained devices." m"This object is optional so as not to impose an undue
              burden on resource-constrained devices." m"This object is optional so as not to impose an undue
              burden on resource-constrained devices." m"This object is optional so as not to impose an undue
              burden on resource-constrained devices." m"This object is optional so as not to impose an undue
              burden on resource-constrained devices."                i"This group is the set of objects that support preconfigured
         IPsec actions.  These objects are from The Preconfigured
         Action Table.  This group also includes objects from the
         shared tables: Peer Identity Table, Credential Table,
         Credential Management Service Table and the AH, ESP, and
         IPComp Transform Tables."                 �"This group includes objects from tables expected
         to be shared by other modules: Peer Identity Table,
         Credential Table, Credential Management Service Table and
         the AH, ESP, and IPComp Transform Tables."                