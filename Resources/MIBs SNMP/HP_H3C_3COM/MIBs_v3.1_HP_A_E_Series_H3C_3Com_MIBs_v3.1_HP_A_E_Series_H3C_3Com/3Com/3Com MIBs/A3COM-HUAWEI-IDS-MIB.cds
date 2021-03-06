k-- ==================================================================
-- Copyright (C) 2005 by HUAWEI-3COM TECHNOLOGIES.  All rights reserved.
--
-- Description:  HUAWEI-3COM IDS Management MIB
-- Reference:
-- Version: V1.0
-- History:
--     V1.00 2005/08/18 Created by Wang Hanlin
-- ==================================================================
             �"This MIB describes IDS private information.
                IDS(Instruction Detecting System) is used to detect intruder activity. " 2"R&D Hangzhou, Huawei-3com Technologies Co., Ltd."                       ""The length of IP fragment queue."                       %"The length of status session table."                       "The type of IP Address."                       "IP Address."                       "User name."                       ,"Login type, including telnet, ssh and web."                       �"Upgrade type, including programme(system image),
                crb(custom rule base, one kind of configuration file),
                vrb(vendor rule base, one kind of configuration file)."                       $"CRL(Certificate Revoke List) name."                       "Certificate name."                       X"The rule ID which is a unique identifier for a specified
                detect rule."                       0"A unique number used to identify an interface."                       "The file name."                       ,"The line number in the configuration file."                       �"The information of the notification. Although the format and
               content of this object are device specific, they should be
               defined uniformly in the device."                              "This notification will be generated when the IP fragment
                queue is full.  The h3cIDSTrapIPFragmentQueueLen describes
                the length of current fragment queue.
                The h3cIDSTrapReasonForError describes reason for error."                "This notification will be generated when the status session
                table is full.  The h3cIDSTrapStatSessionTabLen describes the
                length of current status session table.
                The h3cIDSTrapReasonForError describes reason for error."                Y"This notification will be generated when failing to parse
                the rules for detecting.  The h3cIDSTrapDetectRuleID object describes
                rule ID. The h3cIDSTrapEngineID object identifies an interface
                the rule applies to. The h3cIDSTrapReasonForError object
                describes reason for error."                |"This notification will be generated when connecting with
                database server fails. The h3cIDSTrapIPAddressType object describes
                the IP address type of database server.  The h3cIDSTrapIPAddress
                object describes the IP address of database server. The
                h3cIDSTrapReasonForError describes reason of connecting failure."                "This notification will be generated when IDS device detects
                that CRL is out of date.  The h3cIDSTrapCRLName object
                describes the CRL(Certificate Revoke List) name.
                The h3cIDSTrapReasonForError object describes reason for error."                "This notification will be generated when IDS device detects
                that certificate is overdue.  The h3cIDSTrapCertName object
                describes the certificate name.  The h3cIDSTrapReasonForError
                object describes reason for error."                U"This notification will be generated when the login
                failure times of a user over a certain number.
                The h3cIDSTrapUserName object describes the user name
                when logging in.  The h3cIDSTrapIPAddressType object
                describes the IP address type of client. The
                h3cIDSTrapIPAddress object describes the IP address of
                client.  The h3cIDSTrapLoginType object describes
                login type, including: telnet, ssh, web.
                The h3cIDSTrapReasonForError object describes reason for error."                "This notification will be generated when upgrading fails.
                The h3cIDSTrapUpgradeType object describes upgrade type,
                including: programme, vrb. The h3cIDSTrapReasonForError
                object describes reason for error."                 �"This notification will be generated when accessing file
                fails.  The h3cIDSTrapFileName object describes the name
                of file accessed. The h3cIDSTrapReasonForError object describes
                reason for error."                 �"This notification will be generated when memory used by
                constructing the arithmetic to seek content is lacking.
                The h3cIDSTrapReasonForError object describes reason for error."                 �"This notification will be generated when reading or
                writing SSRAM of CIE card fails. The h3cIDSTrapReasonForError
                object describes reason for error."                 �"This notification will be generated when packets processed
                is in disorder. The h3cIDSTrapReasonForError object describes
                reason for error."                L"When devices startup and load the configuration file,
                if format error is found, this notification will be generated.
                The h3cIDSTrapFileName object describes the name of
                configuration file. The h3cIDSTrapCfgLineInFile object
                describes the line number in the file."                        