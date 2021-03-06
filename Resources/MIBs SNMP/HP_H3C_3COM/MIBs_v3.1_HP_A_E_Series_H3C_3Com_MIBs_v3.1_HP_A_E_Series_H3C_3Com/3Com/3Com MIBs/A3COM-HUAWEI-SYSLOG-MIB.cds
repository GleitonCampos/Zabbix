'-- ==========================================================================
-- Copyright (c) 2004-2010 Hangzhou H3C Tech. Co., Ltd. All rights reserved.
--
-- Description: Syslog MIB
-- Reference: RFC3164
-- Version: V1.2
-- History:
--   V1.0 Initial version 2005-08-20 by wangrui
--   V1.1 added h3cSyslogLoghostIpaddressPort by jinyi
--   V1.2 2010-06-09 added h3cSyslogLogGlobalLevel by haoyan
--                   added h3cSyslogLoghostTAddress by jinyi
-- ==========================================================================
   $"Specify severity level of message."               4"Specify loghost facility which generates messages."              e"Specify operation types on time stamp of message.
        none: no time stamp information in message.
        date: the time stamp type of message is date.
        boot: the time stamp type of message is the time from
            uptime of system.
        dateWithoutYear: the time stamp type of message is date
            without year information."                                                                                     L"All the configuration of the syslog can be managed
        by syslog Mib." �"Platform Team Hangzhou H3C Tech. Co., Ltd.
         Hai-Dian District Beijing P.R. China
         http://www.h3c.com
         Zip:100085" "201006091050Z" *"The initial revision of this MIB module."                       W"The state of syslog: true(1):enable.
                              false(2):disable."                       K"The object shows the maximum number of rows in
         h3cLoghostTable."                       U"The object shows the maximum number of channels in
         h3cSyslogChannelTable."                       K"The maximum number of messages that can be stored
         in logbuffer."                       L"The maximum number of messages that can be stored
         in trapbuffer."                            "The channel number of console."                            "The channel number of monitor."                           "The channel number of snmp."                           ""The channel number of logbuffer."                       "The capacity of logbuffer which can be customized by users.
         The valid range is from 0 to h3cSyslogMaxLogbufferSize."                       "The table of logbuffer."                        "The logbuffer entry of syslog."                       "The index of this table."                       1"The number of log messages stored in logbuffer."                       6"The number of log messages overwritten in logbuffer."                       2"The number of log messages dropped in logbuffer."                           #"The channel number of trapbuffer."                       �"The capacity of the trapbuffer which can be customized by users.
         The valid range is from 0 to h3cSyslogMaxTrapbufferSize."                       "The table of trapbuffer."                       !"The trapbuffer entry of syslog."                       "The index of this table."                       3"The number of trap messages stored in trapbuffer."                       8"The number of trap messages overwritten in trapbuffer."                       4"The number of trap messages dropped in trapbuffer."                           l"The source interface which sends message to loghost.
         All loghosts use the same source interface."                       -"Time stamp type of message sent to loghost."                       "The table of loghost."                       "The loghost entry of syslog."                       "The index of this table."                        "The channel number of loghost."                       !"The ip address type of loghost."                       "The ip address of loghost."                       �"The operations staff can selectively filter the messages
         with priority which consists of facility that generates
         the message and severity of the message.
         "                       2"The language of the message sent to the loghost."                       !"The status of this table entry."                       "The loghost server port."                       '"The loghost server transport address."                           "A table of syslog channel."                       "The channel entry of syslog."                       "The index of this table."                       T"The name of channel.
         The channel name must be different from each other."                           "A table of syslog module."                       "The module entry of syslog."                       "The index of this table."                       "The name of module."                           !"Time stamp type of log message."                       "A table of syslog module."                       "The log entry of syslog."                       "The switch state of log."                       "The level of log message."                       !"The status of this table entry."                       ""The global level of log message."                           ""Time stamp type of trap message."                       "A table of syslog module."                       "The trap entry of syslog."                       "The switch state of trap."                       "The level of trap message."                       !"The status of this table entry."                           #"Time stamp type of debug message."                       "A table of syslog module."                       "The debug entry of syslog."                       "The switch state of debug."                       "The level of debug message."                       !"The status of this table entry."                              