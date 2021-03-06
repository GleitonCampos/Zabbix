�-- =========================================================================
-- Copyright (C) 2004 by Huawei 3Com Technologies. All rights reserved.
--
-- Description: Implement the parameters configuration and information browser
--              of the SIP module.
-- Reference:
-- Version: V1.0
-- History:
-- V1.0 2005-03-22 Initial version by Yang Youku
-- =========================================================================
                                                t"This MIB contains objects to manage the SIP client configuration.
                 Session Initiation Protocol (SIP) is an application layer control
                 protocol that can establish, modify, and terminate multimedia
                 sessions such as IP phone calls, multimedia distribution, and
                 multimedia conferences.
                 " �"Platform Team Huawei 3Com Technologies co., Ltd.
                Hai-Dian District Beijing P.R. China
                http://www.huawei-3com.com
                Zip:100085
                " "200503150000Z" *"The initial revision of this MIB module."                       �"The unique identification of a SIP gateway.
            This value couldn't be modified unless
            h3cSIPRegisterEnable is 'off'."                       �"The display type of a SIP gateway password. By default,
            this object should have the value simple(1).
            This value couldn't be modified unless
            h3cSIPRegisterEnable is 'off'."                       m"A SIP gateway password.  This value couldn't be
            modified unless h3cSIPRegisterEnable is 'off'."                       �"The source IP address type of the local peer acting
            as UA (User Agent).
            This value couldn't be modified unless
            h3cSIPRegisterEnable is 'off'."                       �"The source IP address of the local peer acting
            as UA (User Agent).
            This value couldn't be modified unless
            h3cSIPRegisterEnable is 'off'."                      �"The object describes the method to send the type of telephone number.
             gatewayAll       The register mode is gateway mode and the register
                              message contains all the POTS numbers.
             gatewaySingle    The register mode is gateway mode and every register
                              message contains only one POTS number.
             phoneNumber      The register mode is phone mode.

             Note: Please configure the object hwSIPRegisterPhoneNumber
                   after hwSIPRegisterMode has been set to phoneNumber.
                   This value couldn't be modified unless
                   h3cSIPRegisterEnable is 'off'."                      I"The object describes the telephone number which is going to be 
            registered.
            Note: Please set value of the object h3cIPRegisterMode to 
                  phoneNumber before configure this node.
                  This value couldn't be modified unless
                  h3cSIPRegisterEnable is 'off'."                       �"The object describes register enable or not, default is off.
            Only if h3cSIPServerConfigTable is configured well, then this
            node could be set 'on(1)' successfully."                       B"Indicates whether the SIP module is permitted to generate traps."                       �"The object is used to clear the statistic information of a SIP 
            gateway.
            Note: this object only supports set operation. "                       1"A list of the SIP server configuration entries."                       r"A SIP server configuration entry contains some associated 
            information, e.g. IP address, port, etc."                       -"The source IP address type of a SIP server."                       !"The IP address of a SIP server."                       "The port of a SIP server."                       "The type of SIP Server."                       G"The accept type of SIP calls. By default, the object value is all(2)."                      *"This object is used to create, delete or modify a row in this table.
            To create a new row, hwSIPServerType must be specified.
            Note: h3cSIPRegisterEnable must be specifed 'off' before
            modifing or destroying an existing row or creating a new row.
            "                       ,"A list of SIP message statistics entries. "                       B"A collection of statistics kept for a SIP
            message. "                       "The index of a SIP message."                       "The name of a SIP message."                       6"The number of messages which a SIP gateway has sent."                       A"The number of successful messages which a SIP gateway has sent."                       :"The number of messages which a SIP gateway has received."                       E"The number of successful messages which a SIP gateway has received."                       <"A list of the SIP message response code statistic entries."                       '"The information of SIP response code."                       +"The index of a SIP message response code."                        "The SIP message response code."                       C"The number of SIP response code which a SIP gateway has received."                       ?"The number of SIP response code which a SIP gateway has sent."                           G"The object describes the reason that a SIP gateway fails to register."                       H"The object denotes the method of a request that fails to authenticate."                           ="The trap is generated when a SIP gateway fails to register."                 ^"The trap is generated when a request with its credential fail to 
            authenticate."                 `"The trap is generated when a switch happens between master and 
            slave SIP server."                