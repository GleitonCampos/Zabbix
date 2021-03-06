-- ------------------------------------------------------------------
-- Descripton: Huawei-3com draft for Lan Switch Qos MIB
--
-- History V2.3
--     V1.0 2002-11-18 created by qizhenglin
--     V1.1 2004-05-09 add and modify hwPortWredTable by tangshun
--     V1.2 2004-08-05 modify hwQueueScheduleMode(add hq_wrr(9)) by qizhenglin
--     v1.3 2004-08-12 add hwFlowtempVlanId,hwFlowtempCos to hwFlowtempTable
--     v1.4 2004-09-17 change value range of hwRateLimitTargetRateKbps from 200..100000
--          to 64..1000000 by zhuangyu
--     v1.5 2004-10-12 updated by gaolong
--          Import Counter64.
--          Remove some adjacent hyphens
--          Rewrite value of hwQueueScheduleMode and hwRateLimitConformActionType.
--          Change all underscore('_') characters to hyphen characters('-') because
--          underscore character is not allowed in MIB module.
--     v1.51 2004-10-27 changed by zhuangyu
--          1 Add an enumeration in hwRateLimitConformActionType
--          2 Add hwRateLimitConformCos and hwRateLimitConformDscp in hwRateLimitTable
--          3 Import IpAddress
--     v1.52 2004-12-13 updated by jinyi
--          Fix syntax bugs and adjust format of the whole file.
--     v1.53 2004-12-13 updated by zhuangyu
--          Modify description of hwRateLimitExceedDscp,hwRateLimitConformDscp and hwPriorityDscp.
--     v1.6 2004-12-1 changed by yangjianjun
--          Add  hwMirroringGroupTable
--               hwMirroringGroupMirrorTable
--               hwMirroringGroupMonitorTable
--               hwMirroringGroupReflectorTable
--               hwMirroringGroupRprobeVlanTable
--     v1.7 2005-4-6 changed by fanghailin
--          Add hwRedirectToSlotNo hwRedirectRemarkedDSCP hwRedirectRemarkedPri hwRedirectRemarkedTos
--          hwRedirectToNextHop3 hwRedirectTargetVlan hwRedirectMode
--          in hwRedirectTable Notice:All the nodes are used only for L3plus funtion and speciality.
--     v1.8 2005-5-18 updated by zhangyinxi
--          Add  hwRedirectToNestedVlanID and hwRedirectToModifiedVlanID
--     v1.9 2005-6-27
--          1. Add hwMirroringGroupMirrorMacTable, hwMirroringGroupMirrorVlanTable,
--             hwPortTrustTable, hwRemarkVlanIDTable, hwCosToDscpMapTable, hwDscpToLocalPreMapTable,
--             hwDscpToDropPreMapTable, hwDscpToCosMapTable, hwDscpToDscpMapTable,
--             hwRateLimitMeterStatByteCount, hwRateLimitMeterStatByteXCount,
--             hwRateLimitMeterStatState by liyan and wangyingxia
--          2. Modify the range of hwRateLimitTargetRateKbps by liyan and wangyingxia
--          3. Add hwMirrorToGroup in hwMirrorTable by yubin
--     v2.0 2005-10-25 updated by houli
--          1. Remove value range of hwLineRateValue
--          2. Remove value range of hwRateLimitTargetRateMbps
--     V2.1 2005-11-07 update by wangyingxia
--          1. Add HwMirrorOrMonitorType and hwMirroringGroupMonitorType
--          2. Modify the description of hwMirroringGroupMonitorIfIndex
--          3. Change the value range of hwRedirectTargetVlan by lihaijun
--     V2.2 2005-12-19 update by wangyingxia
--          1. Add hwMirroringGroupMirrorInTypeList, hwMirroringGroupMirrorOutTypeList
--             by wangyingxia
--          2. change the description of hwMirroringGroupMirrorInboundIfIndexList  
--             add hwMirroringGroupMirrorOutboundIfIndexList by wangyingxia
--     v2.3 2006-01-16 updated by houli
--          1. Remove value range of hwTrafficShapeMaxRate
--          2. Remove value range of hwTrafficShapeBurstSize
-- ------------------------------------------------------------------
-- ------------------------------------------------------------------
--
-- Import and definition
--
-- ------------------------------------------------------------------
   �"
     Specify the mirror source or destination type.
     port(1):
        the mirror source or destination is port.
     board(2):
        the mirror source or destination is board.
    "                                                                 "Module node for qos and acl." "huawei beiyan" "200211190000Z" "Table of qos and acl."                   !"Priority type of inbound queue."                       %"The ifIndex of in/out monitor port."                       )"Queue table which contains queue entry."                       )"The configuration information of queue."                       "ifIndex of port."                       !"The mode of the queue schedule."                       �"If queue mode is wfq, then hwQueueWeight1 represent the bandwidth of queue 1.
      If queue mode is wrr, then hwQueueWeight1 represent the weight of queue 1."                       �"If queue mode is wfq, then hwQueueWeight2 represent the bandwidth of queue 2.
      If queue mode is wrr, then hwQueueWeight2 represent the weight of queue 2."                       �"If queue mode is wfq, then hwQueueWeight3 represent the bandwidth of queue 3.
      If queue mode is wrr, then hwQueueWeight3 represent the weight of queue 3."                       �"If queue mode is wfq, then hwQueueWeight4 represent the bandwidth of queue 4.
      If queue mode is wrr, then hwQueueWeight4 represent the weight of queue 4."                       " "                       �"If queue mode is wfq, then hwQueueWeight5 represent the bandwidth of queue 5.
      If queue mode is wrr, then hwQueueWeight5 represent the weight of queue 5."                       �"If queue mode is wfq, then hwQueueWeight6 represent the bandwidth of queue 6.
      If queue mode is wrr, then hwQueueWeight6 represent the weight of queue 6."                       �"If queue mode is wfq, then hwQueueWeight7 represent the bandwidth of queue 7.
      If queue mode is wrr, then hwQueueWeight7 represent the weight of queue 7."                       �"If queue mode is wfq, then hwQueueWeight8 represent the bandwidth of queue 8.
      If queue mode is wrr, then hwQueueWeight8 represent the weight of queue 8."                       /"Rate limit table which contains limit entry. "                       9"The configuration information of the rate-limited port."                       "Index of acl rule."                       #"ifIndex of the rate-limited port."                       
