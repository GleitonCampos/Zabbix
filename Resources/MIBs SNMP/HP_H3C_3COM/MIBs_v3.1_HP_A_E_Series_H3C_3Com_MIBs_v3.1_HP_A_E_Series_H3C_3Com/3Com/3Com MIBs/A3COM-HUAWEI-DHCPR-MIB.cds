}-- =================================================================
-- Copyright (C) 2003 by  HUAWEI TECHNOLOGIES. All rights reserved.
--
-- Description: Huawei DHCP Relay MIB
-- Reference: HUAWEI Enterprise MIB
-- Version: V1.0
-- History:
--     initial version 2003-03-06
--     V1.0 6th Mar 2004
-- =================================================================
                     :"This MIB describes objects used for managing DHCP relay."" R&D BeiJing, Huawei Technologies co.,Ltd.
				Huawei Bld.,NO.3 Xinxi Rd., 
				Shang-Di Information Industry Base,
				Hai-Dian District Beijing P.R. China
				Zip:100085 
				Http://www.huawei.com                                       
				E-mail:support@huawei.com " "200302120000Z" *"The initial revision of this MIB module."        -- March 01, 2003 at 00:00 GMT
           5"A table for configuring ip addresses for DHCP relay"                       <"An entry for configuring ip addresses for DHCP 
				relay"                       "Ip address for DHCP relay"                       F"RowStatus. Three actions are used: active,
				createAndGo, destroy"                       ="A table for selecting allocation mode of dhcp 
				service"                       C"An entry for configuring the allocation mode of
				DHCP service"                       !"Allocation mode of DHCP service"                       !"Status of DHCP relay cycle mode"                       B"The total number of the bad packets received by 
				DHCP relay"                       V"The total number of the packets received from
				DHCP servers by DHCP relay module"                       V"The total number of the packets transmited to
				DHCP servers by DHCP relay module"                       O"The total number of the packets received form DHCP
				clients by DHCP relay"                       X"The total number of the brodcast packets transmited
				to DHCP clients by DHCP relay"                       W"The total number of the unicast packets received
				form DHCP clients by DHCP relay"                       X"The total number of the brodcast packets received
				form DHCP clients by DHCP relay"                       J"The total number of the DHCP Discover packets handled
				by DHCP relay"                       I"The total number of the DHCP Request packets handled
				by DHCP relay"                       I"The total number of the DHCP Decline packets handled
				by DHCP relay"                       I"The total number of the DHCP Release packets handled
				by DHCP relay"                       H"The total number of the DHCP Inform packets handled
				by DHCP relay"                       H"The total number of the DHCP Offer packets handled
				by DHCP server"                       E"The total number of the DHCP Ack packets handled
				by DHCP relay"                       E"The total number of the DHCP Nak packets handled
				by DHCP relay"                       N"Reset the above statictics information of handled
				packets by DHCP relay"                                   J"The basic collection of objects providing management of
				DHCP realy."                                