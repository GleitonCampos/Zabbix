�-- =================================================================
-- Copyright (C) 1996-2002 by  HUAWEI TECHNOLOGIES. All rights reserved.
--
-- Description:H3C QOS Profile MIB
-- Version: V2.1
-- History:
--   V1.0(Initial version) 6th Jul 2004
--	 V2.0 2004-10-12 updated by gaolong
--        Import Integer32.
--        Modify h3cQoSProfile to h3cQosProfile
--        Replace INTEGER with Integer32.
--        Change value of h3cQoSTrafPrioPolicedServiceType from underscores to hyphens.
--        Fix a default value error of h3cQoSTrafPrioPolicedServiceType.
--        Add MODULE clause for h3cQoSProfMibCompliance.
--   v2.1 2004-12-23 changed by zhuangyu
--        1 Add an enumeration in h3cQoSTrafLmtConformActionType
--        2 Add h3cQoSTrafLmtConformCos and h3cQoSTrafLmtConformDscp in h3cQoSTrafficLimitTable
--   
-- =================================================================
   "Description."                                                                     D"The private mib file includes the general information QoS profile." �"Platform Team Beijing Institute Huawei-3com Tech, Inc.
				Http://www.huawei-3com.com                                       
				E-mail:support@huawei-3com.com "                       7"QoS profile table is used to config the qos profiles."                       " "                       "QoS profile table index."                       "QoS profile name."                       +"Total number of actions of a QoS profile."                       ?"RowStatus,Now support three state:CreateAndGo,Active,Destroy."                          H"Traffic limit table is used to set the average rate or peak rate of the flow.
				IP and Link ACL rules can be applied simultaneously,
				IP and User based ACL rules can not be applied simultaneously,
				Link and User based ACL rules can not be applied simultaneously.
				Unused ones is represented with default values."                       " "                       E"The index of QoS profile which the traffic-limit action belongs to."                       $"The index of traffic-limit action."                       ("The direction of traffic-limit action."                       %"The number of user-based acl group."                       %"The subitem of user-based acl rule."                       #"The number of Ip-based acl group."                       #"The subitem of IP-based acl rule."                       $"The number of Link-based acl group"                       %"The subitem of Link-based acl rule."                       �"Target rate:Mbps
				Some products only support Mbps,but others support Kbps,so
				Kbps and Mbps should be supportted mutually exclusively on the same
				product."                       �"Target rate:Kbps.
				Some products only support Kbps,but others support Mbps,so
				Kbps and Mbps should be supportted mutually exclusively on the same
				product."                       "Peak rate"                       -"Committed Information Rate.
				unit:kbps."                       '"Committed Burst Size.
				unit:byte."                       $"Excess Burst Size.
				unit:byte."                       ("Peak Information Rate.
				unit:kbps."                       )"The local precedence of conformed flow."                       $"The action type of conformed flow."                       ("The action type of non-conformed flow."                      "The remarked DSCP value of non-conformed flow.
				DSCP 255 is used as default value and for get/get-next operation of this
				node. If the user does not set exceeding action as remarking DSCP, then value 255
				is returned for get/get-next operation.
				"                      "The remarked COS value of non-conformed flow.
				COS 255 is used as default value and for get/get-next operation of this
				node. If the user does not set exceeding action as remarking COS, then value 255
				is returned for get/get-next operation.
				"                       ?"RowStatus,Now support three state:CreateAndGo,Active,Destroy."                      �"If the user chooses remark-cos value of the h3cQoSTrafLmtConformActionType,
				this object can be used to set the conform cos value.
				There are some enumerations as follows:
				best-effort         Specify best-effort priority(0)
				background          Specify background priority(1)
				spare               Specify spare priority(2)
				excellent-effort    Specify excellent-effort priority(3)
				controlled-load     Specify controlled-load priority(4)
				video               Specify video priority(5)
				voice               Specify voice priority(6)
				network-management  Specify network-management priority(7)
				255 indicates invalid value. "                      H"If the user chooses remark-dscp value of the h3cQoSTrafLmtConformActionType,
				this object can be used to set the conform dscp value.
				There are some enumerations as follows:
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
				ef      Specify Expedited Forwarding service(46)
				255 indicates invalid value. "                      �"Traffic priority table is used to remark the IP-precedence, DSCP or COS priority of packets.
				IP and Link ACL rules can be applied simultaneously,
				IP and User based ACL rules can not be applied simultaneously,
				Link and User based ACL rules can not be applied simultaneously.
				Unused ones is represented with default values.
				QOS policed service from DSCP mapping table is pre-defined in the hwDscpMapTable in the A3COM-HUAWEI-LswQos-MIB.
				Policed service can decide what kind of QOS service the flow should get by the DSCP vlaue in the packets.
				Policed service includes remarking new DSCP,new EXP,new 802.1p priority,new local precedence and new drop priority.				
				"                       " "                       H"The index of QoS profile which the traffic-priority action belongs to."                       '"The index of traffic-priority action."                       +"The direction of traffic-priority action."                       %"The number of user-based acl group."                       %"The subitem of user-based acl rule."                       #"The number of Ip-based acl group."                       #"The subitem of IP-based acl rule."                       $"The number of Link-based acl group"                       %"The subitem of Link-based acl rule."                       �"Set new DSCP value of specifed flow.
				DSCP 255 is used as default value and for get/get-next operation of this
				node. If the user does not set action as remarking DSCP, then value 255
				is returned for get/get-next operation.
				"                      "Set Ip precedence value of specifed flow.
				Ip precedence 255 is used as default value and for get/get-next operation of this
				node. If the user does not set action as remarking Ip precedence, then value 255
				is returned for get/get-next operation.
				"                      "Set Ip precedence according to vlan priority.
				False(2)is used as default value and for get/get-next operation of this
				node. If the user does not set action as remarking Ip precedence from COS, then value 2
				is returned for get/get-next operation.
				"                       �"Set vlan priority of specifed flow.
				COS 255 is used as default value and for get/get-next operation of this
				node. If the user does not set action as remarking COS, then value 255
				is returned for get/get-next operation.
				"                      "Set vlan priority according to IP precedence.
				False(2)is used as default value and for get/get-next operation of this
				node. If the user does not set action as remarking COS from Ip precedence, then value 2
				is returned for get/get-next operation.
				"                      "Set local precedence of specifed flow.
				Local precedence 255 is used as default value and for get/get-next operation of this
				node. If the user does not set action as remarking local precedence, then value 255
				is returned for get/get-next operation.
				"                      �"The service type of policed Priority.
				Policed Service is not allowed to be set with remarking DSCP,IpPrecedence,IpPrecedenceFromCOS,COS,COSFromIpPrecedence and LocalPrecedence action simultaneously on the same product.
				Policed service is user-predefined qos policy parameters.
				trust-dscp(2) means to decide new police service parameters by the DSCP value in the packets.
				new-dscp(3) means to decide new police service parameters by the new DSCP value set by the user.
				And a DSCP mapping table should be pre-defined in the hwDscpMapTable in the A3COM-HUAWEI-LswQos-MIB.
				Untrusted(4) means to set all the new DSCP,EXP,COS,Local precedence and Drop priority by the user.
				
				"                       &"The service Dscp of policed Priority"                       %"The service Exp of policed Priority"                       %"The service cos of policed Priority"                       +"The service local pre of policed Priority"                       0"The service drop priority of proliced Priority"                       ?"RowStatus,Now support three state:CreateAndGo,Active,Destroy."                      �"Traffic filter table is used to deny or permit packets.
				IP and Link ACL rules can be applied simultaneously,
				IP and User based ACL rules can not be applied simultaneously,
				Link and User based ACL rules can not be applied simultaneously.
				Unused ones is represented with default values.
				To deny or permit packets,the ACL rules should be defined in h3cAcl table.
				The 'deny' or 'permit' action should be defined with ACL rules.
				In this table,a predefined ACL rules can be referenced in a specified QOS profile group.
				'Direction' means the ACL rules can be applied to the inbound or outbound packets.
				
				"                       " "                       F"The index of QoS profile which the traffic-filter action belongs to."                       %"The index of traffic-filter action."                       )"The direction of traffic-filter action."                       %"The number of user-based acl group."                       %"The subitem of user-based acl rule."                       #"The number of Ip-based acl group."                       #"The subitem of IP-based acl rule."                       $"The number of Link-based acl group"                       %"The subitem of Link-based acl rule."                       ?"RowStatus,Now support three state:CreateAndGo,Active,Destroy."                           �"Port mapping table is used to apply the qos profile to the port.
				If a qos profile is applied to the port, 
				then the port will have an entry in the table."                       " "                       B"The ifindex which the specified QoS profile group is applied to."                       +"The index of specified QoS profile group."                       ?"RowStatus,Now support three state:CreateAndGo,Active,Destroy."                      �"Port mapping mode table is used to set mapping mode of the port.
				When a qos profile is applied to a port, the profile can have two working ways:
				1)The profile is the same for all the users connected to the port;
				2)The profile can be different for different users connected to the port;
				Port-based mode means the profile is the same for all the users.
				User-based mode means the profile is different for different users.
				Default value is port-based."                       " "                       ?"The ifindex which the QoS profile mapping mode is applied to."                       0"The QoS profile mapping mode of specifed port."                      �"Dynamic port mapping table is used to get user' port,MAC address,IP address,VLAN ID and user-specified qos profiles.
				Network managers can allocate different QOS profile groups to different users.
				Once the user is on line, then the user-specified QOS profiles will be dynamically applied to the port the user connects.
				Each port can have different groups of users simultaneously connected.
				Each group of users can have assiociation with multiple QOS profiles simultaneously.
				So the user's port,MAC address,IP address and VLAN ID will replace the source information in the ACL rules refered in the QOS profiles.
				Once the user is off line, then the user-specified QOS profiles will be dynamically deleted from the port the user connects."                       " "                       /"if index of the port user profile is applied."                       "User sourc MAC address."                       "User name."                       "User IP address"                       "User VLAN ID."                       "User profile name."                           r"An h3cQoSProfPortMappingError notification is generated
				when a qos profile fails to be applied on the port."                         /"The compliance statement for QoS Profile MIB."                   '"Included table:
				h3cQoSProfTable."                 z"Included table:
				1)h3cQoSTrafficLimitTable.
				2)h3cQoSTrafficPriorityTable.
				3)h3cQoSTrafficFilterTable
				"                 �"Included tables:
				1)h3cQoSProfPortMappingTable.
				2)h3cQoSProfPortMappingModeTable.
				3)h3cQoSProfDynPortMappingTable.				
				"                 ,"Included:
				h3cQoSProfPortMappingTraps."                            