"Vlan ID."                       %"Direction of the rate-limited port."                       "The number of user acl."                       "The number of user acl-rule."                       "The number of Ip acl."                       "The number of Ip acl-rule."                       "The number of link acl."                       "The number of link acl-rule."                       "Target rate: Mbps."                       "Target rate: Kbps."                       %"Peak rate of the rate-limited port."                       "CIR of the rate-limited port."                       )"Burst traffic of the rate-limited port."                       0"Excess burst traffic of the rate-limited port."                       "PIR of the rate-limited port."                       "Conform local pre."                       "Conform action type."                       "Exceed action type."                      �"Exceed DSCP.
      <0-63>  Value of DSCP
      af11    Specify Assured Forwarding 11 service(10)
      af12    Specify Assured Forwarding 12 service(12)
      af13    Specify Assured Forwarding 13 service(14)
      af21    Specify Assured Forwarding 21 service(18)
      af22    Specify Assured Forwarding 22 service(20)
      af23    Specify Assured Forwarding 23 service(22)
      af31    Specify Assured Forwarding 31 service(26)
      af32    Specify Assured Forwarding 32 service(28)
      af33    Specify Assured Forwarding 33 service(30)
      af41    Specify Assured Forwarding 41 service(34)
      af42    Specify Assured Forwarding 42 service(36)
      af43    Specify Assured Forwarding 43 service(38)
      be      Specify Best Effort service(0)
      cs1     Specify Class Selector 1 service(8)
      cs2     Specify Class Selector 2 service(16)
      cs3     Specify Class Selector 3 service(24)
      cs4     Specify Class Selector 4 service(32)
      cs5     Specify Class Selector 5 service(40)
      cs6     Specify Class Selector 6 service(48)
      cs7     Specify Class Selector 7 service(56)
      ef      Specify Expedited Forwarding service(46)"                       
