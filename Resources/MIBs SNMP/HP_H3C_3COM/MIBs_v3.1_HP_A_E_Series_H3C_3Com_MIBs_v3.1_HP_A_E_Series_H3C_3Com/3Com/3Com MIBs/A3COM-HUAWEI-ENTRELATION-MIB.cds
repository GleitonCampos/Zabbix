�-- =================================================================
-- Copyright (C) 2001-2002 by  HUAWEI-3COM TECHNOLOGIES. All rights reserved.
--
-- Description:HUAWEI-3COM ENTITY RELATION MIB
-- Version: V1.2
-- History:
--   V1.0(Initial version) 19th Aug 2004
--   V1.1 2004-09-10 Exchange MIB objects' sequence, including h3cEntRelationType 
--                   and h3cEntityIndex.
--                   Change subidentifier of h3cEntRelationConformance from 3 to 2.
--   V1.2 2004-10-12 updated by gaolong
--        Remove h3cEntityIndex, h3cEntRelationType from h3cEntRelationGroup 
--        because they are not-accessible objects.
-- =================================================================
--
  �"entRelationType describe the relation type of the two entities
				(indicated by entityIndex and relatedEntityIndex) .
				stackport: this port is a stack port. 
				entityIndex is the default uplinkport index, 
				and relatedEntityIndex is the default downlinkport index.
				comboport: this port is a combo port. 
				entityIndex is the default active port index, 
				and relatedEntityIndex is the default inactive port index."                    d"The private mib file includes the general relation information
				information of entities.
				Entity MIB is used to express the physical location of the physical
				entities. Other relations, such as stack port pair and combo port 
				pair, are not suitable to be implemented in Entity MIB. So this mib is 
				used to  express these relations. " �"Platform Team Beijing Institute Huawei-3com Tech, Inc.
				Http://www.huawei-3com.com                                       
				E-mail:support@huawei-3com.com "                      "Entity MIB is used to express the physical location of 
				the physical entities. Other relations, such as stack 
				port pair and combo port pair, are not suitable to be 
				implemented in Entity MIB. This MIB is used to express 
				these relations. "                       5"The information about a particular physical entity."                       �"The index of h3cEntRelationTable.
				entRelationType describe the relation type of the two 
				entities(indicated by entityIndex and relatedEntityIndex) "                       �"The index of h3cEntRelationTable.
				entityIndex is the index of the entity.
				This index is identical to entPhysicalIndex in ENTITY-MIB"                       �"The index of h3cEntRelationTable.
				relatedEntityIndex is the entity index that entityIndex related to, 
				This index is identical to entPhysicalIndex in ENTITY-MIB"                               ;"The compliance statement for systems supporting this MIB."                   ("Standard HUAWEI Entity Relation group."                        