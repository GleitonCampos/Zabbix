    E"The rate, in bits/second, that data  may  move
           in  the context.  Applicable contexts minimally
           include the speed of an  interface  or  virtual
           circuit, the data rate of a (potentially aggre-
           gated) data flow, or the data rate to be  allo-
           cated for use by a flow."               ("The class of service in use by a flow."              �"The Session  Number  convention  is  used  for
           numbers  identifying  sessions or saved PATH or
           RESV information. It is a number in  the  range
           returned  by  a TestAndIncr variable, having no
           protocol meaning whatsoever but serving instead
           as simple identifier.

           The alternative was a very complex instance  or
           instance object that became unwieldy."               �"The number of octets of IP Data, including  IP
           Headers, that a stream may send without concern
           for policing."               �"The size of a message in bytes. This  is  used
           to  specify  the  minimum and maximum size of a
           message along an integrated services route."              �"The value of the C-Type field of a Session ob-
           ject,  as  defined  in  the RSVP specification.
           This value  determines  the  lengths  of  octet
           strings  and use of certain objects such as the
           'port' variables. If the C-Type  calls  for  an
           IP6  address, one would expect all source, des-
           tination, and next/previous hop addresses to be
           16  bytes long, and for the ports to be UDP/TCP
           port numbers, for example."              $"The value of the UDP or TCP Source or Destina-
           tion  Port field, a virtual destination port or
           generalized port identifier used with the IPSEC
           Authentication Header or Encapsulating Security
           Payload, or other session discriminator.  If it
           is  not  used, the value should be of length 0.
           This pair, when coupled with the  IP  Addresses
           of the source and destination system and the IP
           protocol  field,  uniquely  identifies  a  data
           stream."              @"The value of the IP Protocol field  of  an  IP
           Datagram  Header.  This identifies the protocol
           layer above IP.  For example, the  value  6  is
           used  for TCP and the value 17 is used for UDP.
           The values of this field are defined in the As-
           signed Numbers RFC."                                                                                         E"The MIB module to describe the Integrated Services
       Protocol"�"       Fred Baker
       Postal: Cisco Systems
               519 Lado Drive
               Santa Barbara, California 93111
       Tel:    +1 805 681 0115
       E-Mail: fred@cisco.com

               John Krawczyk
       Postal: ArrowPoint Communications
               235 Littleton Road
               Westford, Massachusetts 01886
       Tel:    +1 508 692 5875
       E-Mail: jjk@tiac.net"       !-- Thu Aug 28 09:04:13 PDT 1997
           F"The reservable attributes of the system's  in-
           terfaces."                       B"The reservable attributes of  a  given  inter-
           face."                       c"The number of bits/second currently  allocated
           to reserved sessions on the interface."                       ~"The maximum number of bits/second that may  be
           allocated  to  reserved  sessions on the inter-
           face."                       �"The amount of buffer space  required  to  hold
           the simultaneous burst of all reserved flows on
           the interface."                       �"The number of reserved flows currently  active
           on  this  interface.  A flow can be created ei-
           ther from a reservation protocol (such as  RSVP
           or ST-II) or via configuration information."                       �"The amount of propagation delay that this  in-
           terface  introduces  in addition to that intro-
           diced by bit propagation delays."                     C-- by default, interfaces are presumed to add
