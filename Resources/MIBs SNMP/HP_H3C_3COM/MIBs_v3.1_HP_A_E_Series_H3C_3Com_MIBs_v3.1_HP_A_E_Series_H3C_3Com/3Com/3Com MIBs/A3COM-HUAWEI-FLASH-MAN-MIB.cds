g-- =================================================================
-- Copyright (c) 2004-2010 Hangzhou H3C Tech. Co., Ltd. All rights reserved.
--
-- Description: flash management mib
-- Reference:
-- Version: V2.8
-- History:
--  V1.0 20th Dec 2002
--  V1.1 2004-03-03
--  module imported from A3COM-HUAWEI-OID-MIB which is the root MIB MODULE for huawei-3com.
--  add huaweiFlashDevice->hwFlhSupportNum node
--  add huaweiFlashDevice->hwFlashTable table
--    hwFlashEntry
--        hwFlhIndex
--        hwFlhSize
--        hwFlhPos
--        hwFlhName
--        hwFlhChipNum
--        hwFlhDescr
--        hwFlhInitTime
--        hwFlhRemovable
--        hwFlhPartitionBool
--        hwFlhMinPartitionSize
--        hwFlhMaxPartitions
--        hwFlhPartitionNum
--  add huaweiFlashDevice->hwFlashChips->hwFlhChipTable table
--    hwFlhChipEntry
--        hwFlhChipSerialNo
--        hwFlhChipID
--        hwFlhChipDescr
--        hwFlhChipWriteTimesLimit
--        hwFlhChipWriteTimes
--        hwFlhChipEraseTimesLimit
--        hwFlhChipEraseTimes
--  add huaweiFlashDevice->hwFlashPartitions->hwFlhPatitionTable table
--    hwFlhPartitionEntry
--        hwFlhPartIndex
--        hwFlhPartFirstChip
--        hwFlhPartLastChip
--        hwFlhPartSpace
--        hwFlhPartSpaceFree
--        hwFlhPartFileNum
--        hwFlhPartChecksumMethod
--        hwFlhPartStatus
--        hwFlhPartUpgradeMode
--        hwFlhPartName
--        hwFlhPartRequireErase
--        hwFlhPartFileNameLen
--add huaweiFlashDevice->hwFlhFiles->hwFlhFileTable table
--    huaweiFlhFileEntry
--        hwFlhFileIndex
--        hwFlhFileName
--        hwFlhFileSize
--        hwFlhFileStatus
--        hwFlhFileChecksum
--     V1.2 14th May 2004
--     convert MIB object name from hwXXX to h3c, etc.
--     V1.3 20 July 2004
--        add error code.
--          opAuthFail(17),
--          opTimeout(18),
--          opDeleteFileOpenError(20),
--              opDeleteInvalidDevice(21),
--              opDeleteInvalidFunction(22),
--              opDeleteOperationError(23),
--              opDeleteInvalidFileName(24),
--              opDeleteDeviceBusy(25),
--              opDeleteParaError(26),
--              opDeleteInvalidPath(27)
--     V1.21 2004-8-19 modify the DESCRIPTION of h3cFlhMinPartitionSize
--         by fanxiaoxun
--     V2.0 2004-10-12 updated by gaolong
--         Fix h3cFlhMIBCompliance MODULE name to A3COM-HUAWEI-FLASH-MAN-MIB
--     V2.1 2004-11-22 modify the SYNTAX of h3cFlhSupportNum and h3cFlhIndex
--         by wangpengju
--     V2.2 2005-01-11 updated by gaolong and weixinzhe
--         File description updated
--     V2.3 2005-01-11 add 'rename' operation type for h3cFlhOperType,
--         by wangpengju
--     V2.4 2005-06-06 add enum value in SYNTAX of h3cFlhOperProtocol
--         by jinyongfeng. Adjust file format by gaolong
--     V2.5 2005-08-18 change the value range of h3cFlhFileIndex
--         from (1..32) to (1..2147483647), by wangpengju
--     V2.6 2006-03-03 updated by yangjianfeng
--         correct some error words which are obvious clerical error.
--     V2.7 2009-05-05 Add h3cFlhOperServerPort by jinyi
--     V2.8 2010-06-05 add h3cFlhOperFailReason by shuaixiaojuan
--                     add h3cFlhKbyteSize by jinyi
-- =================================================================
  h"
        Flash partition upgrade method, i.e., method by which
        new files can be downloaded into the partition.
        FLH stands for Flash Load Helper, a feature provided
        on run-from-Flash systems for upgrading Flash. This
        feature uses the bootstrap code in ROMs to help in
        automatic download.
        This object should be retrieved if the partition
        status is runFromFlash(2).
        If the partition status is readOnly(1), the upgrade
        method would depend on the reason for the readOnly
        status. For example, it may simply be a matter of installing
        the programming jumper, or it may require execution of a
        later version of software that supports the Flash chips.

        unknown      -  the current system image does not know
                how Flash can be programmed. A possible
                method would be to reload the ROM image
                and perform the upgrade manually.
        rxbootFLH    -  the Flash Load Helper is available to
                download files to Flash. A copy-to-flash
                command can be used and this system image
                will automatically reload the Rxboot image
                in ROM and direct it to carry out the
                download request.
        direct       -  will be done directly by this image.
        "              "If device is not programmable the value of it will be
        'readOnly'; If the current image is running from
        this partition the value of it will be 'runFromFlash'
        If device is programmable the value of it will be 'readWrite'.
        "              6"The status of the specified operation can be one of
        the following.

        opInProgress : the operation is in process.

        opSuccess :  the operation has been completed successfully.

        opInvalid : the command is invalid or command-protocol-device
               combination is unsupported by the system.

        opInvalidProtocol :invalid protocol is specified

        opInvalidSourceName :invalid source file name is specified.

        opInvalidDestName :invalid target name is specified.

        opInvalidServerAddress :invalid server address is specified

        opDeviceBusy :the device is in use and locked by another process

        opDeviceOpenError :invalid device name is specified.

        opDeviceError : device read, write or erase error

        opDeviceNotProgrammable :device is read-only but a write or
        erase operation was specified

        opDeviceFull :  device is filled to capacity

        opFileOpenError :invalid file name; file not found in partition

        opFileTransferError :file transfer was unsuccessful

        opFileChecksumError :file checksum in Flash is invalid

        opNoMemory :system is running in low on memory

        opUnknownFailure :failure which is  unknown

        opDeleteFileOpenError :file is in used by another process

        opDeleteInvalidDevice :invalid device name is specified

        opDeleteInvalidFunction :deleted operation is unsupported
        by the device

        opDeleteOperationError :operation is in a low error

        opDeleteInvalidFileName :invalid file name is specified

        pDeleteDeviceBusy :the device is in use and locked
        by another process

        opDeleteParaError :the parameters are invalid

        opDeleteInvalidPath :the file path is invalid"                                                                                             �"This MIB contains objects to manage flash cards and flash
        card operations.
        There are no constraints on this MIB." �"Platform Team Hangzhou H3C Tech. Co., Ltd.
         Hai-Dian District Beijing P.R. China
         http://www.h3c.com
         Zip:100085"       -- July 01, 2002 at 00:00 GMT
               �"
        Specifies the total number of flash which the
        system supported.

        The MIB should not be loaded if there is no flash
        in the system and so the value here will be a
        minimum of 1.
        "                       `"
        This table gives the properties of all the flashes on
        the system.
        "                       "The entry of h3cFlashTable."                       �"
        The index of h3cFlashTable. It has a minimum value of 1, and
        maximum value of the same as the value of h3cFlhSupportNum.
        "                       �"
        Specifies the total size of the flash device indexed
        by h3cFlhIndex. The value should be zero if the flash is
        removed for a removable device.
        "                       �"
        The position of the flash device in system. This object is
        an index of entPhysicalTable in ENTITY-MIB.
        If the value of this object is 0,
        the main processor is indicated.
        "                       #"The flash name within the system."                        "The chip numbers in the flash."                       8"Description of the purpose of the flash in the system."                      "
        The initialization time for the flash component or partition,
        recorded using the system time. This will be the boot time for
        a fixed device. For a removable component or a partition,
        it will be the initialization time.
        "                       �"
        The value indicates whether the flash indexed can be removed
        or not.
        The true(1) value indicates the flash device CAN be removed.
        "                       �"
        The value indicates whether the flash indexed can be partitioned
        or not.
        The true(1) value indicates the flash CAN be partitioned.
        "                       �"
        Minimum partition size supported.
        If h3cFlhDevicePartitionBool is false, the value
        of this object is the same as h3cFlhSize.
        "                       �"
        The maximum count of partitions which the system supports
        for this flash. If h3cFlhPartitionBool is false,
        the object value is 1.
        "                       �"
        The actual number of partitions supported by the system for
        this flash. If h3cFlhPartitionBool is false, this value is 1.
        "                       �"
        Specifies the total size of the flash device indexed
        by h3cFlhIndex. The value should be zero if the flash is
        removed for a removable device.
        "                           d"
        Table of properties for all flash chips.
        Used mainly for diagnostics.
        "                       "The entry of h3cFlhChipTable"                       "Index of h3cFlhChipTable."                       �"
        The manufacturer code (the upper byte) and
        device code (the lower byte) for a chip.
        Unknown chip code is presented as 00:00.
        "                       8"
        The description of the flash chip.
        "                       �"
        The limit for the number of write times (retries)
        for a flash chip. If the limit
        is exceeded an error should be reported by the management
        station.
        "                      J"
        A count of write times (retries) for the flash chip since
        initialization.
        A count of 25 or more for a single chip indicates a write error.
        Management stations should note the value of this MIB before and
        after a write operation,
        and report any errors accordingly.
        "                       �"
        The limit for the number of erase times (retries) for a flash
        chip.
        If the limit is exceeded an error should be reported by the
        management station.
        "                      M"
        A count of erase times (retries) for the flash chip since
        initialization.
        A count of 2000 or more for a single chip indicates a write
        error.
        Management stations should note the value of this MIB before and
        after an erase operation, and report any errors accordingly.
        "                           g"
        Properties for the flash partitions. Minimum of one entry in
        this table.
        "                       q"
        An entry of the h3cFlhPartitionTable.Indexed by flash
        number and partition number.
        "                       S"
        An index which specifies a sequenced partition in the system.
        "                       �"
        The first chip's sequence number in the
        partition, by which a chip can be indexed in
        chip table.
        "                       �"
        The last chip's sequence number in the
        partition, by which a chip can be indexed in
        chip table.
        "                       �"
        The total space of the flash partition.
        The following should be satisfied:
        h3cFlhPartSpace = n*h3cFlhMinPartitionSize
        "                       #"The flash partition's free space."                       5"The number of all the files in the flash partition."                       1"The Checksum method which the file system uses."                       "The flash partition status."                       )"The upgrade mode of the Flash partition"                       6"The name of the flash partition given by the system."                       a"
        Shows whether a write operation is conditional on partition
        erase.
        "                       0"The maximum length of file name in the system."                           "Table of file information."                       {"
        An entry representing a file. Indexed using flash number,
        partition number, and file number.
        "                       9"Index of the table, whose range is from 1 to 2147483647"                       1"A valid file name supported by the file system."                       �"
        The file size in bytes excluding the file
        header of file system. The value should be greater than zero.
        "                       �"
        The status should be as follows:
        deleted(1):  The file is in recycle bin.
        invalidChecksum(2):  The checksum of file is invalid;
        valid(3):  A valid file.
        "                       *"The file checksum in the header of file."                           "Table used to operate flash."                      ="
        Note an operation can not be stopped until it is finished.

        If notification is configured, NMS will receive a notification
        at the end of the operation.

        Entries in the table will be removed automatically in 5 minutes.
        It can also be deleted by NMS directly.
        "                       l"
        Specifies the index of an entry. It is a
        random value when creating an entry.
        "                      �"
        Specifies the operation to be executed.

        net2FlashWithErase  Copy a file to flash; erase
                    flash beforehand.

        net2FlashWithoutErase   Copy a file to flash; do not erase flash
        beforehand.

        flash2Net           Copy a file from flash.

        delete          Delete a file from flash, the file name is
        specified by h3cFlhOperSourceFile;

        rename          Change a file's name.
        "                      �"
        Specifies the protocol used to transfer file.
        The default protocol is ftp.

        when 'clusterftp' or 'clustertftp' is selected,
        the h3cFlhOperServerAddress needn't be set,
        the server address can be acquired automatically, the value of
        h3cFlhOperServerAddress is uncertain during operation.
        Both member switch and commander switch can use them if they
        support HGMP v2.
        "                       �"
        The address of remote host acting as server for operation.

        The default value is 255.255.255.255
        "                       s"
        When using ftp to transfer files, the user name must be
        specified through this node.
        "                       �"
        Remote user password for copying via ftp protocol. Optionally,
        This object may be ignored for protocols other than ftp. "                       �"
        Specifies the source file name to be transferred.
        It may be located on flash or remote server.
        It may include the file path if it is applicable.
        It must be specified.
        "                       "
        Specifies the destination file name.
        It may be located on flash or remote server.
        It may include the file path if it is applicable.
        If it is not specified, the destination file name
        is the same as source file name for application.
        "                       "The status of operation."                       �"
        If the value of it is specified 'true', a notification
        will be generated at the end of the operation.
        Else no notification will be generated.
        "                       G"The progress described as the time taken for the operation.
        "                       %"The row status of this table entry."                       �"The port of remote host acting as server for operation.
         If the value of this object is not specified, the server
         port is the known protocol port."                       #"The failure reasons of operation."                           �"
        A h3cFlhOperNotification is sent at the completion of a flash
        copy operation if h3cFlhOperEndNotification is true.
        "                         R"
        The statement of compliance for those implementing this MIB.
        "   " "                 5"A collection of objects on Flash level information."                 4"A collection of objects on chip level information."                 L"A collection of objects providing on partition
        level information."                 4"A collection of objects on file level information."                 ."A collection of objects of flash operations."                 /"The collection of notifications in the module"                    