    ""An integer which may be used as a new Index in a table.

       The special value of 0 indicates that no more new entries can be
       created in the relevant table.

       When a MIB is used for configuration, an object with this SYNTAX
       always contains a legal value (if non-zero) for an index that is
       not currently used in the relevant table. The Command Generator
       (Network Management Application) reads this variable and uses the
       (non-zero) value read when creating a new row with an SNMP SET.
       When the SET is performed, the Command Responder (agent) must
       determine whether the value is indeed still unused; Two Network
       Management Applications may attempt to create a row
       (configuration entry) simultaneously and use the same value. If
       it is currently unused, the SET succeeds and the Command
       Responder (agent) changes the value of this object, according to
       an implementation-specific algorithm.  If the value is in use,
       however, the SET fails.  The Network Management Application must
       then re-read this variable to obtain a new usable value.

       An OBJECT-TYPE definition using this SYNTAX MUST specify the
       relevant table for which the object is providing this
       functionality."               �"IfDirection specifies a direction of data travel on an
       interface. 'inbound' traffic is operated on during reception from
       the interface, while 'outbound' traffic is operated on prior to
       transmission on the interface."               0"An integer which may be used as a table index."                                                                                                            "This MIB defines the objects necessary to manage a device that
       uses the Differentiated Services Architecture described in RFC
       2475. The Conceptual Model of a Differentiated Services Router
       provides supporting information on how such a router is modeled."�"       Fred Baker
               Cisco Systems
               1121 Via Del Rey
               Santa Barbara, CA 93117, USA
               E-mail: fred@cisco.com

               Kwok Ho Chan
               Nortel Networks
               600 Technology Park Drive
               Billerica, MA 01821, USA
               E-mail: khchan@nortelnetworks.com

               Andrew Smith
               Harbour Networks
               Jiuling Building
               21 North Xisanhuan Ave.
               Beijing, 100089, PRC
               E-mail: ah_smith@acm.org

               Differentiated Services Working Group:
               diffserv@ietf.org" "200202070000Z" )"Initial version, published as RFC 3289."                       �"The data path table contains RowPointers indicating the start of
       the functional data path for each interface and traffic direction
       in this device. These may merge, or be separated into parallel
       data paths."                      �"An entry in the data path table indicates the start of a single
       Differentiated Services Functional Data Path in this device.

       These are associated with individual interfaces, logical or
       physical, and therefore are instantiated by ifIndex. Therefore,
       the interface index must have been assigned, according to the
       procedures applicable to that, before it can be meaningfully
       used. Generally, this means that the interface must exist.

       When diffServDataPathStorage is of type nonVolatile, however,
       this may reflect the configuration for an interface whose ifIndex
       has been assigned but for which the supporting implementation is
       not currently present."                       i"IfDirection specifies whether the reception or transmission path
       for this interface is in view."                      P"This selects the first Differentiated Services Functional Data
       Path Element to handle traffic for this data path. This
       RowPointer should point to an instance of one of:
         diffServClfrEntry
         diffServMeterEntry
         diffServActionEntry
         diffServAlgDropEntry
         diffServQEntry

       A value of zeroDotZero in this attribute indicates that no
       Differentiated Services treatment is performed on traffic of this
       data path. A pointer with the value zeroDotZero normally
       terminates a functional data path.

       Setting this to point to a target that does not exist results in
       an inconsistentValue error.  If the row pointed to is removed or
       becomes inactive by other means, the treatment is as if this
       attribute contains a value of zeroDotZero."                       �"The storage type for this conceptual row.  Conceptual rows
       having the value 'permanent' need not allow write-access to any
       columnar objects in the row."                       j"The status of this conceptual row. All writable objects in this
       row may be modified at any time."                           i"This object contains an unused value for diffServClfrId, or a
       zero to indicate that none exist."                      "This table enumerates all the diffserv classifier functional
       data path elements of this device.  The actual classification
       definitions are defined in diffServClfrElementTable entries
       belonging to each classifier.

       An entry in this table, pointed to by a RowPointer specifying an
       instance of diffServClfrStatus, is frequently used as the name
       for a set of classifier elements, which all use the index
       diffServClfrId. Per the semantics of the classifier element
       table, these entries constitute one or more unordered sets of
       tests which may be simultaneously applied to a message to
       classify it.

       The primary function of this table is to ensure that the value of
       diffServClfrId is unique before attempting to use it in creating
       a diffServClfrElementEntry. Therefore, the diffServClfrEntry must
       be created on the same SET as the diffServClfrElementEntry, or
       before the diffServClfrElementEntry is created."                       �"An entry in the classifier table describes a single classifier.
       All classifier elements belonging to the same classifier use the
       classifier's diffServClfrId as part of their index."                       �"An index that enumerates the classifier entries.  Managers
       should obtain new values for row creation in this table by
       reading diffServClfrNextFree."                       �"The storage type for this conceptual row.  Conceptual rows
       having the value 'permanent' need not allow write-access to any
       columnar objects in the row."                      ("The status of this conceptual row. All writable objects in this
       row may be modified at any time. Setting this variable to
       'destroy' when the MIB contains one or more RowPointers pointing
       to it results in destruction being delayed until the row is no
       longer used."                       p"This object contains an unused value for diffServClfrElementId,
       or a zero to indicate that none exist."                      �"The classifier element table enumerates the relationship between
       classification patterns and subsequent downstream Differentiated
       Services Functional Data Path elements.
       diffServClfrElementSpecific points to a filter that specifies the
       classification parameters. A classifier may use filter tables of
       different types together.

       One example of a filter table defined in this MIB is
       diffServMultiFieldClfrTable, for IP Multi-Field Classifiers
       (MFCs). Such an entry might identify anything from a single
       micro-flow (an identifiable sub-session packet stream directed
       from one sending transport to the receiving transport or
       transports), or aggregates of those such as the traffic from a
       host, traffic for an application, or traffic between two hosts
       using an application and a given DSCP. The standard Behavior
       Aggregate used in the Differentiated Services Architecture is
       encoded as a degenerate case of such an aggregate - the traffic
       using a particular DSCP value.

       Filter tables for other filter types may be defined elsewhere."                       `"An entry in the classifier element table describes a single
       element of the classifier."                       �"An index that enumerates the Classifier Element entries.
       Managers obtain new values for row creation in this table by
       reading diffServClfrElementNextFree."                      �"The relative order in which classifier elements are applied:
       higher numbers represent classifier element with higher
       precedence.  Classifier elements with the same order must be
       unambiguous i.e. they must define non-overlapping patterns, and
       are considered to be applied simultaneously to the traffic
       stream. Classifier elements with different order may overlap in
       their filters:  the classifier element with the highest order
       that matches is taken.

       On a given interface, there must be a complete classifier in
       place at all times in the ingress direction.  This means one or
       more filters must match any possible pattern. There is no such
       requirement in the egress direction."                      "This attribute provides one branch of the fan-out functionality
       of a classifier described in the Informal Differentiated Services
       Model section 4.1.

       This selects the next Differentiated Services Functional Data
       Path Element to handle traffic for this data path. This
       RowPointer should point to an instance of one of:
         diffServClfrEntry
         diffServMeterEntry
         diffServActionEntry
         diffServAlgDropEntry
         diffServQEntry

       A value of zeroDotZero in this attribute indicates no further
       Differentiated Services treatment is performed on traffic of this
       data path. The use of zeroDotZero is the normal usage for the
       last functional data path element of the current data path.

       Setting this to point to a target that does not exist results in
       an inconsistentValue error.  If the row pointed to is removed or
       becomes inactive by other means, the treatment is as if this
       attribute contains a value of zeroDotZero."                      8"A pointer to a valid entry in another table, filter table, that
       describes the applicable classification parameters, e.g. an entry
       in diffServMultiFieldClfrTable.

       The value zeroDotZero is interpreted to match anything not
       matched by another classifier element - only one such entry may
       exist for each classifier.

       Setting this to point to a target that does not exist results in
       an inconsistentValue error.  If the row pointed to is removed or
       becomes inactive by other means, the element is ignored."                       �"The storage type for this conceptual row.  Conceptual rows
       having the value 'permanent' need not allow write-access to any
       columnar objects in the row."                      ("The status of this conceptual row. All writable objects in this
       row may be modified at any time. Setting this variable to
       'destroy' when the MIB contains one or more RowPointers pointing
       to it results in destruction being delayed until the row is no
       longer used."                       s"This object contains an unused value for
       diffServMultiFieldClfrId, or a zero to indicate that none exist."                       k"A table of IP Multi-field Classifier filter entries that a
       system may use to identify IP traffic."                       ?"An IP Multi-field Classifier entry describes a single filter."                       �"An index that enumerates the MultiField Classifier filter
       entries.  Managers obtain new values for row creation in this
       table by reading diffServMultiFieldClfrNextFree."                      ."The type of IP address used by this classifier entry.  While
       other types of addresses are defined in the InetAddressType
       textual convention, and DNS names, a classifier can only look at
       packets on the wire. Therefore, this object is limited to IPv4
       and IPv6 addresses."                       �"The IP address to match against the packet's destination IP
       address. This may not be a DNS name, but may be an IPv4 or IPv6
       prefix.  diffServMultiFieldClfrDstPrefixLength indicates the
       number of bits that are relevant."                      p"The length of the CIDR Prefix carried in
       diffServMultiFieldClfrDstAddr. In IPv4 addresses, a length of 0
       indicates a match of any address; a length of 32 indicates a
       match of a single host address, and a length between 0 and 32
       indicates the use of a CIDR Prefix. IPv6 is similar, except that
       prefix lengths range from 0..128."                       �"The IP address to match against the packet's source IP address.
       This may not be a DNS name, but may be an IPv4 or IPv6 prefix.
       diffServMultiFieldClfrSrcPrefixLength indicates the number of
       bits that are relevant."                      p"The length of the CIDR Prefix carried in
       diffServMultiFieldClfrSrcAddr. In IPv4 addresses, a length of 0
       indicates a match of any address; a length of 32 indicates a
       match of a single host address, and a length between 0 and 32
       indicates the use of a CIDR Prefix. IPv6 is similar, except that
       prefix lengths range from 0..128."                       �"The value that the DSCP in the packet must have to match this
       entry. A value of -1 indicates that a specific DSCP value has not
       been defined and thus all DSCP values are considered a match."                       ("The flow identifier in an IPv6 header."                      "The IP protocol to match against the IPv4 protocol number or the
       IPv6 Next- Header number in the packet. A value of 255 means
       match all.  Note the protocol number of 255 is reserved by IANA,
       and Next-Header number of 0 is used in IPv6."                       �"The minimum value that the layer-4 destination port number in
       the packet must have in order to match this classifier entry."                      "The maximum value that the layer-4 destination port number in
       the packet must have in order to match this classifier entry.
       This value must be equal to or greater than the value specified
       for this entry in diffServMultiFieldClfrDstL4PortMin."                       �"The minimum value that the layer-4 source port number in the
       packet must have in order to match this classifier entry."                      "The maximum value that the layer-4 source port number in the
       packet must have in order to match this classifier entry. This
       value must be equal to or greater than the value specified for
       this entry in diffServMultiFieldClfrSrcL4PortMin."                       �"The storage type for this conceptual row.  Conceptual rows
       having the value 'permanent' need not allow write-access to any
       columnar objects in the row."                      ("The status of this conceptual row. All writable objects in this
       row may be modified at any time. Setting this variable to
       'destroy' when the MIB contains one or more RowPointers pointing
       to it results in destruction being delayed until the row is no
       longer used."                           j"This object contains an unused value for diffServMeterId, or a
       zero to indicate that none exist."                      �"This table enumerates specific meters that a system may use to
       police a stream of traffic. The traffic stream to be metered is
       determined by the Differentiated Services Functional Data Path
       Element(s) upstream of the meter i.e. by the object(s) that point
       to each entry in this table.  This may include all traffic on an
       interface.

       Specific meter details are to be found in table entry referenced
       by diffServMeterSpecific."                       V"An entry in the meter table describes a single conformance level
       of a meter."                       �"An index that enumerates the Meter entries.  Managers obtain new
       values for row creation in this table by reading
       diffServMeterNextFree."                      �"If the traffic does conform, this selects the next
       Differentiated Services Functional Data Path element to handle
       traffic for this data path. This RowPointer should point to an
       instance of one of:
         diffServClfrEntry
         diffServMeterEntry
         diffServActionEntry
         diffServAlgDropEntry
         diffServQEntry

       A value of zeroDotZero in this attribute indicates that no
       further Differentiated Services treatment is performed on traffic
       of this data path. The use of zeroDotZero is the normal usage for
       the last functional data path element of the current data path.

       Setting this to point to a target that does not exist results in
       an inconsistentValue error.  If the row pointed to is removed or
       becomes inactive by other means, the treatment is as if this
       attribute contains a value of zeroDotZero."                      �"If the traffic does not conform, this selects the next
       Differentiated Services Functional Data Path element to handle
       traffic for this data path. This RowPointer should point to an
       instance of one of:
         diffServClfrEntry
         diffServMeterEntry
         diffServActionEntry
         diffServAlgDropEntry
         diffServQEntry

       A value of zeroDotZero in this attribute indicates no further
       Differentiated Services treatment is performed on traffic of this
       data path. The use of zeroDotZero is the normal usage for the
       last functional data path element of the current data path.

       Setting this to point to a target that does not exist results in
       an inconsistentValue error.  If the row pointed to is removed or
       becomes inactive by other means, the treatment is as if this
       attribute contains a value of zeroDotZero."                      B"This indicates the behavior of the meter by pointing to an entry
       containing detailed parameters. Note that entries in that
       specific table must be managed explicitly.

       For example, diffServMeterSpecific may point to an entry in
       diffServTBParamTable, which contains an instance of a single set
       of Token Bucket parameters.

       Setting this to point to a target that does not exist results in
       an inconsistentValue error.  If the row pointed to is removed or
       becomes inactive by other means, the meter always succeeds."                       �"The storage type for this conceptual row.  Conceptual rows
       having the value 'permanent' need not allow write-access to any
       columnar objects in the row."                      ("The status of this conceptual row. All writable objects in this
       row may be modified at any time. Setting this variable to
       'destroy' when the MIB contains one or more RowPointers pointing
       to it results in destruction being delayed until the row is no
       longer used."                           l"This object contains an unused value for diffServTBParamId, or a
       zero to indicate that none exist."                      ."This table enumerates a single set of token bucket meter
       parameters that a system may use to police a stream of traffic.
       Such meters are modeled here as having a single rate and a single
       burst size. Multiple entries are used when multiple rates/burst
       sizes are needed."                       J"An entry that describes a single set of token bucket
       parameters."                       �"An index that enumerates the Token Bucket Parameter entries.
       Managers obtain new values for row creation in this table by
       reading diffServTBParamNextFree."                      "The Metering algorithm associated with the Token Bucket
       parameters.  zeroDotZero indicates this is unknown.

       Standard values for generic algorithms:
       diffServTBParamSimpleTokenBucket, diffServTBParamAvgRate,
       diffServTBParamSrTCMBlind, diffServTBParamSrTCMAware,
       diffServTBParamTrTCMBlind, diffServTBParamTrTCMAware, and
       diffServTBParamTswTCM are specified in this MIB as OBJECT-
       IDENTITYs; additional values may be further specified in other
       MIBs."                       �"The token-bucket rate, in kilobits per second (kbps). This
       attribute is used for:
       1. CIR in RFC 2697 for srTCM
       2. CIR and PIR in RFC 2698 for trTCM
       3. CTR and PTR in RFC 2859 for TSWTCM
       4. AverageRate in RFC 3290."                       �"The maximum number of bytes in a single transmission burst. This
       attribute is used for:
       1. CBS and EBS in RFC 2697 for srTCM
       2. CBS and PBS in RFC 2698 for trTCM
       3. Burst Size in RFC 3290."                      �"The time interval used with the token bucket.  For:
       1. Average Rate Meter, the Informal Differentiated Services Model
          section 5.2.1, - Delta.
       2. Simple Token Bucket Meter, the Informal Differentiated
          Services Model section 5.1, - time interval t.
       3. RFC 2859 TSWTCM, - AVG_INTERVAL.
       4. RFC 2697 srTCM, RFC 2698 trTCM, - token bucket update time
          interval."                       �"The storage type for this conceptual row.  Conceptual rows
       having the value 'permanent' need not allow write-access to any
       columnar objects in the row."                      ("The status of this conceptual row. All writable objects in this
       row may be modified at any time. Setting this variable to
       'destroy' when the MIB contains one or more RowPointers pointing
       to it results in destruction being delayed until the row is no
       longer used."                           k"This object contains an unused value for diffServActionId, or a
       zero to indicate that none exist."                      �"The Action Table enumerates actions that can be performed to a
       stream of traffic. Multiple actions can be concatenated. For
       example, traffic exiting from a meter may be counted, marked, and
       potentially dropped before entering a queue.

       Specific actions are indicated by diffServActionSpecific which
       points to an entry of a specific action type parameterizing the
       action in detail."                       l"Each entry in the action table allows description of one
       specific action to be applied to traffic."                       �"An index that enumerates the Action entries.  Managers obtain
       new values for row creation in this table by reading
       diffServActionNextFree."                      ,"The interface index (value of ifIndex) that this action occurs
       on. This may be derived from the diffServDataPathStartEntry's
       index by extension through the various RowPointers. However, as
       this may be difficult for a network management station, it is
       placed here as well.  If this is indeterminate, the value is
       zero.

       This is of especial relevance when reporting the counters which
       may apply to traffic crossing an interface:
          diffServCountActOctets,
          diffServCountActPkts,
          diffServAlgDropOctets,
          diffServAlgDropPkts,
          diffServAlgRandomDropOctets, and
          diffServAlgRandomDropPkts.

       It is also especially relevant to the queue and scheduler which
       may be subsequently applied."                      p"This selects the next Differentiated Services Functional Data
       Path Element to handle traffic for this data path. This
       RowPointer should point to an instance of one of:
         diffServClfrEntry
         diffServMeterEntry
         diffServActionEntry
         diffServAlgDropEntry
         diffServQEntry

       A value of zeroDotZero in this attribute indicates no further
       Differentiated Services treatment is performed on traffic of this
       data path. The use of zeroDotZero is the normal usage for the
       last functional data path element of the current data path.

       Setting this to point to a target that does not exist results in
       an inconsistentValue error.  If the row pointed to is removed or
       becomes inactive by other means, the treatment is as if this
       attribute contains a value of zeroDotZero."                      �"A pointer to an object instance providing additional information
       for the type of action indicated by this action table entry.

       For the standard actions defined by this MIB module, this should
       point to either a diffServDscpMarkActEntry or a
       diffServCountActEntry. For other actions, it may point to an
       object instance defined in some other MIB.

       Setting this to point to a target that does not exist results in
       an inconsistentValue error.  If the row pointed to is removed or
       becomes inactive by other means, the Meter should be treated as
       if it were not present.  This may lead to incorrect policy
       behavior."                       �"The storage type for this conceptual row.  Conceptual rows
       having the value 'permanent' need not allow write-access to any
       columnar objects in the row."                      ("The status of this conceptual row. All writable objects in this
       row may be modified at any time. Setting this variable to
       'destroy' when the MIB contains one or more RowPointers pointing
       to it results in destruction being delayed until the row is no
       longer used."                       �"This table enumerates specific DSCPs used for marking or
       remarking the DSCP field of IP packets. The entries of this table
       may be referenced by a diffServActionSpecific attribute."                       _"An entry in the DSCP mark action table that describes a single
       DSCP used for marking."                      �"The DSCP that this Action will store into the DSCP field of the
       subject. It is quite possible that the only packets subject to
       this Action are already marked with this DSCP. Note also that
       Differentiated Services processing may result in packet being
       marked on both ingress to a network and on egress from it, and
       that ingress and egress can occur in the same router."                       m"This object contains an unused value for
       diffServCountActId, or a zero to indicate that none exist."                       ]"This table contains counters for all the traffic passing through
       an action element."                       X"An entry in the count action table describes a single set of
       traffic counters."                       �"An index that enumerates the Count Action entries.  Managers
       obtain new values for row creation in this table by reading
       diffServCountActNextFree."                      %"The number of octets at the Action data path element.

       Discontinuities in the value of this counter can occur at re-
       initialization of the management system and at other times as
       indicated by the value of ifCounterDiscontinuityTime on the
       relevant interface."                      &"The number of packets at the Action data path element.

       Discontinuities in the value of this counter can occur at re-
       initialization of the management system and at other times as
       indicated by the value of ifCounterDiscontinuityTime on the
       relevant interface."                       �"The storage type for this conceptual row.  Conceptual rows
       having the value 'permanent' need not allow write-access to any
       columnar objects in the row."                      ("The status of this conceptual row. All writable objects in this
       row may be modified at any time. Setting this variable to
       'destroy' when the MIB contains one or more RowPointers pointing
       to it results in destruction being delayed until the row is no
       longer used."                           l"This object contains an unused value for diffServAlgDropId, or a
       zero to indicate that none exist."                       {"The algorithmic drop table contains entries describing an
       element that drops packets according to some algorithm."                      "An entry describes a process that drops packets according to
       some algorithm. Further details of the algorithm type are to be
       found in diffServAlgDropType and with more detail parameter entry
       pointed to by diffServAlgDropSpecific when necessary."                       �"An index that enumerates the Algorithmic Dropper entries.
       Managers obtain new values for row creation in this table by
       reading diffServAlgDropNextFree."                      �"The type of algorithm used by this dropper. The value other(1)
       requires further specification in some other MIB module.

       In the tailDrop(2) algorithm, diffServAlgDropQThreshold
       represents the maximum depth of the queue, pointed to by
       diffServAlgDropQMeasure, beyond which all newly arriving packets
       will be dropped.

       In the headDrop(3) algorithm, if a packet arrives when the
       current depth of the queue, pointed to by
       diffServAlgDropQMeasure, is at diffServAlgDropQThreshold, packets
       currently at the head of the queue are dropped to make room for
       the new packet to be enqueued at the tail of the queue.

       In the randomDrop(4) algorithm, on packet arrival, an Active
       Queue Management algorithm is executed which may randomly drop a
       packet. This algorithm may be proprietary, and it may drop either
       the arriving packet or another packet in the queue.
       diffServAlgDropSpecific points to a diffServRandomDropEntry that
       describes the algorithm. For this algorithm,
       diffServAlgDropQThreshold is understood to be the absolute
       maximum size of the queue and additional parameters are described
       in diffServRandomDropTable.

       The alwaysDrop(5) algorithm is as its name specifies; always
       drop. In this case, the other configuration values in this Entry
       are not meaningful; There is no useful 'next' processing step,
       there is no queue, and parameters describing the queue are not
       useful. Therefore, diffServAlgDropNext, diffServAlgDropMeasure,
       and diffServAlgDropSpecific are all zeroDotZero."                      �"This selects the next Differentiated Services Functional Data
       Path Element to handle traffic for this data path. This
       RowPointer should point to an instance of one of:
         diffServClfrEntry
         diffServMeterEntry
         diffServActionEntry
         diffServQEntry

       A value of zeroDotZero in this attribute indicates no further
       Differentiated Services treatment is performed on traffic of this
       data path. The use of zeroDotZero is the normal usage for the
       last functional data path element of the current data path.

       When diffServAlgDropType is alwaysDrop(5), this object is
       ignored.

       Setting this to point to a target that does not exist results in
       an inconsistentValue error.  If the row pointed to is removed or
       becomes inactive by other means, the treatment is as if this
       attribute contains a value of zeroDotZero."                      "Points to an entry in the diffServQTable to indicate the queue
       that a drop algorithm is to monitor when deciding whether to drop
       a packet. If the row pointed to does not exist, the algorithmic
       dropper element is considered inactive.
       Setting this to point to a target that does not exist results in
       an inconsistentValue error.  If the row pointed to is removed or
       becomes inactive by other means, the treatment is as if this
       attribute contains a value of zeroDotZero."                      �"A threshold on the depth in bytes of the queue being measured at
       which a trigger is generated to the dropping algorithm, unless
       diffServAlgDropType is alwaysDrop(5) where this object is
       ignored.

       For the tailDrop(2) or headDrop(3) algorithms, this represents
       the depth of the queue, pointed to by diffServAlgDropQMeasure, at
       which the drop action will take place. Other algorithms will need
       to define their own semantics for this threshold."                      �"Points to a table entry that provides further detail regarding a
       drop algorithm.

       Entries with diffServAlgDropType equal to other(1) may have this
       point to a table defined in another MIB module.

       Entries with diffServAlgDropType equal to randomDrop(4) must have
       this point to an entry in diffServRandomDropTable.

       For all other algorithms specified in this MIB, this should take
       the value zeroDotZero.

       The diffServAlgDropType is authoritative for the type of the drop
       algorithm and the specific parameters for the drop algorithm
       needs to be evaluated based on the diffServAlgDropType.

       Setting this to point to a target that does not exist results in
       an inconsistentValue error.  If the row pointed to is removed or
       becomes inactive by other means, the treatment is as if this
       attribute contains a value of zeroDotZero."                      K"The number of octets that have been deterministically dropped by
       this drop process.

       Discontinuities in the value of this counter can occur at re-
       initialization of the management system and at other times as
       indicated by the value of ifCounterDiscontinuityTime on the
       relevant interface."                      L"The number of packets that have been deterministically dropped
       by this drop process.

       Discontinuities in the value of this counter can occur at re-
       initialization of the management system and at other times as
       indicated by the value of ifCounterDiscontinuityTime on the
       relevant interface."                      �"The number of octets that have been randomly dropped by this
       drop process.  This counter applies, therefore, only to random
       droppers.

       Discontinuities in the value of this counter can occur at re-
       initialization of the management system and at other times as
       indicated by the value of ifCounterDiscontinuityTime on the
       relevant interface."                      �"The number of packets that have been randomly dropped by this
       drop process. This counter applies, therefore, only to random
       droppers.

       Discontinuities in the value of this counter can occur at re-
       initialization of the management system and at other times as
       indicated by the value of ifCounterDiscontinuityTime on the
       relevant interface."                       �"The storage type for this conceptual row.  Conceptual rows
       having the value 'permanent' need not allow write-access to any
       columnar objects in the row."                      ("The status of this conceptual row. All writable objects in this
       row may be modified at any time. Setting this variable to
       'destroy' when the MIB contains one or more RowPointers pointing
       to it results in destruction being delayed until the row is no
       longer used."                       o"This object contains an unused value for diffServRandomDropId,
       or a zero to indicate that none exist."                       �"The random drop table contains entries describing a process that
       drops packets randomly. Entries in this table are pointed to by
       diffServAlgDropSpecific."                       Z"An entry describes a process that drops packets according to a
       random algorithm."                       �"An index that enumerates the Random Drop entries.  Managers
       obtain new values for row creation in this table by reading
       diffServRandomDropNextFree."                       �"The average queue depth in bytes, beyond which traffic has a
       non-zero probability of being dropped. Changes in this variable
       may or may not be reflected in the reported value of
       diffServRandomDropMinThreshPkts."                       �"The average queue depth in packets, beyond which traffic has a
       non-zero probability of being dropped. Changes in this variable
       may or may not be reflected in the reported value of
       diffServRandomDropMinThreshBytes."                      ~"The average queue depth beyond which traffic has a probability
       indicated by diffServRandomDropProbMax of being dropped or
       marked. Note that this differs from the physical queue limit,
       which is stored in diffServAlgDropQThreshold. Changes in this
       variable may or may not be reflected in the reported value of
       diffServRandomDropMaxThreshPkts."                      "The average queue depth beyond which traffic has a probability
       indicated by diffServRandomDropProbMax of being dropped or
       marked. Note that this differs from the physical queue limit,
       which is stored in diffServAlgDropQThreshold. Changes in this
       variable may or may not be reflected in the reported value of
       diffServRandomDropMaxThreshBytes."                      ["The worst case random drop probability, expressed in drops per
       thousand packets.

       For example, if in the worst case every arriving packet may be
       dropped (100%) for a period, this has the value 1000.
       Alternatively, if in the worst case only one percent (1%) of
       traffic may be dropped, it has the value 10."                      �"The weighting of past history in affecting the Exponentially
       Weighted Moving Average function that calculates the current
       average queue depth.  The equation uses
       diffServRandomDropWeight/65536 as the coefficient for the new
       sample in the equation, and (65536 -
       diffServRandomDropWeight)/65536 as the coefficient of the old
       value.

       Implementations may limit the values of diffServRandomDropWeight
       to a subset of the possible range of values, such as powers of
       two. Doing this would facilitate implementation of the
       Exponentially Weighted Moving Average using shift instructions or
       registers."                       �"The number of times per second the queue is sampled for queue
       average calculation.  A value of zero is used to mean that the
       queue is sampled approximately each time a packet is enqueued (or
       dequeued)."                       �"The storage type for this conceptual row.  Conceptual rows
       having the value 'permanent' need not allow write-access to any
       columnar objects in the row."                      ("The status of this conceptual row. All writable objects in this
       row may be modified at any time. Setting this variable to
       'destroy' when the MIB contains one or more RowPointers pointing
       to it results in destruction being delayed until the row is no
       longer used."                           f"This object contains an unused value for diffServQId, or a zero
       to indicate that none exist."                      5"The Queue Table enumerates the individual queues.  Note that the
       MIB models queuing systems as composed of individual queues, one
       per class of traffic, even though they may in fact be structured
       as classes of traffic scheduled using a common calendar queue, or
       in other ways."                       S"An entry in the Queue Table describes a single queue or class of
       traffic."                       �"An index that enumerates the Queue entries.  Managers obtain new
       values for row creation in this table by reading
       diffServQNextFree."                      f"This selects the next Differentiated Services Scheduler.  The
       RowPointer must point to a diffServSchedulerEntry.

       A value of zeroDotZero in this attribute indicates an incomplete
       diffServQEntry instance. In such a case, the entry has no
       operational effect, since it has no parameters to give it
       meaning.

       Setting this to point to a target that does not exist results in
       an inconsistentValue error.  If the row pointed to is removed or
       becomes inactive by other means, the treatment is as if this
       attribute contains a value of zeroDotZero."                      	"This RowPointer indicates the diffServMinRateEntry that the
       scheduler, pointed to by diffServQNext, should use to service
       this queue.

       If the row pointed to is zeroDotZero, the minimum rate and
       priority is unspecified.

       Setting this to point to a target that does not exist results in
       an inconsistentValue error.  If the row pointed to is removed or
       becomes inactive by other means, the treatment is as if this
       attribute contains a value of zeroDotZero."                      "This RowPointer indicates the diffServMaxRateEntry that the
       scheduler, pointed to by diffServQNext, should use to service
       this queue.

       If the row pointed to is zeroDotZero, the maximum rate is the
       line speed of the interface.
       Setting this to point to a target that does not exist results in
       an inconsistentValue error.  If the row pointed to is removed or
       becomes inactive by other means, the treatment is as if this
       attribute contains a value of zeroDotZero."                       �"The storage type for this conceptual row.  Conceptual rows
       having the value 'permanent' need not allow write-access to any
       columnar objects in the row."                      ("The status of this conceptual row. All writable objects in this
       row may be modified at any time. Setting this variable to
       'destroy' when the MIB contains one or more RowPointers pointing
       to it results in destruction being delayed until the row is no
       longer used."                           n"This object contains an unused value for diffServSchedulerId, or
       a zero to indicate that none exist."                       �"The Scheduler Table enumerates packet schedulers. Multiple
       scheduling algorithms can be used on a given data path, with each
       algorithm described by one diffServSchedulerEntry."                       a"An entry in the Scheduler Table describing a single instance of
       a scheduling algorithm."                       �"An index that enumerates the Scheduler entries.  Managers obtain
       new values for row creation in this table by reading
       diffServSchedulerNextFree."                      �"This selects the next Differentiated Services Functional Data
       Path Element to handle traffic for this data path. This normally
       is null (zeroDotZero), or points to a diffServSchedulerEntry or a
       diffServQEntry.

       However, this RowPointer may also point to an instance of:
         diffServClfrEntry,
         diffServMeterEntry,
         diffServActionEntry,
         diffServAlgDropEntry.

       It would point another diffServSchedulerEntry when implementing
       multiple scheduler methods for the same data path, such as having
       one set of queues scheduled by WRR and that group participating
       in a priority scheduling system in which other queues compete
       with it in that way.  It might also point to a second scheduler
       in a hierarchical scheduling system.

       If the row pointed to is zeroDotZero, no further Differentiated
       Services treatment is performed on traffic of this data path.

       Setting this to point to a target that does not exist results in
       an inconsistentValue error.  If the row pointed to is removed or
       becomes inactive by other means, the treatment is as if this
       attribute contains a value of zeroDotZero."                      F"The scheduling algorithm used by this Scheduler. zeroDotZero
       indicates that this is unknown.  Standard values for generic
       algorithms: diffServSchedulerPriority, diffServSchedulerWRR, and
       diffServSchedulerWFQ are specified in this MIB; additional values
       may be further specified in other MIBs."                      e"This RowPointer indicates the entry in diffServMinRateTable
       which indicates the priority or minimum output rate from this
       scheduler. This attribute is used only when there is more than
       one level of scheduler.

       When it has the value zeroDotZero, it indicates that no minimum
       rate or priority is imposed.

       Setting this to point to a target that does not exist results in
       an inconsistentValue error.  If the row pointed to is removed or
       becomes inactive by other means, the treatment is as if this
       attribute contains a value of zeroDotZero."                      �"This RowPointer indicates the entry in diffServMaxRateTable
       which indicates the maximum output rate from this scheduler.
       When more than one maximum rate applies (eg, when a multi-rate
       shaper is in view), it points to the first of those rate entries.
       This attribute is used only when there is more than one level of
       scheduler.

       When it has the value zeroDotZero, it indicates that no maximum
       rate is imposed.

       Setting this to point to a target that does not exist results in
       an inconsistentValue error.  If the row pointed to is removed or
       becomes inactive by other means, the treatment is as if this
       attribute contains a value of zeroDotZero."                       �"The storage type for this conceptual row.  Conceptual rows
       having the value 'permanent' need not allow write-access to any
       columnar objects in the row."                      ("The status of this conceptual row. All writable objects in this
       row may be modified at any time. Setting this variable to
       'destroy' when the MIB contains one or more RowPointers pointing
       to it results in destruction being delayed until the row is no
       longer used."                       l"This object contains an unused value for diffServMinRateId, or a
       zero to indicate that none exist."                       �"The Minimum Rate Parameters Table enumerates individual sets of
       scheduling parameter that can be used/reused by Queues and
       Schedulers."                       �"An entry in the Minimum Rate Parameters Table describes a single
       set of scheduling parameters for use by one or more queues or
       schedulers."                       �"An index that enumerates the Scheduler Parameter entries.
       Managers obtain new values for row creation in this table by
       reading diffServMinRateNextFree."                       �"The priority of this input to the associated scheduler, relative
       to the scheduler's other inputs. A queue or scheduler with a
       larger numeric value will be served before another with a smaller
       numeric value."                      "The minimum absolute rate, in kilobits/sec, that a downstream
       scheduler element should allocate to this queue. If the value is
       zero, then there is effectively no minimum rate guarantee. If the
       value is non-zero, the scheduler will assure the servicing of
       this queue to at least this rate.

       Note that this attribute value and that of
       diffServMinRateRelative are coupled: changes to one will affect
       the value of the other. They are linked by the following
       equation, in that setting one will change the other:

         diffServMinRateRelative =
                 (diffServMinRateAbsolute*1000000)/ifSpeed

       or, if appropriate:

         diffServMinRateRelative = diffServMinRateAbsolute/ifHighSpeed" /"ifSpeed, ifHighSpeed, Interface MIB, RFC 2863"                    `"The minimum rate that a downstream scheduler element should
       allocate to this queue, relative to the maximum rate of the
       interface as reported by ifSpeed or ifHighSpeed, in units of
       1/1000 of 1. If the value is zero, then there is effectively no
       minimum rate guarantee. If the value is non-zero, the scheduler
       will assure the servicing of this queue to at least this rate.

       Note that this attribute value and that of
       diffServMinRateAbsolute are coupled: changes to one will affect
       the value of the other. They are linked by the following
       equation, in that setting one will change the other:
         diffServMinRateRelative =
                 (diffServMinRateAbsolute*1000000)/ifSpeed

       or, if appropriate:

         diffServMinRateRelative = diffServMinRateAbsolute/ifHighSpeed" /"ifSpeed, ifHighSpeed, Interface MIB, RFC 2863"                     �"The storage type for this conceptual row.  Conceptual rows
       having the value 'permanent' need not allow write-access to any
       columnar objects in the row."                      ("The status of this conceptual row. All writable objects in this
       row may be modified at any time. Setting this variable to
       'destroy' when the MIB contains one or more RowPointers pointing
       to it results in destruction being delayed until the row is no
       longer used."                       l"This object contains an unused value for diffServMaxRateId, or a
       zero to indicate that none exist."                       �"The Maximum Rate Parameter Table enumerates individual sets of
       scheduling parameter that can be used/reused by Queues and
       Schedulers."                       �"An entry in the Maximum Rate Parameter Table describes a single
       set of scheduling parameters for use by one or more queues or
       schedulers."                       �"An index that enumerates the Maximum Rate Parameter entries.
       Managers obtain new values for row creation in this table by
       reading diffServMaxRateNextFree."                      p"An index that indicates which level of a multi-rate shaper is
       being given its parameters. A multi-rate shaper has some number
       of rate levels. Frame Relay's dual rate specification refers to a
       'committed' and an 'excess' rate; ATM's dual rate specification
       refers to a 'mean' and a 'peak' rate. This table is generalized
       to support an arbitrary number of rates. The committed or mean
       rate is level 1, the peak rate (if any) is the highest level rate
       configured, and if there are other rates they are distributed in
       monotonically increasing order between them."                      k"The maximum rate in kilobits/sec that a downstream scheduler
       element should allocate to this queue. If the value is zero, then
       there is effectively no maximum rate limit and that the scheduler
       should attempt to be work conserving for this queue. If the value
       is non-zero, the scheduler will limit the servicing of this queue
       to, at most, this rate in a non-work-conserving manner.

       Note that this attribute value and that of
       diffServMaxRateRelative are coupled: changes to one will affect
       the value of the other. They are linked by the following
       equation, in that setting one will change the other:

         diffServMaxRateRelative =
                 (diffServMaxRateAbsolute*1000000)/ifSpeed

       or, if appropriate:

         diffServMaxRateRelative = diffServMaxRateAbsolute/ifHighSpeed" /"ifSpeed, ifHighSpeed, Interface MIB, RFC 2863"                    �"The maximum rate that a downstream scheduler element should
       allocate to this queue, relative to the maximum rate of the
       interface as reported by ifSpeed or ifHighSpeed, in units of
       1/1000 of 1. If the value is zero, then there is effectively no
       maximum rate limit and the scheduler should attempt to be work
       conserving for this queue. If the value is non-zero, the
       scheduler will limit the servicing of this queue to, at most,
       this rate in a non-work-conserving manner.

       Note that this attribute value and that of
       diffServMaxRateAbsolute are coupled: changes to one will affect
       the value of the other. They are linked by the following
       equation, in that setting one will change the other:

         diffServMaxRateRelative =
                 (diffServMaxRateAbsolute*1000000)/ifSpeed

       or, if appropriate:

         diffServMaxRateRelative = diffServMaxRateAbsolute/ifHighSpeed" /"ifSpeed, ifHighSpeed, Interface MIB, RFC 2863"                     �"The number of bytes of queue depth at which the rate of a
       multi-rate scheduler will increase to the next output rate. In
       the last conceptual row for such a shaper, this threshold is
       ignored and by convention is zero."  "Adaptive rate Shaper, RFC 2963"                     �"The storage type for this conceptual row.  Conceptual rows
       having the value 'permanent' need not allow write-access to any
       columnar objects in the row."                      ("The status of this conceptual row. All writable objects in this
       row may be modified at any time. Setting this variable to
       'destroy' when the MIB contains one or more RowPointers pointing
       to it results in destruction being delayed until the row is no
       longer used."                               �"When this MIB is implemented with support for read-create, then
       such an implementation can claim full compliance. Such devices
       can then be both monitored and configured with this MIB."   P"This group is mandatory for devices that implement metering
       functions." ]"This group is mandatory for devices that implement token-bucket
       metering functions." T"This group is mandatory for devices that implement DSCP-Marking
       functions." S"This group is mandatory for devices that implement Random Drop
       functions." ="Support for createAndWait and notInService is not required." ="Support for createAndWait and notInService is not required." ="Support for createAndWait and notInService is not required." P"An implementation is only required to support IPv4 and IPv6
       addresses." `"An implementation is only required to support IPv4 and globally
       unique IPv6 addresses." ="Support for createAndWait and notInService is not required." ="Support for createAndWait and notInService is not required." ="Support for createAndWait and notInService is not required." ="Support for createAndWait and notInService is not required." ="Support for createAndWait and notInService is not required." ="Support for createAndWait and notInService is not required."             �"When this MIB is implemented without support for read-create
       (i.e. in read-only mode), then such an implementation can claim
       read-only compliance. Such a device can then be monitored but can
       not be configured with this MIB."   P"This group is mandatory for devices that implement metering
       functions." ]"This group is mandatory for devices that implement token-bucket
       metering functions." T"This group is mandatory for devices that implement DSCP-Marking
       functions." S"This group is mandatory for devices that implement Random Drop
       functions." "Write access is not required." "Write access is not required." a"Write access is not required, and active is the only status that
       needs to be supported." L"Object not needed when diffServClfrTable is implemented read-
       only" "Write access is not required." a"Write access is not required, and active is the only status that
       needs to be supported." R"Object not needed when diffServClfrelementTable is implemented
       read-only" "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." a"Write access is not required, and active is the only status that
       needs to be supported." a"Object is not needed when diffServMultiFieldClfrTable is
       implemented in read-only mode." n"Write access is not required. An implementation is only required
       to support IPv4 and IPv6 addresses." ~"Write access is not required. An implementation is only required
       to support IPv4 and globally unique IPv6 addresses." "Write access is not required." ~"Write access is not required. An implementation is only required
       to support IPv4 and globally unique IPv6 addresses." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." _"Write access is not required, createAndWait and notInService
       support is not required." a"Object is not needed when diffServMultiFieldClfrTable is
       implemented in read-only mode." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." a"Write access is not required, and active is the only status that
       needs to be supported." Z"Object is not needed when diffServTBParamTable is implemented in
       read-only mode." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." a"Write access is not required, and active is the only status that
       needs to be supported." Y"Object is not needed when diffServActionTable is implemented in
       read-only mode." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." a"Write access is not required, and active is the only status that
       needs to be supported." ["Object is not needed when diffServCountActTable is implemented
       in read-only mode." "Write access is not required." a"Write access is not required, and active is the only status that
       needs to be supported." Z"Object is not needed when diffServAlgDropTable is implemented in
       read-only mode." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." a"Write access is not required, and active is the only status that
       needs to be supported." ]"Object is not needed when diffServRandomDropTable is implemented
       in read-only mode." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." a"Write access is not required, and active is the only status that
       needs to be supported." T"Object is not needed when diffServQTable is implemented in
       read-only mode." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." a"Write access is not required, and active is the only status that
       needs to be supported." \"Object is not needed when diffServSchedulerTable is implemented
       in read-only mode." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." a"Write access is not required, and active is the only status that
       needs to be supported." Z"Object is not needed when diffServMinRateTable is implemented in
       read-only mode." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." a"Write access is not required, and active is the only status that
       needs to be supported." Z"Object is not needed when diffServMaxrateTable is implemented in
       read-only mode." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." a"Write access is not required, and active is the only status that
       needs to be supported."                 ["The Data Path Group defines the MIB Objects that describe a
       functional data path."                 s"The Classifier Group defines the MIB Objects that describe the
       list the starts of individual classifiers."                 �"The Classifier Element Group defines the MIB Objects that
       describe the classifier elements that make up a generic
       classifier."                 �"The Multi-field Classifier Group defines the MIB Objects that
       describe a classifier element for matching on various fields of
       an IP and upper-layer protocol header."                 Y"The Meter Group defines the objects used in describing a generic
       meter element."                 k"The Token-Bucket Meter Group defines the objects used in
       describing a token bucket meter element."                 ["The Action Group defines the objects used in describing a
       generic action element."                 j"The DSCP Mark Action Group defines the objects used in
       describing a DSCP Marking Action element."                 g"A collection of objects providing information specific to
       packet-oriented network interfaces."                 x"The Algorithmic Drop Group contains the objects that describe
       algorithmic dropper operation and configuration."                 s"The Random Drop Group augments the Algorithmic Drop Group for
       random dropper operation and configuration."                 S"The Queue Group contains the objects that describe an
       interface's queues."                 a"The Scheduler Group contains the objects that describe packet
       schedulers on interfaces."                 �"The Minimum Rate Parameter Group contains the objects that
       describe packet schedulers' minimum rate or priority guarantees."                 y"The Maximum Rate Parameter Group contains the objects that
       describe packet schedulers' maximum rate guarantees."                         t"Two Parameter Token Bucket Meter as described in the Informal
       Differentiated Services Model section 5.2.3."               f"Average Rate Meter as described in the Informal Differentiated
       Services Model section 5.2.1."               |"Single Rate Three Color Marker Metering as defined by RFC 2697,
       in the `Color Blind' mode as described by the RFC." 
"RFC 2697"             |"Single Rate Three Color Marker Metering as defined by RFC 2697,
       in the `Color Aware' mode as described by the RFC." 