"Runtime."                       D"RowStatus, now support three status: createAndGo, active, destroy."                       %"Exceeding COS of rate-limited port."                      �"If the user choose remark-cos value of the hwRateLimitConformActionType,
      This object can be used to set the conform COS value.  There are a few
      enumerations as follows:
      background          Specify background priority(1)
      best-effort         Specify best-effort priority(0)
      controlled-load     Specify controlled-load priority(4)
      excellent-effort    Specify excellent-effort priority(3)
      network-management  Specify network-management priority(7)
      spare               Specify spare priority(2)
      video               Specify video priority(5)
      voice               Specify voice priority(6)"                      T"If the user choose remark-dscp value of the hwRateLimitConformActionType,
      This object can be used to set the conform dscp value.  There are a few
      enumerations as follows:
      <0-63>  Value of DSCP
      af11    Specify Assured Forwarding 11 service(10)
      af12    Specify Assured Forwarding 12 service(12)
      af13    Specify Assured Forwarding 13 service(14)
      af21    Specify Assured Forwarding 21 service(18)
      af22    Specify Assured Forwarding 22 service(20)
      af23    Specify Assured Forwarding 23 service(22)
      af31    Specify Assured Forwarding 31 service(26)
      af32    Specify Assured Forwarding 32 service(28)
      af33    Specify Assured Forwarding 33 service(30)
      af41    Specify Assured Forwarding 41 service(34)
      af42    Specify Assured Forwarding 42 service(36)
      af43    Specify Assured Forwarding 43 service(38)
      be      Specify Best Effort service(0)
      cs1     Specify Class Selector 1 service(8)
      cs2     Specify Class Selector 2 service(16)
      cs3     Specify Class Selector 3 service(24)
      cs4     Specify Class Selector 4 service(32)
      cs5     Specify Class Selector 5 service(40)
      cs6     Specify Class Selector 6 service(48)
      cs7     Specify Class Selector 7 service(56)
      ef      Specify Expedited Forwarding service(46)"                       "The counter of conform byte."                       "The counter of exceed byte."                        "The status of meter statistic."                       3"The priority table which contains priority entry."                       ,"The configuration information of priority."                       "Index of acl rule."                       "ifIndex of the port."                       
"Vlan ID."                       "Direction of data stream."                       "The number of user acl."                       "The subitem of the user acl."                       "The number of Ip acl."                       "The subitem of the IP acl."                       "The number of Link acl."                       "The subitem of the link acl."                      �"Set DSCP Value.
      <0-63>  Value of DSCP
      af11    Specify Assured Forwarding 11 service(10)
      af12    Specify Assured Forwarding 12 service(12)
      af13    Specify Assured Forwarding 13 service(14)
      af21    Specify Assured Forwarding 21 service(18)
      af22    Specify Assured Forwarding 22 service(20)
      af23    Specify Assured Forwarding 23 service(22)
      af31    Specify Assured Forwarding 31 service(26)
      af32    Specify Assured Forwarding 32 service(28)
      af33    Specify Assured Forwarding 33 service(30)
      af41    Specify Assured Forwarding 41 service(34)
      af42    Specify Assured Forwarding 42 service(36)
      af43    Specify Assured Forwarding 43 service(38)
      be      Specify Best Effort service(0)
      cs1     Specify Class Selector 1 service(8)
      cs2     Specify Class Selector 2 service(16)
      cs3     Specify Class Selector 3 service(24)
      cs4     Specify Class Selector 4 service(32)
      cs5     Specify Class Selector 5 service(40)
      cs6     Specify Class Selector 6 service(48)
      cs7     Specify Class Selector 7 service(56)
      ef      Specify Expedited Forwarding service(46)"                       "Set Ip precedence."                       /"Set Ip precedence according to vlan priority."                       "Set vlan priority."                       /"Set vlan priority according to IP precedence."                       "Set local precedence."                       ("The service type of proliced Priority."                       ("The service Dscp of proliced Priority."                       '"The service Exp of proliced Priority."                       '"The service COS of proliced Priority."                       -"The service local pre of proliced Priority."                       1"The service drop priority of proliced Priority."                       "Is run or not."                       D"RowStatus, now support three status: createAndGo, active, destroy."                       ."Redirect table which contains rediect entry."                       +"Configuration information of redirection."                       "Index of acl rule."                       "ifIndex of port."                       
