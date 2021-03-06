�-- ==========================================================================
-- Copyright (c) 2004-2010 Hangzhou H3C Tech. Co., Ltd. All rights reserved.
--
-- Description: The purpose of this MIB file is to provide the definition of
--              voice dial control configuration, it includes the common
--              cofiguration of entities, and special configuration for
--              pots entities and VoIP entities.
-- Reference:
-- Version: V1.2
-- History:
-- V1.0 2008-02-17 Initial version, created by Tian Xiaoqiang, Qu Jin
-- V1.1 2009-04-16 Add number management table 'h3cVoEntityNumberTable', by
--                 Qu Pingping.
-- V1.2 2009-12-09 Add g729br8 to "H3cCodecType", Wang Tong.
--                 Modify scope of h3cVoEntityNumberAuthUser, 
--                 from 31 to 63 by yangzhanhua.
-- ==========================================================================
   "Type of FaxTrainMode."               "Type of FaxProtocol."               "Type of OutBandMode."               "Type of FaxBaudrate."               "Type of Registerd Status."               "Type of Codec."                                                             Z"This MIB file is to provide the definition of
        voice dial control configuration." �"Platform Team H3C Technologies Co., Ltd.
         Hai-Dian District Beijing P.R. China
         http://www.h3c.com
         Zip: 100085" "200904160000Z" '"The initial version of this MIB file."                   c"The table contains the voice entity information that
        is used to create an ifIndexed row."                       &"The entry of h3cVoEntityCreateTable."                       ="An arbitrary index that uniquely identifies a voice entity."                       2"Specify the type of voice related encapsulation."                       �" This object is used to create, delete or modify a row in
        this table. The h3cVoEntityType object should not be
        modified once the new row has been created."                       ;"This table contains the general voice entity information."                       ,"The entry of h3cVoEntityCommonConfigTable."                       ="An arbitrary index that uniquely identifies a voice entity."                       Y"This object indicates the first desirable CODEC of speech
        of this dial entity."                       Z"This object indicates the second desirable CODEC of speech
        of this dial entity."                       Y"This object indicates the third desirable CODEC of speech
        of this dial entity."                       Y"This object indicates the forth desirable CODEC of speech
        of this dial entity."                       _"This object indicates the DSCP(Different Service Code Point)
        value of voice packets."                       V"This object indicates whether the VAD(Voice Activity Detection)
        is enabled."                       f"This object indicates the DTMF(Dual Tone Multi-Frequency)
        outband type of this dial entity."                       :"This object indicates the fax level of this dial entity."                       ="This object indicates the fax baudrate of this dial entity."                       S"This object indicates the fax local train threshold of this
        dial entity."                       ="This object indicates the fax protocol of this dial entity."                       b"This object indicates the high speed redundancy packet
        numbers of t38 and standard-t38."                       a"This object indicates the low speed redundancy packet
        numbers of t38 and standard-t38."                       d"This object indicates whether sends NSF(Non-Standard Faculty)
        to fax of this dial entity."                       ?"This object indicates the fax train mode of this dial entity."                       P"This object indicates whether the ECM(Error Correct Mode)
        is enabled."                       9"This object indicates the priority of this dial entity."                       M"This object indicates the textual description of this
        dial entity."                       ^"This table contains the POTS(Public Switched Telephone Network)
        entity information."                       *"The entry of h3cVoPOTSEntityConfigTable."                       ="An arbitrary index that uniquely identifies a voice entity."                       P"This object indicates the prefix which is added to the
        called number."                       O"This object indicates the voice subscriber line of
        this dial entity."                      �"This object indicates the digit of phone number to be
        sent to the destination.
        0..31: Number of digits (that are extracted from the end of a number)
        to be sent, in the range of 0 to 31. It is not greater than the total
        number of digits of the called number.
        65534: Sends all digits of a called number.
        65535: Sends a truncated called number."                       2"This table contains the VoIP entity information."                       *"The entry of h3cVoVoIPEntityConfigTable."                       ="An arbitrary index that uniquely identifies a voice entity."                       F"This object indicates the type of the session target of this entity."                       ="The IP address type of object h3cVoVoIPEntityCfgTargetAddr."                       ."This object indicates the target IP address."                       7"The table contains the number management information."                      "The entry of h3cVoEntityNumberTable.  H3cVoEntityIndex
        is used to uniquely identify these numbers registered on
        the server.  The same value of h3cVoEntityIndex used in
        the corresponding H3CVoEntityCommonConfigTable is used here."                       G"This object indicates the username of the entity number to authorize."                      "This object indicates the password type of the entity number to authorize.
         The encrypting type of password:
         0 : password simple, means password is clean text.
         1 : password cipher, means password is encrypted text.
         default is 65535."                       G"This object indicates the password of the entity number to authorize."                       ?"This object indicates the current state of the entity number."                       J"This is the interval time for entity number updating registered message."                      