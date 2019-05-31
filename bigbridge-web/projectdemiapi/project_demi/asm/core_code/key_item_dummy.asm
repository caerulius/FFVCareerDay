hirom


; this is set up for project demi to compile. If you wrote key items to rewards in project demi, something's wrong
org !ADDRESS_PROJECT_DEMI_DUMMYSPACE
RTL
SetKeyItemBits:
ORA $0A00, x
STA $0A00, x
RTL
; Don't think this works correctly, use TRB method instead
UnsetKeyItemBits:
AND $0A00, x
STA $0A00, x
RTL


org !ADDRESS_keyitems

KeyItemTornaCanal:
RTL

KeyItemWalseKey:
RTL

KeyItemSteamshipKey:
RTL

KeyItemIfritsFire:
RTL

KeyItemSandWormBait:
RTL

KeyItemAdamantite:
RTL


KeyItemBigBridge:
RTL

KeyItemMoogleSuit:
RTL


KeyItemSubmarineKey:
RTL

KeyItemHiryuuCall:
RTL

KeyItemElderBranch:
RTL

KeyItemBracelet:
RTL

KeyItemAntiBarrier:
RTL

KeyItemPyramidPage:
RTL
KeyItemShrinePage:
RTL
KeyItemTrenchPage:
RTL
KeyItemFallsPage:
RTL

KeyItem1stTablet:
RTL
KeyItem2ndTablet:
RTL
KeyItem3rdTablet:
RTL
KeyItem4thTablet:
RTL