�-- ==========================================================================
-- Copyright (C) 2004 by Huawei 3Com Technologies. All rights reserved.
--
-- Description: The purpose of this MIB file is to provide the the definition 
--              of GK(Gate Keeper) client configuration.
-- Reference:
-- Version: V1.0
-- History:
-- V1.0 2005-03-22 Initial version, created by Yang Youku
-- ==========================================================================
                 ^"This MIB file is to provide the the definition of GK 
                client configuration." "PLAT Team Huawei 3Com Technologies co.,Ltd.                                
                Shang-Di Information Industry Base,
                Hai-Dian District Beijing P.R. China
                http://www.huawei-3com.com
                Zip:100085" "200503150000Z" '"The initial version of this MIB file."                  )"This object indicates whether the GK(Gate Keeper) client 
                function of this gateaway is enabled. 
                The value couldn't be set to enable unless h3cVoH323GWID,
                h3cVoGwIPAddress, h3cVoH323GKIPAddress, and h3cVoH323GKID 
                has been set."                       �"This object indicates the IP address type of the the interface 
                through which the gateway is connected to the GK(Gate Keeper).
                The value couldn't be modified unless h3cVoRasOn is 'disable'."                       �"This object indicates the IP address of the interface 
                through which the gateway is connected to the GK(Gate Keeper).
                The value couldn't be modified unless h3cVoRasOn is 'disable'.
                "                       �"This object indicates the ID of this H323 gateway.
                The value couldn't be modified unless h3cVoRasOn is 
                'disable'."                       �"This object indicates the ID of the GK(Gate Keeper). The value 
                couldn't be modified unless h3cVoRasOn is 'disable'. "                       �"This object indicates the IP address of the GK(Gate Keeper). The 
                value couldn't be modified unless h3cVoRasOn is 'disable'."                       �"This object indicates the IP address of the GK(Gate Keeper). The 
                value couldn't be modified unless h3cVoRasOn is 'disable'."                       �"This object indicates the RAS port of GK(Gate Keeper). The value 
                couldn't be modified unless h3cVoRasOn is 'disable'."                       �"This object indicates the ID of the slave GK(Gate Keeper).
                The value couldn't be modified unless h3cVoRasOn is 'disable'."                       �"This object indicates the IP address of the slave GK(Gate Keeper).
                The value couldn't be modified unless h3cVoRasOn is 'disable'."                       �"This object indicates the IP address of the slave GK(Gate Keeper).
                The value couldn't be modified unless h3cVoRasOn is 'disable'."                       �"This object indicates the RAS communication port of slave 
                GK(Gate Keeper).
                The value couldn't be modified unless h3cVoRasOn is 'disable'."                       �"This object indicates whether security call is enabled.
                The value couldn't be modified unless h3cVoRasOn is 'disable'."                       M"This object indicates the type of security call 
                password."                       �"This object indicates the security call password. This value 
                couldn't be modified unless h3cVoRasOn is 'disable'."                      