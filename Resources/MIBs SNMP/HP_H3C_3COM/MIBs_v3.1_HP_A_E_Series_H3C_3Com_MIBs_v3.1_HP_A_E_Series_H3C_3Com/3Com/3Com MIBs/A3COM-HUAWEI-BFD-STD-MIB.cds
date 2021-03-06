�-- ============================================================================
-- Copyright (C) 2002 by HUAWEI 3Com TECHNOLOGIES.  All rights reserved
--
-- Description: The MIB is extracted from draft-ietf-bfd-base-04.txt.
-- This file defines a portion of the Management Information Base (MIB) for use 
-- with network management protocols in the Internet community. It describes 
-- managed objects to configure or monitor Bi-Directional Forwarding Detection 
-- on devices supporting this feature.
-- Reference:
-- Version: V1.0
-- History:
-- V1.0 2006-05-15 created by huanglina and xuqigang
-- ============================================================================
   B"A time interval delay in microseconds, which is used by the BFD."              �"The diagnostic code is used by the BFD specifying the local 
            system's reason for the last session state change, and must 
            be initialized to zero(No Diagnostic).
            
            The 'noDiagnostic' means the session keeps state up.
            The 'controlDetectionTimeExpired' indicates the reason the session 
            enters state down from state up is that the control detection time 
            expires. 
            The 'echoFunctionFailed' indicates the reason the session 
            enters state down from state up is that Echo Function fails.
            The 'neighborSignaledSessionDown' indicates the reason the session 
            enters state down from state up is that neighbor signals session Down.
            The 'forwardingPlaneReset' indicates the reason the session 
            enters state down from state up is that the Forwarding Plane resets.
            The 'pathDown' indicates the reason the session 
            enters state down from state up is that the path state is down.
            The 'concatenatedPathDown' indicates the reason the session 
            enters state down from state up is that the concatenated path state 
            is down.
            The 'administrativelyDown' indicates the reason the session 
            enters state down from state up is that the session is kept 
            administratively down by entering the AdminDown state.
            The 'reverseConcatenatedPathDown' indicates the reason the session 
            enters state down from state up is that reverse concatenated path 
            state is down.            
          "               2"An index used to uniquely identify BFD sessions."                                                     7"Bidirectional Forwarding Management Information Base." @"huawei-3com, Inc.
          Email:  huanglina@huawei-3com.com" "200605161200Z" "The first version. "       &-- 08 May 2006 12:00:00 Beijing time
          p"A notification sent when an session changes
            state, entering state up or entering state down.
            The session will enter state up finishing three times handshakes
            , and will enter state down when the communication path is out 
            of work.
                        
            When the h3cBfdSessState's value is state up, the session enters 
            state up, and the session enters state down when the 
            h3cBfdSessState's value is state down. 
           
            The h3cBfdSessIfIndex contains an interface's index under which 
            the BFD session runs.
            
            The h3cBfdSessIndex contains an index which represents a
            unique BFD session on this device.            
           
            The h3cBfdSessState is the state of the running BFD session.
            "                 �"A notification sent when receiving a session
            with an authentication fail. 
           
            The h3cBfdIfIndex is an index which represents a unique BFD 
            interface on this device. 
            "                         8"It indicates the BFD session's current version number." ,"BFD Version 1 (draft-ietf-bfd-base-04.txt)"                    ("A system may take either an active role or a passive role in 
            session initialization. A system taking the active role must 
            send BFD control packets for a particular session, regardless 
            of whether it has received any BFD packets for that session. 
            A system taking the passive role must not begin sending BFD 
            packets for a particular session until it has received a BFD 
            packet for that session, and thus has learned the remote system's 
            discriminator value."                       �"This variable enables the emission of h3cBfdSessStateChange and
            h3cBfdSessAuthFail notifications if this variable is set to 
            true(1); otherwise these notifications are not emitted."                       >"This Table describes the BFD interface specific information."                       >"This Entry describes the BFD interface specific information."                       e"This variable contains an index that represents a
            unique BFD interface on this device."                       �"This variable defines the minimum interval, in
            microseconds, that the interface would like to use when
            transmitting BFD Control packets."                       �"This variable defines the minimum interval, in, 
            microseconds, between received  BFD Control packets the
            local system is capable of supporting."                      8"The desired detect time multiplier for BFD control packets.
            The negotiated control packet transmission interval, multiplied
            by this variable, will be the detection time for this session
            (as seen by the remote system.)  The variable must be a
            nonzero integer."                      "The Authentication Type used for this interface. This
            field is valid only when the Authentication Present bit is set.
            
            The 'none' indicates the session doesn't support 
            authentication.
            The 'simple' indicates the session supports simple 
            password authentication. 
            The 'md5' indicates the session supports Keyed MD5 
            authentication.
            The 'mmd5' indicates the session supports 
            Meticulous Keyed MD5 authentication.  
            The 'sha1' indicates the session supports Keyed SHA1 
            authentication.
            The 'msha1' indicates the session supports 
            Meticulous Keyed SHA1 authentication.            
            "                       ("This table describes the BFD sessions." ,"BFD Version 1 (draft-ietf-bfd-base-04.txt)"                     ("This Entry describes the BFD sessions."                       \"This variable contains an interface's index under which the BFD
            session runs."                       d"This variable contains an index which represents a
            unique BFD session on this device."                      �"This variable contains an ID used to indicate
            a local application which owns or maintains this
            BFD session. Note, a BFD session can support several route 
            protocols. This is a bit-map of possible conditions.
 	    The corresponding bit positions are:
 	    |0        |none        |
 	    |1        |ospf        |
 	    |2        |isis        |
 	    |3        |bgp         |
 	    |4        |mpls        |
 	   "                       p"This variable defines the local discriminator for this BFD
            session, used to uniquely identify it."                       p"This variable defines the session discriminator chosen
            by the remote system for this BFD session."                       ]"The UDP Port for BFD. The default value is the
            well-known value for this port." ,"BFD Version 1 (draft-ietf-bfd-base-04.txt)"                    �"This variable defines current operating mode that BFD
            session is running in.            
            
            The primary mode which the BFD session runs in is known as 
            Asynchronous mode.  In this mode, the systems periodically 
            send BFD Control packets to one another, and if a number of
            those packets in a row are not received by the other system, 
            the session is declared to be down.
   
            The second mode is known as Demand mode.  In this mode, it is 
            assumed that each system has an independent way of verifying 
            that it has connectivity to the other system.  Once a BFD 
            session is established, the systems stop sending BFD Control 
            packets, except when either system feels the need to verify 
            connectivity explicitly, in which case a short sequence of BFD 
            Control packets is sent, and then the protocol quiesces.
            
            An adjunct to both modes is the Echo function.  When the Echo
            function is active, a stream of BFD Echo packets is transmitted 
            in such a way as to have the other system loop them back through 
            its forwarding path. If a number of packets of the echoed data 
            stream are not received, the session is declared to be down.  
            The Echo function may be used with either Asynchronous or 
            Demand modes.
   
            The 'asynchModeWOEchoFun' indicates this BFD session operates in 
            the Asynchronous mode, and doesn't support the Echo Function.
            
            The 'demandModeWOEchoFunction' indicates this BFD session operates in 
            the Demand mode, and doesn't support the Echo Function.
            
            The 'asyncModeWEchoFun' indicates this BFD session operates in 
            the Asynchronous mode, and also supports the Echo Function.
            
            The 'demandModeWEchoFunction' indicates this BFD session operates in 
            the Demand mode, and also supports the Echo Function.                           
           "                      D"This object defines IP address type of the interface
            associated with this BFD session.

            Only values unknown(0), ipv4(1) or ipv6(2)
            have to be supported.

            A value of unknown(0) is allowed only when
            the outgoing interface is of type point-to-point, or
            when the BFD session is not associated with a specific
            interface.

            If any other unsupported values are attempted in a set
            operation, the agent must return an inconsistentValue
            error.
           "                      +"This variable defines IP address of the local interface
            from which the BFD packets is transmitted.
            It can also be used to enabled BFD on a specific
            interface. The value is set to zero when BFD session is not
            associated with a specific interface."                      -"This variable defines IP address of the remote interface
            from which the BFD packets is transmitted.
            It can also be used to enabled BFD on a specific
            interface. The value is set to zero when BFD session is not
            associated with a specific interface. "                       �"The BFD diagnostic code for the BFD session was down with the
            neighbor. If no such event happens this object contains a zero
            value."                      	�"The state of the running BFD session.
           
            There are three states through which a session normally 
            proceeds, two for establishing a session (Init and Up) 
            and one for tearing down a session (Down.)  This allows 
            a three-way handshake for both session establishment and 
            session teardown (assuring that both systems are aware of 
            all session state changes.)  A fourth state (AdminDown)
            exists so that a session can be administratively put down 
            indefinitely.
            
            The Down state means that the session is down (or has just been 
            created.) A session remains in Down state until the remote 
            system indicates that it agrees that the session is down by 
            sending a BFD Control packet with the State field set to 
            anything other than Up.  If that packet signals Down state, 
            the session advances to Init state;  if that packet signals 
            Init state, the session advances to Up state.
            
            Init state means that the remote system is 0communicating, 
            and the local system desires to bring the session up, but 
            the remote system does not yet realize it.  A session will 
            remain in Init state until either a BFD Control Packet is 
            received that is signaling Init or Up state (in which case 
            the session advances to Up state) or until the detection time 
            expires, meaning that communication with the remote system 
            has been lost (in which case the session advances to Down
            state.)

            Up state means that the BFD session has successfully been
            established, and implies that connectivity between the systems 
            is working.  The session will remain in the Up state until either 
            connectivity fails, or the session is taken down administratively.
            If either the remote system signals Down state, or the detection 
            time expires, the session advances to Down state.

            AdminDown state means that the session is being held 
            administratively down.  This causes the remote system to enter 
            Down state, and remain there until the local system exits 
            AdminDown state.            
           "                      *"This variable indicates whether the local system
            can continue to work while the control plane is out 
            of work. Specifically, it is set to true(1) if the 
            local system is independent of the control plane. Otherwise, 
            the value is set to false(0)"                       �"This variable indicates that the local system wants
            to use Authentication. Specifically, it is set
            to true(1) if the local system wishes the session
            to be authenticated or false(0) if not."                       �"This variable indicates that the local system wants 
            to use Demand mode. Specifically, it is set
            to true(1) if the local system wishes to use
            Demand mode or false(0) if not"                       &"The table defines BFD session state."                       �"An entry in this table is created by a BFD-enabled node for
            every BFD Session. It defines BFD session statistics."                       M"The total number of BFD messages received by this BFD
            session."                       <"The total number of BFD messages sent by this BFD session."                       l"The number of times this session has gone into the Down
            state since the router last rebooted."                       d"The number of  packets the local system has discarded
            since the router last rebooted."                       m"The number of packets the local system has failed to transmit 
            since the router last rebooted."                       ,"The table defines BFD session performance."                       �"An entry in this table is created by a BFD-enabled node for 
            every BFD session. It defines BFD Session performance."                       �"The value of sysUpTime when the session was created. If no such
            create event exists this object contains a zero value."                       �"The value of sysUpTime when the last time communication was lost.
            If no such up event exists this variable contains a zero value."                       �"The value of sysUpTime when the last time communication was lost
            with the neighbor. If no such event exist this variable contains
            a zero value."                                                      