"RFC 2697"             y"Two Rate Three Color Marker Metering as defined by RFC 2698, in
       the `Color Blind' mode as described by the RFC." 
"RFC 2698"             y"Two Rate Three Color Marker Metering as defined by RFC 2698, in
       the `Color Aware' mode as described by the RFC." 
"RFC 2698"             Q"Time Sliding Window Three Color Marker Metering as defined by
       RFC 2859." 
"RFC 2859"                �"For use with diffServSchedulerMethod to indicate the Priority
       scheduling method.  This is defined as an algorithm in which the
       presence of data in a queue or set of queues absolutely precludes
       dequeue from another queue or set of queues of lower priority.
       Note that attributes from diffServMinRateEntry of the
       queues/schedulers feeding this scheduler are used when
       determining the next packet to schedule."              �"For use with diffServSchedulerMethod to indicate the Weighted
       Round Robin scheduling method, defined as any algorithm in which
       a set of queues are visited in a fixed order, and varying amounts
       of traffic are removed from each queue in turn to implement an
       average output rate by class. Notice attributes from
       diffServMinRateEntry of the queues/schedulers feeding this
       scheduler are used when determining the next packet to schedule."              �"For use with diffServSchedulerMethod to indicate the Weighted
       Fair Queuing scheduling method, defined as any algorithm in which
       a set of queues are conceptually visited in some order, to
       implement an average output rate by class. Notice attributes from
       diffServMinRateEntry of the queues/schedulers feeding this
       scheduler are used when determining the next packet to schedule."                      