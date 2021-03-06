                               2"The OID assigned to RADIUS MIB work by the IANA."                   �"The MIB module for entities implementing the client side of
              the Remote Access Dialin User Service (RADIUS) accounting
              protocol." �" Bernard Aboba
            Microsoft
            One Microsoft Way
            Redmond, WA  98052
            US

            Phone: +1 425 936 6605
            EMail: bernarda@microsoft.com" "9906110000Z" *"Initial version as published in RFC 2620"       -- 11 Jun 1999
               a"The number of RADIUS Accounting-Response packets
             received from unknown addresses."                       z"The NAS-Identifier of the RADIUS accounting client. This
             is not necessarily the same as sysName in MIB II."                       s"The (conceptual) table listing the RADIUS accounting
             servers with which the client shares a secret."                       x"An entry (conceptual row) representing a RADIUS
             accounting server with which the client shares a secret."                       ~"A number uniquely identifying each RADIUS
             Accounting server with which this client
             communicates."                       _"The IP address of the RADIUS accounting server
             referred to in this table entry."                       Q"The UDP port the client is using to send requests to
             this server."                       �"The time interval between the most recent
             Accounting-Response and the Accounting-Request that
             matched it from this RADIUS accounting server."                       l"The number of RADIUS Accounting-Request packets
             sent. This does not include retransmissions."                       "The number of RADIUS Accounting-Request packets
             retransmitted to this RADIUS accounting server.
             Retransmissions include retries where the
             Identifier and Acct-Delay have been updated, as
             well as those in which they remain the same."                       ^"The number of RADIUS packets received on the
             accounting port from this server."                      #"The number of malformed RADIUS Accounting-Response
              packets received from this server. Malformed packets
             include packets with an invalid length. Bad
             authenticators and unknown types are not included as
             malformed accounting responses."                       �"The number of RADIUS Accounting-Response
             packets which contained invalid authenticators
             received from this server."                      X"The number of RADIUS Accounting-Request packets
             sent to this server that have not yet timed out or
             received a response. This variable is incremented when an
             Accounting-Request is sent and decremented due to
             receipt of an Accounting-Response, a timeout or
             a retransmission."                      "The number of accounting timeouts to this server.
           After a timeout the client may retry to the same
           server, send to a different server, or give up.
           A retry to the same server is counted as a
           retransmit as well as a timeout. A send to a different
           server is counted as an Accounting-Request as well as
           a timeout."                       y"The number of RADIUS packets of unknown type which
             were received from this server on the accounting port."                       �"The number of RADIUS packets which were received from
             this server on the accounting port and dropped for some
             other reason."                               m"The compliance statement for accounting clients
            implementing the RADIUS Accounting Client MIB."                   a"The basic collection of objects providing management of
            RADIUS Accounting Clients."                    