-- no extra delays
 B"'active' on interfaces that are configured for
           RSVP."                       Y"Information describing the reserved flows  us-
           ing the system's interfaces."                       �"Information describing the use of a given  in-
           terface   by   a   given   flow.   The  counter
           intSrvFlowPoliced starts counting  at  the  in-
           stallation of the flow."                       �"The number of this flow.  This is for SNMP In-
           dexing purposes only and has no relation to any
           protocol value."                       O"The type of session (IP4, IP6, IP6  with  flow
           information, etc)."                       S"The process that installed this  flow  in  the
           queue policy database."                       �"The destination address used by all senders in
           this  session.   This object may not be changed
           when the value of the RowStatus object is  'ac-
           tive'."                       �"The source address of the sender  selected  by
           this  reservation.  The value of all zeroes in-
           dicates 'all senders'.  This object may not  be
           changed  when the value of the RowStatus object
           is 'active'."                      "The length of the destination address in bits.
           This  is  the CIDR Prefix Length, which for IP4
           hosts and multicast addresses is 32 bits.  This
           object may not be changed when the value of the
           RowStatus object is 'active'."                      "The length of the sender's  address  in  bits.
           This  is  the CIDR Prefix Length, which for IP4
           hosts and multicast addresses is 32 bits.  This
           object may not be changed when the value of the
           RowStatus object is 'active'."                       �"The IP Protocol used by a session.   This  ob-
           ject  may  not be changed when the value of the
           RowStatus object is 'active'."                      �"The UDP or TCP port number used as a  destina-
           tion  port for all senders in this session.  If
           the  IP   protocol   in   use,   specified   by
           intSrvResvFwdProtocol,  is 50 (ESP) or 51 (AH),
           this  represents  a  virtual  destination  port
           number.   A value of zero indicates that the IP
           protocol in use does not have ports.  This  ob-
           ject  may  not be changed when the value of the
           RowStatus object is 'active'."                      �"The UDP or TCP port number used  as  a  source
           port  for  this sender in this session.  If the
           IP    protocol    in    use,    specified    by
           intSrvResvFwdProtocol  is  50 (ESP) or 51 (AH),
           this represents a generalized  port  identifier
           (GPI).   A  value of zero indicates that the IP
           protocol in use does not have ports.  This  ob-
           ject  may  not be changed when the value of the
           RowStatus object is 'active'."                       W"The flow ID that  this  sender  is  using,  if
           this  is  an IPv6 session."                       U"The ifIndex value of the  interface  on  which
           this reservation exists."                       �"The IP Address on the ifEntry  on  which  this
           reservation  exists.  This is present primarily
           to support those interfaces which layer  multi-
           ple IP Addresses on the interface."                      @"The Reserved Rate of the sender's data stream.
           If this is a Controlled Load service flow, this
           rate is derived from the Tspec  rate  parameter
           (r).   If  this  is  a Guaranteed service flow,
           this rate is derived from  the  Rspec  clearing
           rate parameter (R)."                      p"The size of the largest  burst  expected  from
           the sender at a time.

           If this is less than  the  sender's  advertised
           burst  size, the receiver is asking the network
           to provide flow pacing  beyond  what  would  be
           provided  under normal circumstances. Such pac-
           ing is at the network's option."                       �"The weight used  to  prioritize  the  traffic.
           Note  that the interpretation of this object is
           implementation-specific,   as   implementations
           vary in their use of weighting procedures."                       �"The number of the queue used by this  traffic.
           Note  that the interpretation of this object is
           implementation-specific,   as   implementations
           vary in their use of queue identifiers."                       �"The minimum message size for  this  flow.  The
           policing  algorithm will treat smaller messages
           as though they are this size."                       �"The maximum datagram size for this  flow  that
           will conform to the traffic specification. This
           value cannot exceed the MTU of the interface."                       Q"The number of packets that  were  remanded  to
           best effort service."                       X"The number of packets policed since the incep-
           tion of the flow's service."                       �"If 'true', the flow  is  to  incur  loss  when
           traffic is policed.  If 'false', policed traff-
           ic is treated as best effort traffic."                     7-- traffic is, by default, treated as best
-- effort
 -"The QoS service being applied to this flow."                      Y"In the event of ambiguity, the order in  which
           the  classifier  should  make  its comparisons.
           The row with intSrvFlowOrder=0 is tried  first,
           and  comparisons  proceed  in  the order of in-
           creasing value.  Non-serial implementations  of
           the classifier should emulate this behavior."                       �"'active' for all active  flows.   This  object
           may be used to install static classifier infor-
           mation, delete classifier information,  or  au-
           thorize such."                          K"This  object  is  used  to  assign  values  to
           intSrvFlowNumber  as described in 'Textual Con-
           ventions  for  SNMPv2'.   The  network  manager
           reads  the  object,  and  then writes the value
           back in the SET that creates a new instance  of
           intSrvFlowEntry.   If  the  SET  fails with the
           code 'inconsistentValue', then the process must
           be  repeated; If the SET succeeds, then the ob-
           ject is incremented, and the  new  instance  is
           created according to the manager's directions."                                   j"These objects are required  for  Systems  sup-
           porting the Integrated Services Architecture."                 j"These objects are required  for  Systems  sup-
           porting the Integrated Services Architecture."                     "The compliance statement "   G"read-create access is not required. This may be
          read-only." G"read-create access is not required. This may  be
         read-only." G"read-create access is not required. This  may  be
        read-only." G"read-create access is not required.  This  may  be
       read-only." G"read-create access is not required.  This  may  be
       read-only." G"read-create access is not required.  This  may  be
       read-only." G"read-create access is not required.  This  may  be
       read-only." G"read-create access is not required.  This  may  be
       read-only." G"read-create access is not required.  This  may  be
       read-only." H"This object is needed only in a system that imple-
       ments IPv6." G"read-create access is not required.  This  may  be
       read-only." G"read-create access is not required.  This  may  be
       read-only." G"read-create access is not required.  This  may  be
       read-only." G"read-create access is not required.  This  may  be
       read-only." G"read-create access is not required.  This  may  be
       read-only." G"read-create access is not required.  This  may  be
       read-only." G"read-create access is not required.  This  may  be
       read-only." G"read-create access is not required.  This  may  be
       read-only."                    