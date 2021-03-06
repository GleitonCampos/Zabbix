
�-- ===========================================================================================================
-- Copyright (c) 2004-2010 Hangzhou H3C Tech. Co., Ltd. All rights reserved.
--
-- Description: System Management MIB
-- Reference:
-- Version: V2.3
-- History:
--  revision 1.0 2002-12-20 created by xuqingwei
--  revision 1.1 2004-4-16  added the support for XRN  by xuqingwei
--  revision 1.2 2004-4-16  added 'h3cSysImageType' in h3cSysImageTable for dual image  by changxiangqing
--  revision 1.3 2004-5-14  convert MIB object name from hwXXX to h3c, etc.
--  revision 1.31 2004-7-16 1. modified 'h3cSysImageSize' in h3cSysImageTable by zhaolina
--                      2.modified SYNTAX of 'h3cSysReloadImage','h3cSysImageIndex','h3cSysCFGFileIndex'
--                           from (1..2147483647) to (0..2147483647) by zhaolina
--  revision 1.5 2004-8-1  1. added 'secure' attribute for h3cSysImageType in h3cSysImageTable by zhaolina
--                         2.modified 'MAX-ACCESS' of h3cSysReloadTag from 'read-create' to 'read-write' by zhaolina
--                         3.modified DESCRIPTION of h3cSysReloadNotification by zhaolina
--                         4.modified DESCRIPTION of h3cSysImageType,h3cSysImageIndex,h3cSysImageTable and h3cSysReloadImage by zhaolina
--  revision 1.6 2004-9-8  1.modified DESCRIPTION of h3cSysImageType by wangyingxia
--                         2.added the trap object h3cSysStartUpNotification by wangyingxia
--                         3.added h3cSysStartUpNotification into the NOTIFICATION OF h3cSystemManMIBNotifications
--  revision 1.7 2004-10-12 updated by gaolong
--               Change all underscore('_') characters to hyphen characters('-') because underscore character is not allowed in MIB module.
--               Remove h3cSysCurEntPhysicalIndex from h3cSysCurGroup because this object is not accessible.
--  revision 1.8 2004-11-08 Change the description of h3cSysReloadScheduleIndex by gaolong
--  revision 1.9 2005-04-08 updated by songjie.
--               1. added the support of summer time.
--               2. correct word errors and adjust file format.
--  revision 2.0 2005-12-26 updated by jinyi
--               added h3cSysCurBtmFileName, h3cSysCurUpdateBtmFileName,
--               h3cSysBtmLoadMaxNumber, and h3cSysBtmLoadTable.
--  revision 2.1 2006-04-03 updated by shuaixiaojuan
--               modified descriptions of some objects.
--  revision 2.2 2009-06-07 Change the MAX-ACCESS of h3cSysLocalClock.
--          V2.3 2010-03-17 add h3cSysLocalClockString by jinyi
-- ============================================================================================================
                                                     �"This MIB contains objects to manage the system.
         It focuses on the display of current configure file and image
         file,and the definition of reloading image.
         Add the support for XRN.
        " �"Platform Team Hangzhou H3C Tech. Co., Ltd.
         Hai-Dian District Beijing P.R. China
         http://www.h3c.com
         Zip:100085" "200404081345Z" " "                       s"
        This node gives the current local time of the system.
        The unit of it is DateAndTime.
        "                           �"This node indicates the status of summer time.
        If the value of this node is enable, means that summer time is
        enabled.
        If the value is disable, means that summer time is disabled.
        "                       "
        This node describes the name of time zone in summer.
        The string is only used to display in local time when summer
        time is running.
        That the value of h3cSysLocalClock has the time zone information
        means that summer time is running.
        "                      "
        This node provides the execute method of summer time.
        oneOff(1):   means that summer time only takes effect at specified time.
        repeating(2): means that summer time takes effect in specified month/day
                      once a year.
        "                       G"
        This node provides the start time of summer time.
        "                       �"
        This node provides the end time of summer time.
        The end time must be more than start time one day and less
        than start time one year.
        "                       �"
        This node provides the offset time of summer time.
        The offset time(in seconds) means that how much time need to be
        appended to the local time.
        "                       �"This node gives the current local time of the system.
        For example, Tuesday May 26, 2002 at 1:30:15 would be
        displayed as: 2002-5-26,13:30:15.0 "                           �"
        The current status of system. A configuration file, an image
        file and bootrom information are used to describe the current status.
        "                       1"
        An entry of h3cSysCurTable.
        "                      d"The value of this object is the entity index
         which depends on the implementation of ENTITY-MIB.
         If ENTITY-MIB is not supported, the value for this object is the unit ID for XRN devices ,
         0 for non-XRN device which has only one mainboard,
         the board number for non-XRN device which have several mainboards.
        "                       �"
        The startup configuration file currently used by the specified entity.
        If the value of it is zero, no configuration file is used. It will be
        the value of corresponding h3cSysCFGFileIndex in h3cSysCFGFileTable.
        "                       �"The image file currently used by the specified entity.
        It will be the value of corresponding h3cSysImageIndex
        in h3cSysImageTable."                       :"The bootrom file currently used by the specified entity."                       �"
        The default value of this object is the same as the value of
        h3cSysCurBtmFileName. The value will be changed after updating
        the bootrom successfully. This bootrom will take effect on next
        startup.
        "                          "
        The object points one row in h3cSysReloadScheduleTable.
        Its value is equal to the value of h3cSysReloadScheduleIndex.
        When a reload action is finished, the value of it
        would be zero which means no any reload schedule is selected.
        "                      �"
        Writing reloadOnSchedule(2) to this object performs the reload operation on schedule.
        If h3cSysReloadScheduleTime is not set, the value of h3cSysReloadAction can't be set to
        'reloadOnSchedule(2)'.

        Writing reloadAtOnce(3)to this object performs the reload operation at once,
        regardless of the h3cSysReloadScheduleTime.

        When reloadCancel(4)is set, the scheduled reload action will be cancelled and the value of
        h3cSysReloadAction will be 'reloadUnavailable(1)',the value of h3cSysReloadSchedule will be
        0, h3cSysReloadTag will be given a value of zero length, but the content of
        h3cSysReloadScheduleTable will remain.


        The h3cSysReloadSchedule and h3cSysReloadTag  determine the reload entity(ies) in mutually
        exclusive way. And the h3cSysReloadSchedule will be handled at first. If the value of
        h3cSysReloadSchedule is invalid, then the h3cSysReloadTag will be handled.

        If the value of h3cSysReloadSchedule is valid, the value of h3cSysReloadTag is ignored and a
        reload action will be implemented to the entity specified by h3cSysReloadEntity in the entry
        pointed by h3cSysReloadSchedule.

        If h3cSysReloadSchedule is valid, but the entry h3cSysReloadSchedule pointing to is not active,
        the reload action will be ignored , and an inconsistent value will be returned.


        If multiple entities are required to be reloaded at the same time, the value of h3cSysReloadTag
        must be specified to select the reload parameters in the h3cSysReloadSceduelTable, and
        h3cSysReloadSchedule must have the value of '0'.

        If the whole fabric is to be reloaded in an XRN device, all the units in the fabric must
        have at least one entry in the h3cSysReloadSceduelTable with the same tag in h3cSysReloadSceduelTagList.

        When a reload action is done, or there is no reload action, the value
        should be reloadUnavailable(1).
        "                      \"
        A reload parameters set table.

        The table is exclusively used for reloading.

        When reloading action finished, the value of the table may be empty or still exist.
        If the mainboard in non-XRN device or all the units of the fabric in XRN device are
        reloaded,then the table will be refreshed.
        "                       %"Entry of h3cSysReloadScheduleTable."                      �"The index of h3cSysReloadScheduleTable. There are two parts
        for this index depicted as follows:

        31                  15                  0
        +++++++++++++++++++++++++++++++++++++++++
        + physical index     +     random index +
        ( bit 16..31 )              ( bit 0..15 )
        +++++++++++++++++++++++++++++++++++++++++
        From bit0 to bit15 (two bytes), if the row is automatic created,
        the value is zero, and if the row is created by users, then the
        value is determined by the users.

        From bit16 to bit31 (two bytes) is the physical index the same as the
        entPhysicalIndex specified in ENTITY-MIB(RFC2737). For XRN devices,
        physical index is the value of a chassis entPhysicalIndex. 0 for non-XRN
        device which has only one main board, the board number for non-XRN device
        which have multiple main boards."                      �"
        The value of h3cSysReloadEntity indicates an entry in entPhysicalTable,
        which is the physical entity to be reloaded.

        If ENTITY-MIB is not supported,the value for this object is the unit ID for XRN devices ,
        0 for non-XRN device which has only one mainboard,
        the board number for non-XRN device which have several mainboards.

        Each entity has only one row in h3cSysReloadScheduleTable.
        "                      n"
        The value indicates an entry in h3cSysCFGFileTable.
        It defines a configuration file for reload action.
        It is the value of corresponding h3cSysCFGFileIndex in h3cSysCFGFileTable.
        The zero value means no configuration file has been set for this entry, and
        no configuration file is used during system reloading.
        "                      "
        The value indicates an entry in h3cSysImageTable.
        It defines an image file for reload action.
        It is the value of corresponding h3cSysImageIndex in h3cSysImageTable.

        If dual image is supported, the main image attribute can be
        set through this object or by h3cSysImageType of h3cSysImageTable
        of the entity. It is strongly suggested to set this attribute by
        the latter.

        If main image attribute is set here, the h3cSysImageType in h3cSysImageTable
        of the corresponding entity will be updated, and vice versa.

        Before reboot, the device will check the validation of the entry. If the file does
        not exist, the device will not reboot and a trap will be send to NMS.
        "                       o"
        The reason of system's reloading.
        It is a zero length octet string when not set.
        "                      �"
        Specify the local time at which the reload action will
        occur. we will only take octet strings
        with length 8 for this object which indicates the
        local time of the switch. The maximum scheduled
        interval between the specified time and the current
        system clock time is 24 days .

            field  octets  contents                  range
            -----  ------  --------                  -----
              1      1-2   year                      0..65536
              2       3    month                     1..12
              3       4    day                       1..31
              4       5    hour                      0..23
              5       6    minutes                   0..59
              6       7    seconds                   0..60

         For example, Tuesday May 26, 1992 at 1:30:15 PM would be
         displayed as:

                    1992-5-26,13:30:15

        If the set value is less than the value of h3cSysLocalClock
        or beyond the maximum scheduled time limit, a bad value error
        occurred.
        The value of all-zero octet strings indicates system reload
        at once if the reload action is reloadOnSchedule(2).
        "                      "
        If one of the value of h3cSysReloadEntity,h3cSysReloadImage
        is invalid, the value of h3cSysReloadRowStatus can not be set to the value
        of ACTIVE.

        A valid entry means the specified element is available in current system.
        "                       4"
    It specifies a tag list for the entry.
    "                      �"This object contains a single tag value which is used
        to select entries in the h3cSysReloadScheduleTable.

        In the h3cSysReloadScheduleTable,any entry that contains
        a tag value which is equal to the value of this object is
        selected.

        For example, the value of h3cSysReloadTag is 'TOM',and the
        h3cSysReloadScheduleTagList of each h3cSysReloadScheduleTable
        entry are as follows:
        1)'TOM,ROBERT,MARY'
        2)'TOM,DAVE'
        3)'DAVE,MARY'
        Since there are 'TOM' in 1) and 2),so 1) and 2) are selected.


        If this object contains a value of zero length, no entries
        are selected.
        "                           o"
        The number of system images. It indicates the
        total entries of h3cSysImageTable.
        "                      �"The system image management table.


        When 'copy srcfile destfile' is executed via the CLI, if destfile is not existed,
        then h3cSysImageType of the new file will be 'none'; otherwise h3cSysImageType keeps its current value.
        When 'move srcfile destfile' is executed via the CLI, h3cSysImageType and h3cSysImageIndex
         remain the same while h3cSysImageLocation changes.
        When 'rename srcfile' is executed via the CLI,h3cSysImageType and h3cSysImageIndex remain the same
        while h3cSysImageName changes.
        When 'delete srcfile' is executed via the CLI, the file is deleted from h3cSysImageTable
        while index of the file keeps and will not be allocated.
        "                       �"
        An entity image entry. Each entry consists of information of an entity image.
        The h3cSysImageIndex exclusively defines an image file.
        "                      b"There are two parts for the index depicted as follows:

        31                15             0
        +++++++++++++++++++++++++++++++++++
        + physical index   +  image index +
        +++++++++++++++++++++++++++++++++++

        From bit0 to bit15 (two bytes) is the image index;Image file Index
        is a monotonically increasing integer for the sole purpose of indexing
        events.  When it reaches the maximum value,an  extremely unlikely event,
        the agent wraps the value back to 1 and may flush existing entries.

        From bit16 to bit31 (two bytes) is the physical index the same as the
        entPhysicalIndex specified in ENTITY-MIB(RFC2737).
        If ENTITY-MIB is not supported,the value for this object is the unit ID for XRN
        devices ,0 for non-XRN device which has only one main board,the board number for
        non-XRN device which have several main boards.


        Any index beyond the above range will not be supported.

        If a file is added in, its h3cSysImageIndex will be the maximum image index plus one.
                        If the image file is removed, renamed, or moved from one place to another,
                        its h3cSysImageIndex is not reallocated.
                        If the image file's content is replaced, its h3cSysImageIndex will not change.

        "                       G"The file name of the image. It MUST NOT contain the path of the file."                       0"
        Size of the file in bytes.
        "                      2"
        The directory path of the image.
        Its form should be the same as what defined in file system.
        Currently it is defined as follows:
        For mainboard:   flash:/
        For slave mainboard and subboards: slotN#flash:/
        For XRN devices: unitN>slotN#flash:/
        "                      �"
        It indicates the reloading sequence attribute of the image.

        For devices which support dual image:

        If the value is 'main(1)',the image will be the first image
        in the next reloading procedure. If the value is 'backup(2)',
        the image will be used if the main image fails. If the value
        is 'secure(4)', the image will be used if the main image and
        backup image both fail. If the value is 'none(3)',the image will
        not be used in the next reloading procedure.

        At the same time,you also can specify the main image by
        h3cSysReloadImage in h3cSysReloadScheduleTable. If the
        image is different from previous main image, the previous main image
        will not be main image again. And the image table will update with
        this variation. Vice versa, if you have defined the reload schedule,
        and then you define a new main image through h3cSysImageType when you
        are waiting the reload schedule to be executed, the real main image
        will be the latest one.


        It is strongly suggested to define the main image here, not by h3cSysReloadImage
        in h3cSysReloadScheduleTable.

        There are some rules for setting the value of h3cSysImageType:

        a)When a new image file is defined as 'main' or 'backup' file,the h3cSysImageType
          of old 'main' or 'backup' file will automatically be 'none'.
        b)It is forbidden to set 'none' attribute manually.
        c)It is forbidden to set 'secure' attribute manually.
        d)If 'main' image is set to 'backup', the file keeps 'main'. And vice versa.
          At this time, the file has 'main-backup' property.
        e)If the secure image is set to 'main' or 'backup', the file has 'main-secure' or 'backup-secure'property.
        f)If the secure image is set to 'main' and 'backup', the file has the 'main-backup-secure' property.
        g)If the none image is set to 'main' or 'backup', the file has the 'main' or 'backup' property.

        The following table describes whether it is ok to set to another state
        directly from original state.

                        +--------------+-----------+-------------+-------------+
                        |   set to     | set to    |  set to     |   set to    |
                        |              |           |             |             |
             original   |    'main'    | 'backup'  |  'none'     |  'secure'   |
             state      |              |           |             |             |
          --------------+--------------+-----------+-------------+-------------+
                        |              |           |             |             |
             main       |     ---      |   yes     |   no        |   no        |
                        |              |           |             |             |
                        |              |           |             |             |
          --------------+--------------+-----------+-------------|-------------+
                        |              |           |             |             |
             backup     |     yes      |   ---     |   no        |   no        |
                        |              |           |             |             |
          --------------+--------------+-----------+-------------|-------------+
                        |              |           |             |             |
                        |              |           |             |             |
              none      |     yes      |   yes     |   ---       |   no        |
                        |              |           |             |             |
          --------------+--------------+-----------+-------------+-------------+
                        |              |           |             |             |
              secure    |     yes      |   yes     |   no        |   ---       |
                        |              |           |             |             |
                        |              |           |             |             |
          --------------+--------------+-----------+-------------+-------------+

        If there is one main image in the system, one row of H3cSysReloadScheduleEntry
        whose  h3cSysReloadImage is equal to the main image's h3cSysImageIndex will be
        created automatically. But if any row is deleted, it will not be created
        automatically in h3cSysReloadScheduleTable.




        For the device which doesn't support dual image(main/backup):

        Only 'main' and 'none' is supported and it only can be set from none to main.
        When a new image file is defined as 'main' file,the h3cSysImageType of old 'main'
        file will automatically be 'none'.
        "                           �"
        The number of the configuration files in the system. It indicates the
        total entries of h3cSysCFGFileTable.
        "                       �"A table of configuration files in this system.
         At present, the system doesn't support dual configure file,
         it should act as 'dual image' if dual configure file is
         supported.
        "                       �"
        A configuration file entry. Each entry consists of information of
        a configuration file.
        h3cSysCFGFileIndex exclusively decides a configuration file.
        "                      "There are two parts for the index depicted as follows:

        31                15             0
        +++++++++++++++++++++++++++++++++++
        + physical index  + cfgFile index +
        +++++++++++++++++++++++++++++++++++

        From bit0 to bit15 (two bytes) is the configuration file index; the
        configuration file index is a monotonically increasing integer for
        the sole purpose of indexing events. When it reaches the maximum
        value, an extremely unlikely event, the agent wraps the value back
        to 1 and may flush existing entries.

        From bit16 to bit31 (two bytes) is the physical index the same
        as the entPhysicalIndex specified in ENTITY-MIB(RFC2737).
        If ENTITY-MIB is not supported, the value for this object is the unit ID for XRN
        devices ,0 for non-XRN device which has only one slot,the board number for
        non-XRN device which have several slots.

        Any index beyond the above range will not be supported.
        "                       �"
        Configuration file name. The name should not include the colon (:)
        character as it is a special separator character used
        to delineate the device name, partition name and the
        file name.
        "                       �"
        Size of the file in bytes. Note that it does
        not include the size of the filesystem file header.
        File size will always be non-zero.
        "                      1"
        The directory path of the image.
        Its form should be the same as what defined in filesystem.
        Currently it is defined as follows:
        For mainboard:   flash:/
        For slave mainboard and subboards: slotN#flash:/
        For XRN devices: unitN>slotN#flash:/
        "                               n"
        This object shows the maximum number of h3cSysBtmLoadEntry in
        each device/unit.
        "                       �"
        This table is used to update the bootrom and show the results of
        the update operation.
        The bootrom files are listed at the h3cFlhFileTable.  These files
        are used to update bootrom.
        "                      z"
        Entries in the h3cSysBtmLoadTable are created and deleted using
        the h3cSysBtmRowStatus object.

        When a new row is being created and the number of entries is
        h3cSysBtmLoadMaxNumber, the row with minimal value of
        h3cSysBtmLoadTime and the value of h3cSysBtmFileType is none(2),
        should be destroyed automatically.
        "                      �"
        The index of h3cSysBtmLoadTable. There are two parts for this
        index depicted as follows:

        31                  15                  0
        +++++++++++++++++++++++++++++++++++++++++
        + physical index     +     random index +
        ( bit 16..31 )              ( bit 0..15 )
        +++++++++++++++++++++++++++++++++++++++++

        From bit0 to bit15 (two bytes), if the row is created by command
        line, the value is determined by system, and if the row is created
        by SNMP, the value is determined by users.

        From bit16 to bit31 (two bytes) is the physical index the same as
        the entPhysicalIndex specified in ENTITY-MIB(RFC2737).

        If ENTITY-MIB is not supported, the value of this object is the
        unit ID for XRN devices, 0 for non-XRN device which has only one
        main board, the board number for non-XRN device which has multiple
        main boards.
       "                      T"
        The bootrom file name is determined by the users.  The file must
        exist in corresponding entity.

        The validity of the bootrom file will be identified by system.
        If the file is invalid, the bootrom should fail to be updated,
        and the value of h3cSysBtmErrorStatus should be failed(4).
        "                      �"
        main(1) - The effective bootrom file.
        none(2) - The noneffective file.

        When bootrom is being updated, this object must be set to main(1).

        When bootrom is updated successfully, this object should be
        main(1), and the former object with the same physical index should
        be none(2).

        When bootrom failed to be updated, this object should be none(2).
        "                      "
        Only support active(1), createAndGo(4), destroy(6).  When a row
        is created successfully, the value of this object should be active(1),
        the value of h3cSysBtmFileName and h3cSysBtmFileType can not be
        modified by users.

        When bootrom is being updated, the value of h3cSysBtmErrorStatus
        is inProgress(2).

        When bootrom failed to be updated, the value of h3cSysBtmErrorStatus
        should be failed(4).

        When bootrom is updated successfully, the value of h3cSysBtmErrorStatus
        should be success(3).  The value of h3cSysCurUpdateBtmFileName
        should change to the new bootrom file name.

        When another row is created successfully with the same physical
        index, and the update is successful, then the value of former
        h3cSysBtmFileType should be none(2) automatically.

        If a row is destroyed, h3cSysCurUpdateBtmFileName should not change.

        If a device/unit reboots, h3cSysBtmLoadTable should be empty.
        "                      >"
        This object shows the status of the specified operation after
        creating a row.
        invalidFile(1) - file is invalid.
        inProgress(2)  - the operation is in progress.
        success(3)     - the operation was done successfully.
        failed(4)      - the operation failed.
        "                       ;"
        This object indicates operation time.
        "                           �"
        A clock changed notification is generated when the current
        local date and time for the system has been manually changed.
        The value of h3cSysLocalClock reflects new date and time.
        "                 �"
        A h3cSysReloadNotification will be sent before the corresponding entity is
                        rebooted. It will also be sent if the entity fails to reboot because the clock
                        has changed.
        "                 �"
            a h3cSysStartUpNotification trap will be sent when the system starts up with 'main' image file failed,
            a trap will be sent to indicate which type the current image file (I.e backup or secure)is.
            "                         o"
        The compliance statement for entities which implement
        the system management MIB.
        "   G"
        The h3cSystemBtmLoadGroup is optional for system.
        "                 G"A collection of objects providing mandatory system clock information."                 <"A collection of objects providing mandatory system reload."                 G"A collection of objects providing mandatory system image information."                 q"
        A collection of objects providing mandatory system
        configuration file information.
        "                 ("A collection of system current status."                  "A collection of notifications."                     F"A collection of objects providing system update bootrom information."                            