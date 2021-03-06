�-- =================================================================
-- Copyright (c) 2004-2010 Hangzhou H3C Tech. Co., Ltd. All rights reserved.
--
-- Description:configuration management mib
-- Reference:
-- Version: V2.2
-- History:
--     Initial version 2002-12-20
--     V1.1 24th Feb 2004
--     module imported from A3COM-HUAWEI-OID-MIB which is the root MIB MODULE.
--     V1.2 14th May 2004
--     convert MIB object name from hwXXX to h3c, etc.
--     V1.3 18th Aug 2004
--     modified DESCRIPTION of 'h3cCfgLogFile' by jinyi.
--     V1.4 16th Sept 2004
--     modified DESCRIPTION of 'h3cCfgLogTerminalType' and 'h3cCfgLogTerminalNum' by wangyingxia
--     V1.5 9th Oct 2004
--     modified DESCRIPTION of 'h3cCfgRunModifiedLast' and 'h3cCfgManEventlog' by wangrui
--     V1.6 30th Nov 2004
--     modified DESCRIPTION of 'h3cCfgOperateCompletion' by wangrui
--     V1.7 11th Jan 2005
--     Updated by gaolong and weixinzhe for updating description
--     V1.8 26th Apr 2005
--     Updated by wangrui for added h3cCfgExecuteOperate and added ConfigOperationStateType
--     modified DESCRIPTION of 'h3cCfgLogSrcData', 'h3cCfgLogDesData' and 'h3cCfgLogTerminalType' by fuzhenyu
--     V1.9 6th Jun 2005
--     Add enum value in SYNTAX of h3cCfgOperateProtocol by jinyongfeng.
--     V2.0 27th sept 2005
--     modified DESCRIPTION of 'h3cCfgLogSrcCmd', 'h3cCfgRunModifiedLast' and 'h3cCfgLogDesData' by lisongfeng and wangrui
--     V2.1 2009-05-05 Add h3cCfgOperateServerPort, h3cCfgInvalidConfigFile by jinyi
--     V2.2 2009-12-20 Add h3cCfgOperFailReason, h3cCfgReset by shuaixiaojuan
-- =================================================================
  �"The status of the specified operation.

        opInProgress :
                specified operation is active

        opOperationSuccess :
                specified operation is supported and
                completed successfully

        opInvalidOperation :
                command invalid or command/protocol/device
                combination unsupported

        opInvalidProtocol :
                invalid protocol specified

        opInvalidSourceName :
                invalid source file name specified.


        opInvalidDestName :
                invalid target name  specified.


        opInvalidServerAddress :
                invalid server address specified

        opDeviceBusy :
                specified device is in use and locked by
                another process

        opDeviceOpenError :
                invalid device name

        opDeviceError :
                device read, write or erase error

        opDeviceNotProgrammable :
                device is read-only but a write or erase
                operation was specified

        opDeviceFull :
                device is filled to capacity

        opFileOpenError :
                invalid file name; file not found in partition

        opFileTransferError :
                file transfer was unsuccessful; network failure

        opFileChecksumError :
                file checksum in Flash failed

        opNoMemory :
                system running low on memory

        opAuthFail:
                invalid user name or password

        opTimeOut :
                file transfer was timeout

        opUnknownFailure :
                failure unknown

        opInvalidConfigFile:
                invalid configration file"              �"Specify operation types on configuration.
        Currently, following types of operation are provided:

        running2Startup(1):
            Update the saved configuration (startup) file used currently
            with the current configuration running in the system. This
            operation is equivalent to the [save] command from command line.
            If current startup configuration file does not exist, then the default
            startup configuration file is created to save the data and this
            becomes the current startup configuration file.

        startup2Running(2):
            Update the current configuration running in the system
            with the saved configuration (startup) file used currently.  The
            commands in the file are executed as if they had been entered via
            the command line.  If the current startup configuration file does not
            exist, the operation will fail with the error opFileOpenError(13).

        running2Net(3):
            Send the current configuration running in the system to the network
            using the specified file transfer protocol.

        net2Running(4):
            Update the current configuration running in the system with a remote
            file from the network using the specified file transfer protocol.
            The commands in the file are executed as if they had been entered via
            the command line.

        net2Startup(5):
            Download a remote file to the local system using the specified file
            transfer protocol and replace the saved configuration (startup) file
            used currently.  If current startup configurationfile does not exist,
            the default startup configuration file is created to save the data and
            this becomes the current startup configuration file.

        startup2Net(6):
            Send the saved configuration (startup) file used currently to the network using
            the specified file transfer protocol. If the current startup configuration
            file does not exist, the operation will fail with the error opFileOpenError(13).
        "                                                                             �"This MIB contains objects to manage the system configuration. It contains the
        model used to represent configuration data that exists elsewhere in the system and in peripheral devices.
        There are no constraints on this MIB." �"Platform Team Hangzhou H3C Tech. Co., Ltd.
         Hai-Dian District Beijing P.R. China
         http://www.h3c.com
         Zip:100085" "200905051938Z" "200212191938Z" "Add new objects." *"The initial revision of this MIB module."       -- May 5, 2009 at 19:36 GMT
               �"The object records the value of sysUpTime when the current configuration
         running in the system was last modified.

         The value will be changed immediately after system detects the current
         configuration has been changed."                      "The object records the value of sysUpTime when the current configuration
         running in the system was last saved.

         If the value of the object is smaller than
         h3cCfgRunModifiedLast, the current configuration has been
         modified but not saved."                       �"The object records the value of sysUpTime when the saved configuration
         used currently was last modified.  It may have been modified by a save of the
         current configuration running in the system or other methods such as copy."                       |"The object shows the maximum number of rows in
        h3cCfgLogTable. The value supported by the system is 10.
        "                       7"The total number of rows deleted from h3cCfgLogTable."                       @"Decide whether to backup the value of objects about h3cCfgLog."                       6"Table for logging configuration operation in device."                       "Information of the entry."                       &"Index of the table beginning from 1."                       :"Specify the sysUpTime when the config log was generated."                      !"Specify the source command which brought the log.
        Currently we provide the types of source:
        1.cmdLine(1):configure log instigated by command line.
        2.snmp(2):configure log instigated by snmp.
        3.other(3):configure log instigated by other source unknown."                      �"The source of the configuration data event.
        erase           erasing destination
        runningData     operational data alive
        commandSource   the command source itself
        startupData     what the system will use next reboot
        local           local NVRAM or flash
        netFtp          FTP network transfer
        hotPlugging     board is inserted or pulled out on line
        "                      �"The destination for the configuration data event.
        unknown          unknown
        runningData     operational data alive
        commandSource   the command source itself
        startupData     what the system will use next reboot
        local           local NVRAM or flash
        netFtp          FTP network transfer
        hotPlugging     board is inserted or pulled out on line"                      �"Specifies the terminal type.
        If h3cCfgLogSrcCmd is not 'cmdLine', use 'notApplicable'.

        The value list:
        notApplicable(1): no meaning at this time.
        unknown(2): unknown terminal type.
        console(3): console interface.
        terminal(4): generic terminal.
        virtual(5): virtual terminal such as telnet.
        auxiliary(6): auxiliary interface."                       "The name of logging user which is available when h3cCfgLogSrcCmd
        is 'cmdLine'.
        Other, a zero length string."                       W"Specifies the terminal number.
        If h3cCfgLogSrcCmd is not 'cmdLine', use '-1'"                       �"The location of logging user which is available when h3cCfgLogSrcCmd
        is 'cmdLine'.
        Other, a zero length string."                       �"The address from which a request comes when the value of h3cCfgLogSrcCmd is 'snmp(2)'.

        The ip address of the remote system connected when the value of h3cCfgLogTerminalType
        is 'virtual'.

        Other, the value of 0.0.0.0."                       �"The host name of remote system connected if
        h3cCfgLogTerminalType has the value of 'virtual'.
        Other, a zero length string."                       �"The user name used when h3cCfgLogSrcData or h3cCfgLogDesData has
        the value of 'netFtp'.
        Other, a zero length string."                       �"The remote server address when h3cCfgLogSrcData or h3cCfgLogDesData
        has the value of 'netFtp'.
        Other, a value of 0.0.0.0."                       �"The current configuration file name when h3cCfgLogSrcData has
         the value of 'netFtp',and h3cCfgLogDesData has the value of 'startupData'.
         Other, a zero length string."                           �"The maximum number of copy entries that may be held
        in h3cCfgOperateTable.  A particular setting does not guarantee
        that much data can be held."                       �"The number of minutes an unactive h3cCfgOperateEntry SHOULD be kept in the
        h3cCfgOperateTable before it is active. The object is a fator taken account
        of when it needs delete some rows make room in h3cCfgOperateTable. "                       �"The maximum number of copy entries that may be held
        in h3cCfgOperateResultTable.  A particular setting does not guarantee
        that much data can be held."                       '"A table of config-operation requests."                       "An operate request entry."                       0"The unique index value of a row in this table."                       1"Specify the type of operation on configuration."                      �"If the value of h3cCfgOperateType is running2Net,net2Running,net2Startup
         or startup2net,  this node specify the protocol to be
        used for file transfer .
        The default protocol is ftp if no protocol is specified.
        And for other value of h3cCfgOperateType , this object may
        be ignored by the implementation.

        when clusterftp or clustertftp is selected,
        the h3cCfgOperateServerAddress needn't be set,
        the server address can be acquired automatically, the value of h3cCfgOperateServerAddress
        is uncertain during operation.
        both member switch and commander switch can use them if they support HGMP v2.
        "                      _"When the object of h3cCfgOperateType has the value of net2Startup, net2running or
        running2Net,the value must be specified. The file name may include the path if
        applicable.
        If the value of h3cCfgOperateType is net2Startup or net2running, this node specify the
        source file name of transfers.If the value of h3cCfgOperateType is running2Net ,
        this node specify the destination file name of transfers.
        When h3cCfgOperateType has the value of startup2net,the object may not be
        created instead of using the file name of startup configuration file."                       �"When the operation type is running2Net,net2Running,net2Startup
         or startup2net , the ip address of the ftp/ftfp server from/to
        which to download/upload must be specified.
        Values of 0.0.0.0 or FF.FF.FF.FF are not permitted."                      "When the operation type is running2Net,net2Running,net2Startup
         or startup2net , the user
        name for the ftp server from/to which to download/upload
        should be specified. The object must be created if h3cCfgOperateProtocol
        has the value of ftp. "                      "When the operation type is running2Net,net2Running,net2Startup
         or startup2net , the user
        password for the ftp server from/to which to download/upload
        should be specified. The object must be created if h3cCfgOperateProtocol
        has the value of ftp. "                       g"Specifies whether or not a notification should be
        issued on the completion of the operation."                       �"The status of this table entry.
        When the status is active all the
        object's value in the entry is not
        allowed to modified."                       �"When the operation type is running2Net, net2Running, net2Startup or startup2Net,
         this node is used for specifying the remote port number. If the value is 0 or not
         specified, the known port number will be used."                       ."A table of config-operation requests result."                       9"The result entries of configuration operation requests."                       �"The index of Table, which is an incremental integer.
        The maximum value of the node is 2147483647. The agent should wrap the
        value to 1 and flush all the existing entries when the maximum value
        is reached."                       0"The operation index in the h3cCfgOperateTable."                       /"The operation type in the h3cCfgOperateTable."                       5"The operation state type in the h3cCfgOperateTable."                       �"Record the time taken for the operation. This object will
        be like a stopwatch, starting when the operation
        starts, and stopping when the operation completes."                       F"The value of sysUpTime when the configuration operation is finished."                       1"The failure reasons of configuration operation."                           �"The maximum number of ConfigOperationType entries that may be held
        in h3cCfgExecuteResultTable. A particular setting does not guarantee
        that much data can be held."                       *"A table of configuration execute result."                       8"The result entries of configuration execute operation."                       �"The index of Table, which is an incremental integer.
        The maximum value of the node is 2147483647. The agent should wrap the
        value to 1 and flush all the existing entries when the maximum value
        is reached."                       L"The configuration execute operation index in the h3cCfgExecuteResultTable."                       5"The operation type in the h3cCfgExecuteResultTable."                       /"Record the status of the specified operation."                       *"Record the time of the execution starts."                       /"Record the time of the execution is finished."                       )"Reboot device as default configuration."                           �"The object calculates the checksum on the current config per 10 minutes and
        even if it is different from the saved config but if a trap has been sent
        with the same checksum then don't send again until the checksum is different."                 X"When create h3cCfgOperateTable successfully, a
        notification may be generated."                 X"When the configuration file is invalid, this
         notification will be generated."                         \"The statement of compliance for those implementing
        the Huawei 3Com ConfigMan MIB."   " "                 2"A collection of objects configuration log group."                 %"A group of configuration operation."                 %"Collection of notification objects."                    