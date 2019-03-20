;;; CAREER DAY DEFINES ;;;

; addresses 

!ADDRESS_expmod = $F000A0
!ADDRESS_abpmod = $F00100
!ADDRESS_progressiverewards = $F02000
!ADDRESS_chesthook = $F03000
!ADDRESS_jobindexing = $F00400
!ADDRESS_magicreward = $F00480
!ADDRESS_customitem1 = $F01200
!ADDRESS_customitem2 = $F01300
!ADDRESS_STARTROM = $FF0000
!ADDRESS_ENDROM = $FFFFFF
!ADDRESS_shopindexing = $F00980
!ADDRESS_encounterhook = $F00000
!ADDRESS_worldmaphook = $F00050
!ADDRESS_menuhook = $F00500
!ADDRESS_NEWEVENT_jobsetting = $F01000
!ADDRESS_NEWEVENT_conditionalvehicles = $F01100
!ADDRESS_NEWEVENT_conditionaleventflags = $F01180
!ADDRESS_NEWEVENT_conditionalrifttablet = $F01800
!ADDRESS_originalmagicprices = $F80000
!ADDRESS_shophook = $F00680
!ADDRESS_shopcheckreward = $F00700
!ADDRESS_shopawardreward = $F00800
!ADDRESS_shopmagicsword = $F00900
!ADDRESS_walkspeedhook = $F00180
!ADDRESS_walkspeedtownhook = $F001E0
!ADDRESS_canalfix = $F10000
!ADDRESS_keyitems = $F00A00
!ADDRESS_xycoordhook = $F01900
!ADDRESS_keyitemlocks = $F01400

!RELOCATE_conditional_events = $F04000
!RELOCATE_conditional_events_le = $00, $40, $F0
!RELOCATE_conditional_events_le_offset1 = $01, $40, $F0
!RELOCATE_conditional_events_le_offset3 = $03, $40, $F0

; ram_values

!unlockedjobs1 = $0840
!unlockedjobs2 = $0841
!unlockedjobs3 = $0842
!eventflags = $0A4A
!rewardid = $12
!typeid = $11
!rewardconfig = $0970
!loopcounter = $1ED7
!progmagicentry = $1ED8
!progabilityentry = $1ED8
!currentability = $1ED6
!progmagictable = $F80400
!progabilitytable = $F80600
!currentmagic = $1ED6
!unlockedmagic = $0950

!unlockedability = $08F7
!1pabilities = $08F7
!2pabilities = $090B
!3pabilities = $091F
!4pabilities = $0933

!1pabilitiescount = $08F3
!2pabilitiescount = $08F4
!3pabilitiescount = $08F5
!4pabilitiescount = $08F6

!pointerloc = $7E0153
!pointerloc2 = $7E0156
!validater = $7E01C7


!input = $7E0114
!input2 = $7E0B03
!configmenucheck = $7E0159 ; when this is #$06, player is in config menu
!configmenucheck2 = $7E017B ; when this is #$f6, player is in config menu
!menutype = $7E0143
!itemmenuvalidater = $7E01E0
!itemmenuloc = $7E0200
!speedvalue = $7E0BC0
!itemboxwriter = $7E7511
!encounterswitch = $7E0973
!lastframesave = $7EF87E
!destinationindex = $7E1E20
!destinationdata1 = $E79400
!destinationdata2 = $E79420
!eventrewardindex = $C0FAB0
!typeid = $11
!rewardid = $12
!unusedram1 = $1F10
!unusedram2 = $1F11

!worldmapflag = $0B53 ; if this is 1, not in world map
!walkinginput = $0b03
!airshipspeed = #$0020

!rewarditemset = $001E20
!mapid = $0AD6
!xycoordcheck = $0AD8