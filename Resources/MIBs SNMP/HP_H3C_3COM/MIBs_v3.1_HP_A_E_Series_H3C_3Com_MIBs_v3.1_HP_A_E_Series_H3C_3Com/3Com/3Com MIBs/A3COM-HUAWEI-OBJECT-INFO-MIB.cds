|-- =================================================================
-- Copyright (C) 2004 by HUAWEI 3COM TECHNOLOGIES.  All rights reserved.
--
-- Description: Object Information query mib
-- Reference: None
-- Version: V1.0
-- History:
--   V1.0 created by longyin
--     2005-01-04 Initial version
-- =================================================================
         �"
            This MIB is used to acquire information from the agent.
            Before a NMS takes some actions, it is not sure whether the
            agent supports it or not.  This MIB is used to solve this problem.
            " �"
            Platform Team Huawei 3Com Technologies Co., Ltd.
            Hai-Dian District Beijing P.R. China
            http://www.huawei-3com.com
            Zip:100085
            " "200412270000Z" F"
            The initial revision of this MIB module.
            "       #-- December 27, 2004 at 14:49 GMT
           :"
        MIB objects information query table.
        "                       @" 
            The entry of h3cObjectInfoTable. 
            "                       �" 
            The OID of the MIB object which is queried.  
            If the user has no privilege accessing to the object referred by this OID, 
            get operation on h3cObjectInfoValue will be failed.
            "                       �"
            The object's properties type to be queried.         
            The queried result will be returned by h3cObjectInfoValue.  The format of the result will be
            different according to different h3cObjectInfoType.
            "                       �"
            The object's property type extension to be queried.  
            This object's value is relative to the value of h3cObjectInfoType.
            "                      �"
            Return property value of the queried object.   
            Zero length string is the default value of this object which means no value is returned.  
            If the request is invalid, then the result should be the default value.  
        
            If the value of h3cObjectInfoType is accessType, the rules below should be followed.  
                1) The returned value must have prefix 'A', and followed by some nonnegative integers.
                   The format is like 'A2'.
                2) The nonnegative integers and the meaning of them are as follow:
                               0 means 'not-accessible'.
                               1 means 'notification'.
                               2 means 'read-only'.
                               3 means 'read-write'.
                               4 means 'read-create'.
                               5 means 'write-only'.
                               6 means 'accessible-for-notify'.
                               7 means 'error'.
                               --the above values are defined by standard protocol 
                               101 means 'not implemented'.  -- The queried node is not implemented by agent.
                               102 means 'unknown error'.    -- Query failed for unknown reason.
                 
            If the value of h3cObjectInfoType is dataType, the rules below should be followed.  
               1) The returned value must have prefix 'T', and followed by string which has
                  format like 2), such as 'T1', the character '1' means INTEGER.  
               2) The following data types are defined in standard protocol, the values in brackets 
                  will be returned to indicate these data types.
                               INTEGER(1)
                               Integer32(2)
                               Unsigned32(4)
                               Gauge(6)
                               Counter(7)
                               Counter32(8)
                               Counter64(9)
                               TimeTicks(10)
                               OCTET STRING(11)
                               OBJECT IDENTIFIER(12)
                               IpAddress(13)
                               NetworkAddress(14)
                               Opaque(15)
                               BITS(16)
            
            If the value of h3cObjectInfoType is dataRange, the rules below should be followed.
               1) The returned value must have prefix 'R', and followed by string which has the
                  format like 2) to 5), such as 'R[1,1]'.
               2) If h3cObjectInfoValue returns Integer32, the format is as followed. Suppose A is a 
                  MIB object.
                  If SYNTAX of A is 'Integer32{1|2|3|5|6|7}', the format is 'R[1,3],[5,7]'.
                  If SYNTAX of A is 'Integer32{1|3}', the format is 'R[1,1],[3,3]'.
                  If SYNTAX of A is 'Integer32', the format is 'R[]' which means the default value 
                  range of Integer32 between -2147483648 and 2147483647.
               3) The process of Counter, Counter32, Counter64, Unsigned32, Gauge32, INTEGER is the 
                  same as that of Integer32.
               4) If SYNTAX of A is other types such as OCTET STRING, then this object returns default value 'R[]'.
               5) If SYNTAX of A is 'BITS{a(0),b(1)}', the format is 'R[0,0],[1,1]'.
            
            If the value of h3cObjectInfoType is dataLength, the rules below should be followed.
               1) The returned value must have prefix 'L', and followed by string which has the format
                  like 2) to 4), such as 'L[6,6]'.
               2) If SYNTAX of A is 'OCTET STRING(SIZE (6|10..255))', the format is 'L[6,6],[10,255]'.
                  If SYNTAX of A is 'OCTET STRING', the format is like 'L[]' which means the default 
                  length of OCTET STRING between 0 and 65535.
               3) If SYNTAX of A is BITS, the format of it is the same as OCTET STIRNG. But its unit 
                  is in bit, not in byte.
               4) If SYNTAX of A is other types such as INTEGER and IpAddress, this object returns 'L[]'.
            "                               X" 
            The compliance statement for implementing ObjectInfo MIB.
            "                   S" 
            The basic collection of h3cObjectInfo table objects.
            "                        