"Vlan ID."                       "Direction of data stream."                       "The number of the user acl."                       "The subitem of the user acl."                       "The num of the IP acl."                       "The subitem of the IP acl."                       "The num of the link acl."                       "The subitem of the link acl."                       "Redirect to cpu."                       ("The ifIndex of port to be redirect to."                       " "                       " "                       "Is run or not."                       D"RowStatus, now support three status: createAndGo, active, destroy."                       �"The slot number to process redirection. Default value is 15.
      When L3plus function is not supported, the default value would be set.
      For L3plus redirection function, it is necessary."                       �"DSCP of Policy-Based Routing. When L3plus function is not supported,
      the default value would be set.
      For L3plus redirection function, it is optional."                       �"The priority of the redirect packet. When L3plus function is not supported,
      the default value would be set.
      For L3plus redirection function, it is optional."                       �"The TOS of the redirect packet.
      When L3plus function is not supported, the default value would be set.
      For L3plus redirection function, it is optional."                      k"The third IP address for PBR. Default value is 0xffffffff.
      When L3plus function is not supported, the default value would be set.
      The data stream can be redirected to three nexthops at most or one
      VLAN interface, one nexthop should be set at least if data packets
      are not redirected to VLAN interface for L3plus redirection function."                       �"The destination vlan ID for PBR. Default value is 0.
      When L3plus function is not supported, the default value would be set.
      For L3plus redirection function, it is necessary when no nexthop is set. "                      �"The node denotes the strategy adopted by the PBR.
      If strict-priority is configured, the most preferential IP address
      is use as redirected nexthop.
      If the mode is load-balance, any of the three IP addresses will be
      the nexthop and the traffic distributes in the three direction.
      Default value is strict-priority.
      When L3plus function is not supported, the default value would be set.
      It is optional. "                       �"The nested vlan ID inserted before the original vlan tag. Default value is 0.
      When the function is not supported, the default value would be set.
      It is optional."                       �"The new vlan ID replaced the old one. Default value is 0.
      When the function is not supported, the default value would be set.
      It is optional."                       1"Statistic table which contains statistic entry."                       ,"Configuration about statistic information."                       "Index of acl rule."                       "ifIndex of port."                       
"Vlan ID."                       "Direction of data stream."                       "The number of the user acl."                       "The subitem of the user acl."                       "The number of the IP acl."                       "The subitem of the IP acl."                       "The number of the link acl."                       "The subitem of the link acl."                       "Is run or not."                       ."The counter of the packets which is matched."                       +"The counter of the byte which is matched."                       #"Clear the counter of the packets."                       D"RowStatus, now support three status: createAndGo, active, destroy."                       ("The counter of the outprofile packets."                       &"The counter of the outprofile bytes."                       +"Mirror table which contains mirror entry."                       +"Configuration information to be mirrored."                       "Index of acl rule."                       "ifIndex of port."                       
"Vlan ID."                       "Direction of data stream."                       "The number of the user acl."                       "The subitem of the user acl."                       "The subitem of the user acl."                       "The subitem of the IP acl."                       "The number of the link acl."                       "The subitem of the link acl."                       -"The ifIndex of port that to be mirrored to."                       "Mirror to cpu."                       "Is run or not."                       E"RowStatus, now support three status: createAndGo, active, destroy. "                       C"The destination of stream-based mirroring is the mirroring group."                       "Port Mirror."                       ."Configuration information of port mirroring."                       "The ifIndex of mirror port."                       "The direction of mirror port."                       D"RowStatus, now support three status: createAndGo, active, destroy."                       "Line Rate."                       ."Configuration information of line-rate port."                       #"The ifIndex of port of line rate."                       "The direction of line rate."                       "The value of the line-rate."                       D"RowStatus, now support three status: createAndGo, active, destroy."                       "Bandwidth."                       1"Configuration information of bandwidth of port."                       "Index of acl rule."                       "ifIndex of port."                       
"Vlan ID."                       "Direction of data stream."                       "The number of Ip acl."                       "The subitem of ip acl."                       "The number of link acl."                       "The subitem of link acl."                       $"The min width which is guaranteed."                       $"The max width which is guaranteed."                       "Weight of bandwidth."                       "Is run or not."                       D"RowStatus, now support three status: createAndGo, active, destroy."                       %"Red table which contains RED entry."                       #"Configuration information of RED."                       "Index of acl rule."                       "ifIndex of port."                       
"Vlan ID."                       "Direction of data stream."                       "The num of Ip acl."                       "The subitem of Ip acl."                       "The number of link acl."                       "The subitem of link acl."                       "The length of Starting queue."                       "The length of stopping queue."                       "Probability."                       "Is run or not."                       D"RowStatus, now support three status: createAndGo, active, destroy."                       "Mirror Group."                       /"Configuration information of mirroring group."                       "Group ID of mirroring group."                       3"Direction of data stream which would be mirrored."                       "ifIndex list of source port."                       "ifIndex of destination port."                       D"RowStatus, now support three status: createAndGo, active, destroy."                       9"Flow-template table which contains flow-template entry."                       -"Configuration information of flow-template."                       "Index of flow template."                       "protocol-type of IP packet."                       "The flag of Tcp paceket. "                       "The port of source."                       "The port of destination."                       "The type of Icmp."                       "The code of Icmp."                       "The flag of Fragment. "                       "Dscp of IP packet."                       "The Precedence of Ip packet. "                       "Tos of IP packet."                       "The Ip of source."                       "The mask of source-Ip."                       "The Ip of destination."                       "The mask of destination-Ip."                       "Protocol type of Ethernet."                       "The Mac of source."                       "The mask of source-Mac."                       "The mac of destination."                       "The mask of destination-Mac."                       "Vpn"                       D"RowStatus, now support three status: createAndGo, active, destroy."                       "Source VLAN ID."                       "802.1P priority."                       "The table of flow-template."                        "Enable entry of flow-template."                       "ifIndex of port."                       
"Vlan ID."                       "The index of Flowtemp table."                       ="The traffic-shape table which contains traffic-shape entry."                       -"Configuration information of traffic-shape."                       "IfIdex of port."                       $"ID of queue which would be shaped."                       "The max rate."                       "The size of burst."                       "The limit of buffer."                       D"RowStatus, now support three status: createAndGo, active, destroy."                       7"The port-queue table which contains port-queue entry."                       *"Configuration information of port-queue."                       "ifIndex of port."                       "ID of port-queue."                       "The priority of Wrr."                       "The weight of this queue."                       5"The drop-mode table which contains drop-mode entry."                       -"Configuration information of the drop-mode."                       "ifIndex of port."                       "Mode."                       "The index of Wred table."                       +"The Wred table which contains wred Entry."                       $"Configuration information of Wred."                       "Index of wred."                       "Queue ID."                       "The min threshold of Green."                       "The max threshold of Greem."                       "The max prob of Green."                       "The min threshold of Yellow."                       "The max threshold of Yellow."                       "The Prob threshold of Yellow."                       "The min threshold of Red."                       "The max threshold of Red."                       "The max prob of Red."                       "Exponent."                       ."Table of map of the COS to local-precedence."                       B"Configuration information of map of the COS to local precedence."                       "Index of the map."                       "Value of local precedence."                       -"The table of map of COS to drop-precedence."                       E"Configuration information of the map of the COS to drop-precedence."                       "Index of the map."                       "Value of drop-precedence."                       "Table of dscp map."                       ("Configuration information of Dscp map."                        "Conformable level of Dscp-map."                       "Index of dscp."                       "Value of Dscp."                       "Exp value."                       "COS value."                       "The precedence of local."                       "The precedence of Drop."                       "The table of Exp-map"                       '"Configuration information of Exp-map."                       "Conformable level of Exp-map."                       "Index of Exp."                       "Dscp value."                       "Exp value."                       "COS Value."                       "The precedence of local."                       "The precedence of Drop."                       $"The table of local-precedence map."                       3"Configuraion information of local-precedence map."                       ,"Conformable level of local-precedence map."                       "Index of local-precedence."                       "COS value."                       "The table of PortWred."                       )"Configuration information of port Wred."                       "ifIndex of port."                       "ID of port-Wred queue."                       "Queue length."                       "Probability."                       "The table of MirrorGroup."                       +"Configuration information of MirrorGroup."                       
"GroupID."                       "GroupType."                       "MirroringGroup status."                       D"RowStatus, Now support three status: createAndGo, active, destroy."                       ,"MirroringGroup mirroring-port information."                       ,"MirroringGroup mirroring-port information."                      �"Inbound-Mirror ifIndex(for port) and slot number(for board) list.

      Example A describes the relation between values of
      hwMirroringGroupMirrorInboundIfIndexList and hwMirroringGroupMirrorInTypeList.

      Example A:
      hwMirroringGroupMirrorInboundIfIndexList: '00000002 0C000022 00000007'
      hwMirroringGroupMirrorInTypeList:         '00000002 00000001 00000002'

      Every four octets represent an integer value.
      The first four octets of them should be same. Here the value '00000002'
      indicates there are two inbound mirror sources.
      The following every four octets of hwMirroringGroupMirrorInboundIfIndexList
      indicate an ifIndex or a slot number of mirror source. For '0C000022' and
      '00000007' in the value of hwMirroringGroupMirrorInboundIfIndexList above,
      the corresponding value of hwMirroringGroupMirrorInTypeList is '00000001'
      and '00000002'(00000001 means the mirror source is port, 00000002 means the 
      mirror source is board, the meaning reference the object HwMirrorOrMonitorType), 
      then '0C000022' indicates an ifIndex value 201326626(decimal), and '00000007' 
      indicates a slot with number 7(decimal).

      Values with different types(port/board) should be set in separate set operations.
      If one value with port type and one value with board type are set with same
      hwMirroringGroupID separately, the result of get operation for that entry
      will be like the example A above.
      
      If hwMirroringGroupMirrorInTypeList is not supported, the first four octets
      of hwMirroringGroupMirrorInboundIfIndexList also indicates the number of mirror
      source, but the following octets are values for ifIndex(port type).

      hwMirroringGroupMirrorOutboundIfIndexList and hwMirroringGroupMirrorOutTypeList
      are a pair and have the same relations like hwMirroringGroupMirrorInboundIfIndexList
      and hwMirroringGroupMirrorInTypeList pair.
      "                       �"Outbound-Mirror ifIndex and slot number list.
      Please refer to the description of hwMirroringGroupMirrorInboundIfIndexList."                       D"RowStatus, now support three status: createAndGo, active, destroy."                       o"Inbound-Mirror type list.
      Please refer to the description of hwMirroringGroupMirrorInboundIfIndexList."                       p"Outbound-Mirror type list.
      Please refer to the description of hwMirroringGroupMirrorInboundIfIndexList."                       *"MirroringGroup monitor-port information."                       *"MirroringGroup monitor-port information."                      "If the monitor destination is port, the value means the ifIndex of this port.
      If the monitor destination is board, the value means the slot number of the
      board. Whether the value means ifIndex or slot number references the object
      hwMirroringGroupMonitorType."                       D"RowStatus, now support three status: createAndGo, active, destroy."                       �"Specify whether the monitor destination is port or board. If this object is
      not supported, then the value of hwMirroringGroupMonitorIfIndex means ifIndex."                       ,"MirroringGroup reflector-port information."                       ,"MirroringGroup reflector-port information."                       ."Only valid for remote-source MirroringGroup."                       D"RowStatus, now support three status: createAndGo, active, destroy."                       )"MirroringGroup rprobe-vlan information."                       )"MirroringGroup rprobe-vlan information."                       |"Remote-Probe vlanID.
      0 is invalid value.
      Only valid for remote-source and remote-destination MirroringGroup."                       D"RowStatus, now support three status: createAndGo, active, destroy."                       !"MirroringGroup MAC information."                       !"MirroringGroup MAC information."                       ,"The sequence MAC number of the same group."                       ("The MAC address of the MirroringGroup."                       "The vlan ID of MAC address ."                       $"The status of this conceptual row."                       ""MirroringGroup Vlan Information."                       ""MirroringGroup Vlan Information."                       -"The sequence vlan number of the same group."                        "The vlan ID of MirroringGroup."                       '"The vlan direction of MirroringGroup."                       $"The status of this conceptual row."                       "Port trust information."                       "Port trust information."                       5"ifIndex of the port which port trust is configured."                       "Trust type of port trust."                       "Overcast type of port trust."                       e"This object is used to reset port trust to default value.
          Read operation is meaningless."                       "Remark vlan ID information."                       "Remark vlan ID information."                       "Action identifier, acl index."                       "Action identifier, ifIndex."                       "Action identifier, vlan ID."                       ."Action identifier, direction of data stream."                       "The number of the user acl."                       "The subitem of the user acl."                       "The num of the IP acl."                       "The subitem of the IP acl."                       "The num of the link acl."                       "The subitem of the link acl."                       "Remark vlan ID."                       &"Packet type of the remarked vlan ID."                       %"The status of this conceptual row. "                       "COS to DSCP map information."                       "COS to DSCP map information."                       "COS index of COS to DSCP map."                        "DSCP value of COS to DSCP map."                       j"This object is used to reset COS to DSCP map to default value.
          Read operation is meaningless."                       +"DSCP to Local-precedence map information."                       +"DSCP to Local-precedence map information."                       -"DSCP Index of DSCP to Local-precedence map."                       9"Local-precedence value of DSCP to Local-precedence map."                       x"This object is used to reset DSCP to Local-precedence map to default value.
           Read operation is meaningless."                       *"DSCP to Drop-precedence map information."                       *"DSCP to Drop-precedence map information."                       ,"DSCP Index of DSCP to Drop-precedence map."                       7"Drop-precedence value of DSCP to Drop-precedence map."                       v"This object is used to reset DSCP to Drop-precedence map to default value.
          Read operation is meaningless."                       "DSCP to COS map information."                       "DSCP to COS map information."                        "DSCP index of DSCP to COS map."                       "COS value of DSCP to COS map."                       j"This object is used to reset DSCP to COS map to default value.
          Read operation is meaningless."                       "DSCP to DSCP map information."                       "DSCP to DSCP map information."                       !"DSCP index of DSCP to DSCP map."                       !"DSCP value of DSCP to DSCP map."                       k"This object is used to reset DSCP to DSCP map to default value.
          Read operation is meaningless."                                  