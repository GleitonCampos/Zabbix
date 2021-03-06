�-- =================================================================
-- Copyright (C) 1996-2002 by  HUAWEI TECHNOLOGIES. All rights reserved.
--
-- Description:Huawei QOS MIB
-- Reference:HUAWEI Enterprise MIB
-- Version: V2.4
-- History:
--   V1.0
--	 6th Mar 2004
--   Initial version
--   v1.1
--       1.Add mpls(2) to qosPqlProName's SYNTAX INTEGER
--       2.Add exp(8)  to qosPqlProQueKey's SYNTAX INTEGER
--       3.Add mpls(2) to qosCqlProName's SYNTAX INTEGER
--       4.Add exp(8)  to qosCqlProQueKey's SYNTAX INTEGER
--       7th Aug 2004
--   v1.2
--       1.Change MODULE name from A3COM-HUAWEI-QOS-MIB to A3COM-HUAWEI-QOS-MIB
--       2.Change the old node name from "huawei-qos" to "hwIfQoSMib"
--       3.Change qosPqlProQueKey's "exp(8)" to "exp-mask(8)"
--       4.Modify qosPqlProQueKeyValue's DESCRIPTION
--       5.Change qosCqlProQueKey's "exp(8)" to "exp-mask(8)"
--       6.Modify qosCqlProQueKeyValue's DESCRIPTION
--       7.Modify the range of qosCARListNum to "SYNTAX INTEGER (0..199|2000..3999)"
--       8.Add "remark-mplsexp-continue(6)" and "remark-mplsexp-pass(7)" to qosCARConformAction
--       9.Add "remark-mplsexp-continue(6)" and "remark-mplsexp-pass(7)" to qosCARExceedAction
--       10.Modify the range of qosGTSACLNum to "SYNTAX INTEGER (0..199|2000..3999)"
--       11.Add qosIfBandwidthTable
--       12.Add qosRTPIfApplyTable
--       13.Add qosRTPIfQueueRunInfoTable
--       27th Aug 2004 changed by yuhui
--  V2.0 2004-10-12 updated by gaolong
--       Import from SNMPv2-SMI instead from RFC-1212.
--       Add hwIfQoSMib MODULE-IDENTITY clause.
--       Change ACCESS clauses to MAX-ACCESS.
--       Change STATUS clauses from mandatory to current.
--       Remove chinese characters.
--       Change Counter to Counter32.
--       Change MAX-ACCESS clause value of qosIfBandwidthIfIndex to not-accessible
--       because this is an index object.
--       Change MAX-ACCESS clause value of qosIFBandwidthMaxBW and qosIFBandwidthMaxReservedBWPct
--       from read-write to read-create according to RFC2578.
--  V2.1 2004-11-18 updated by wanghao
--       1.Add dscp-mask(3) to qosCarlParaType's SYNTAX INTEGER
--       2.Fix syntax bugs and adjust format of the whole file.
--  V2.2 2005-2-22 updated by wanghao
--       1.Add qosWFQQueueType to qosWFQTable
--       2.Change index syntax from read-only to not-accessible by tangshun
--  V2.3 2005-7-5 updated by gaolong
--       1.Modify SYNTAX of qosGTSIfName
--  V2.4 2006-03-02 updated by huguohua
--       1.Remove the value range of qosCARCIR, qosCARBurstSize and qosCARExcessBurstSize
--       2.Remove the value range of qosGTSCIR, qosGTSBurstSize and qosGTSExcessBurstSize
--       3.Remove the value range of qosLRCIR, qosLRBurstSize and qosLRExcessBurstSize
--       4.Remove the value range of qosRTPIfApplyCbs
-- =================================================================
                     " "{" R&D Beijing, Huawei Technologies Co. Ltd.
                            Huawei Bld.,NO.3 Xinxi Rd.,
                            Shang-Di Information Industry Base,
                            Hai-Dian District Beijing P.R. China
                            Zip:100085
                            Http://www.huawei.com
                            E-mail:support@huawei.com "       -- OCT 11, 2004 at 00:00 GMT
       ("FIFO(First In First Out) queuing table"                       J"FIFO configuration and running information Command:qos fifo queue-length"                       "The index of interface."                       "The description of interface."                       #"The maximum length of fifo queue."                       "The current length of queue."                       '"The discarded packet number of queue."                       �"
                                0: Only for get.
                                1: Set default value of the maximum length of fifo queue.
                                "                       ."PQL(Priority Queue List) default-queue table"                       ."PQL default-queue configuration information."                       ."The index of table, which is the PQL number."                       B"The type of default priority queue, the default value is normal."                       �"
                                0: Only for get.
                                1: Set default value of the defualt priority queue.
                                "                       -"PQL(Priority Queue List) queue-length table"                       -"PQL queue-length configuration information."                       ."The index of table, which is the PQL number."                       :"The index of table, which is the type of priority queue."                       ("The maximum length of specified queue."                       �"
                                0: Only for get.
                                1: Set default value of the maximum length of specified queue.
                                "                       2"PQL(Priority Queue List) inbound-interface table"                       2"PQL inbound-interface configuration information."                       ."The index of table, which is the PQL number."                       6"The index of table, which is the index of interface."                       "The description of interface."                       "The type of priority queue."                       �"
                                0: Only for get.
                                1: delete the corresponding inbound-interface rule of the specified PQL number
                                "                       )"PQL(Priority Queue List) protocol table"                       )"PQL protocol configuration information."                       ."The index of table, which is the PQL number."                       N"The index of table, which is the protocol name. Only IP supported currently."                       F"The index of table, which is the key words of traffic-classify rule."                      I"
                                The index of table, which is the value of key words.
                                for greater-than,less-than,tcp,udp:0~65535
                                for acl:2000~3999
                                for NULL and fragment: null
                                for exp-mask: 1~255"                       "The type of priority queue. "                       �"
                                0: Only for get.
                                1: delete the corresponding protocol rule of the specified PQL number
                                "                       "PQ(Priority Queuing) table"                       )"PQ configuration and running infomation"                       6"The index of table, which is the index of interface."                       "The PQL number."                       #"The description of the interface."                       2"The number of packets in the top priority queue."                       8"The number of discarded packets in top priority queue."                       '"The max length of top priority queue."                       5"The number of packets in the middle priority queue."                       ;"The number of discarded packets in middle priority queue."                       *"The max length of middle priority queue."                       6"The number of packets in the  normal priority queue."                       ;"The number of discarded packets in normal priority queue."                       *"The max length of normal priority queue."                       5"The number of packets in the bottom priority queue."                       ;"The number of discarded packets in bottom priority queue."                       *"The max length of bottom priority queue."                       �"
                                0:Only for get.
                                1:Set the default queuing on interface: FIFO.
                                "                       ,"CQL(Custom Queue List) default-queue table"                       ."CQL default-queue configuration information."                       ."The index of table, which is the CQL number."                       "The queue number(0~16)"                       �"
                                0: Only for get.
                                1: Set default value of the defualt custom queue.
                                "                       0"CQL(Custom Queue List) inbound-interface table"                       2"CQL inbound-interface configuration information."                       ."The index of table, which is the CQL number."                       "The index of interface."                       "The description of interface."                       "The queue number(0~16)"                       �"
                                0: Only for get.
                                1: delete the corresponding inbound-interface rule of the specified CQL number
                                "                       '"CQL(Custom Queue List) protocol table"                       )"CQL protocol configuration information."                       ."The index of table, which is the CQL number."                       N"The index of table, which is the protocol name. Only IP supported currently."                       F"The index of table, which is the key words of traffic-classify rule."                      J"
                                The index of table, which is the value of key words.
                                for greater-than,less-than,tcp,udp:0~65535
                                for acl:2000~3999
                                for NULL and fragment: null
                                for exp-mask: 0~255 "                       "The queue number."                       �"
                                0: Only for get.
                                1: delete the corresponding protocol rule of the specified CQL number
                                "                       3"CQL(Custom Queue List) serving/queue-length table"                       5"CQL serving/queue-length configuration information."                       ."The index of table, which is the CQL number."                       0"The index of table, which is the queue number."                       F"The maximum bytes that the specified queue can transmit in each turn"                       ,"The maximum length of the specified queue."                       �"
                                0: Only for get.
                                1: Set the defualt value of the maximum bytes 
                                   that the specified queue can transmit in each turn.
                                "                       �"
                                0: Only for get.
                                1: Set the defualt value of the maximum length of the specified queue.
                                "                       "CQ(Custom Queuing) table"                       "CQ configuration infomation"                       6"The index of table, which is the index of interface."                       "the CQL number."                       "The description of interface."                       �"
                                0:Only for get.
                                1:Set the default queuing on interface: FIFO
                                "                       %"CQ(Custom Queuing) statistics table"                       "CQ running infomation"                       :"The index of the table, which is the index of interface."                       3"The index of the table, which is the queue number"                       "The description of interface."                       /"The number of packets in the specified queue."                       9"The number of discarded packets of the specified queue."                       ,"The maximum length of the specified queue."                       #"WFQ(Weighted Fair Queueing) table"                       *"WFQ configuration and running infomation"                       :"The index of the table, which is the index of interface."                       "The description of interface."                       ""The maximum length of the queue."                       "The total number of queues."                       *"The number of packets in all the queues."                       4"The number of discarded packets in all the queues."                       "The number of active queues."                       &"The maximum number of active queues."                       �"
                                0:Only for get.
                                1:Set the default queuing on interface: FIFO
                                "                       �"
                                1: hashed by ip precedence
                                2: hashed by dscp
                                "                       *"WRED(Weighted Random Early Detect) table"                       "WRED configuration infomation"                       :"The index of the table, which is the index of interface."                       "The description of interface."                       �"
                                Weighted factor in formula for calculating the mean length of queue.
                                From 1 to 16, the default value is 9
                                "                       �"
                                0:disable wred. Recover the default configuration: tail-drop
                                1:enable wred
                                "                       �"
                                0:Only for get.
                                1:Recover the default value of weighted factor: 9
                                "                       5"WRED(Weighted Random Early Detect) precedence table"                       *"WRED precedence configuration infomation"                       :"The index of the table, which is the index of interface."                       "IP precedence, from 0 to 7"                       "The description of interface."                       "Low Limit(number of packets)"                       "High limit(number of packets)"                       !"Discard probability denominator"                       +"Number of packets random-dropped for WRED"                       )"Number of packets tail-dropped for WRED"                       �"
                                0:Only for get.
                                1:Recover the default value of low-limit, high-limit 
                                  and discard-probability on relevant precedence.
                                "                       ("CARL(Committed Access Rate List) table"                       "CARL configuration infomation"                       2"The index of the table, which is the CARL number"                       #"Parameter type of the CARL number"                       #"Parameter value of the CARL table"                       N"0:Only for get.
                                1:Delete the specified CARL"                       ""CAR(Committed Access Rate) table"                       +"CAR configuration and running infomation."                       :"The index of the table, which is the index of interface."                       "The description of interface."                       E"The index of the table, which is direction of the processed packet."                       �"
                                The index of the table, which is the matching type for the packets
                                on interface:ACL,CARL,ANY.
                                "                      0"
                                The index of the table, which is
                                CARType=1,the number is ACL number;
                                CARType=2,the number is CARL number;
                                CARType=3,the parameter is 0.
                                "                       ?"The index of the table, which is  Committed Information Rate."                       ."The index of the table, which is Burst Size."                       5"The index of the table, which is Excess Burst Size."                       2"Action on packets when traffic is within the CIR"                       ."Action on packets when traffic is out of CIR"                       H"Rewrite the precedence value on packets when traffic is within the CIR"                       D"Rewrite the precedence value on packets when traffic is out of CIR"                       "Number of Conformed packets."                       "Bytes of Conformed packets."                       "Number of Exceeded packets."                       "Bytes of Exceeded packets."                       �"
                                0:Only for get.
                                1:Delete the relevant CAR policy
                                "                       $"GTS(Generic Traffic Shaping) table"                       "GTS configuration information"                       :"The index of the table, which is the index of interface."                       "The description of interface."                       �"
                                The index of the table, which is the matching type for the packets
                                on interface:ACL, ANY
                                "                       �"
                                qosGTSType = 1:The index of the table, which is ACL number
                                qosGTSType = 2:The index of the table is 0
                                "                       ,"The Committed Information Rate for shaping"                       "The Burst Size for shaping"                       #"The Excess Burst Size for shaping"                       &"The maximum queue length for shaping"                       &"The current queue length for shaping"                       +"Number of transmitted packets for shaping"                       *"Bytes of transmitted packets for shaping"                       '"Number of delayed packets for shaping"                       &"Bytes of delayed packets for shaping"                       )"Number of discarded packets for shaping"                       ("Bytes of discarded packets for shaping"                       �"
                                0:Only for get.
                                1:Delete the relevant GTS policy
                                "                       "LR(Line Rate) table."                       +"LR configuration and running information."                       :"The index of the table, which is the index of interface."                       "The description of interface."                       6"The Committed Information Rate on the physical port."                       "Burst Size."                       "Excess Burst Size."                        "Number of transmitted packets."                       "Bytes of transmitted packets."                       "Number of delayed packets"                       "Bytes of delayed packets"                       �"
                                0:Only for get.
                                1:Delete the relevant LR policy
                                "                       ."A table of bandwidth parameter on interface."                       +"Bandwidth parameter applied on Interface."                       $"Interface Index, equal to ifIndex."                       <"Max bandwidth Value (Unit: Kbps) applied on the interface."                       O"Max reserved bandwidth as percent of the interface bandwidth (Unit: percent)."                       %"Max reserved bandwidth. Unit : Kbps"                       ""Available bandwidth. Unit : Kbps"                       �"RowStatus for qosIfBandwidthTable Table.
                                Three actions are used: active, createAndGo, destroy"                       A"A table of QoS RTP(Realtime Transport Protocol) Queue instance."                       >"Apply RTP(Realtime Transport Protocol) queuing on interface."                       $"Interface Index, equal to ifIndex."                       i"
                                RTP-PORT(3): start-port: 2000~65535
                                "                       g"
                                RTP-PORT(3): end-port: 2000~65535
                                "                       �"Max bandwidth Value:
                                Absolute value: 8..1000000. Unit: Kbps
                                "                       v"
                                Committed Burst Size: 1500..2000000. Unit: bytes
                                "                       z"RowStatus for RTPQoSIfApply Table.
                                Three actions are used: active, createAndGo, destroy"                       �"A table of Running statistics for RTP(Realtime Transport Protocol) Queue
                                applied on the interface."                       :"RTP(Realtime Transport Protocol) Queue statistics entry."                       "Size of Rtpq Queue."                       ?" Max packet number of RTP(Realtime Transport Protocol) Queue."                       A"Output packet number of RTP(Realtime Transport Protocol) Queue."                       D"Discarded packet number of RTP(Realtime Transport Protocol) Queue."                                  