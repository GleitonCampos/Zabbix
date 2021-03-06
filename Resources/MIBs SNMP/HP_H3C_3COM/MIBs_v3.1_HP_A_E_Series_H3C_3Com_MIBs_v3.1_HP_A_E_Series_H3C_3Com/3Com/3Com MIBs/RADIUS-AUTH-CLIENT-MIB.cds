                               2"The OID assigned to RADIUS MIB work by the IANA."                   �"The MIB module for entities implementing the client
              side of the Remote Access Dialin User Service (RADIUS)
              authentication protocol." �" Bernard Aboba
                Microsoft
                One Microsoft Way
                Redmond, WA  98052
                US

                Phone: +1 425 936 6605
                EMail: bernarda@microsoft.com" "9906110000Z" *"Initial version as published in RFC 2618"       -- 11 Jun 1999
               ]"The number of RADIUS Access-Response packets
             received from unknown addresses."                       "The NAS-Identifier of the RADIUS authentication client.
              This is not necessarily the same as sysName in MIB II."                       w"The (conceptual) table listing the RADIUS authentication
             servers with which the client shares a secret."                       �"An entry (conceptual row) representing a RADIUS
             authentication server with which the client shares
             a secret."                       �"A number uniquely identifying each RADIUS
             Authentication server with which this client
             communicates."                       c"The IP address of the RADIUS authentication server
             referred to in this table entry."                       Q"The UDP port the client is using to send requests to
             this server."                       �"The time interval (in hundredths of a second) between
             the most recent Access-Reply/Access-Challenge and the
             Access-Request that matched it from this RADIUS
             authentication server."                       w"The number of RADIUS Access-Request packets sent
             to this server. This does not include retransmissions."                       o"The number of RADIUS Access-Request packets
             retransmitted to this RADIUS authentication server."                       h"The number of RADIUS Access-Accept packets
             (valid or invalid) received from this server."                       h"The number of RADIUS Access-Reject packets
             (valid or invalid) received from this server."                       k"The number of RADIUS Access-Challenge packets
             (valid or invalid) received from this server."                      ?"The number of malformed RADIUS Access-Response
             packets received from this server.
             Malformed packets include packets with
             an invalid length. Bad authenticators or
             Signature attributes or unknown types are not
             included as malformed access responses."                       �"The number of RADIUS Access-Response packets
             containing invalid authenticators or Signature
             attributes received from this server."                      o"The number of RADIUS Access-Request packets
             destined for this server that have not yet timed out
             or received a response. This variable is incremented
             when an Access-Request is sent and decremented due to
             receipt of an Acess-Accept, Access-Reject or
             Access-Challenge, a timeout or retransmission."                      u"The number of authentication timeouts to this server.
             After a timeout the client may retry to the same
             server, send to a different server, or
             give up. A retry to the same server is counted as a
             retransmit as well as a timeout. A send to a different
             server is counted as a Request as well as a timeout."                       }"The number of RADIUS packets of unknown type which
             were received from this server on the authentication port."                       �"The number of RADIUS packets of which were
             received from this server on the authentication port
             and dropped for some other reason."                               u"The compliance statement for authentication clients
            implementing the RADIUS Authentication Client MIB."                   e"The basic collection of objects providing management of
            RADIUS Authentication Clients."                    