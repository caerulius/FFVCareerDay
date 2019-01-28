FFV: Project Demi

https://github.com/caerulius/FFVCareerDay

Project Demi is a quality of life hack for Final Fantasy V, designed for players who want to experience FFV hassle-free. Faster movement & abbreviated cutscenes let the player progress quickly while leaving the core gameplay and mechanics unaltered.

Features
- Cutscenes are removed or abbreviated. The design approach was to keep the spirit of the game in tact, but to largely cut out content that detracts from core gameplay.
- Both default speed and dash speed is increased. World map allows for dashing, and vehicle speeds are doubled.
- Destination information is located in the "Key" area in the item menu. While playing the main game, it is possible the player becomes lost as a result of abbreviated cutscenes. 'Destination' will guide the player on where to go next.
- Encounters can be toggled on/off within the in-game "Config" menu.
- The abilities "Dash", "Passages", "Learning", and "Pitfalls" are always active.

Optional features
- Patches for ABP/EXP modifications are available, providing a 2x or 4x multiplier to these rewards.
- A patch for awarding boss EXP is available. With this patch, fighting bosses alone will yield a Level ~35 party throughout the game, fluctuating with optional bosses.

Patch
- IPS patches are available within the patches directory. Use Lunar IPS or a similar IPS patcher to apply directly to a Final Fantasy V ROM with the RPGe patch applied.

Please patch main.ips first, then patch any other patches.

ffv_project_demi_main.ips    (primary patch)
ffv_project_demi_expabp2.ips (2x multiplier to EXP/ABP)
ffv_project_demi_expabp4.ips (4x multiplier to EXP/ABP)
ffv_project_demi_boss.ips    (award boss EXP to a level ~35 endgame curve)

Other notes
- Most gameplay elements are unchanged, where the player progresses events & bosses normally through the game. In some cases, in the spirit of creating fluid gameplay, some changes were implemented. Currently there are the following changes:
    - After warping from World 1 to World 2, the Solitary Island tent & Abductor sequence was removed. The player will transition straight from World 1 to playing as Galuf in Exdeath's castle in World 2.
    - After the Guardians battle in Mua Forest, the Galuf x Exdeath cutscene battle is removed. After battle, Cara will receive the Bracelet, then the game will continue.

Known bugs
    In the Moogle Forest area in World 2, dash speed on the world map will lock based whether or not the player is in an encounter area or not. This is a known side-effect of how dashing on the world map works, which is triggered when encounter-less tiles are present.


FF5: Project Demi Changelog
1.1
Fixed setting event flags at Sandworm and final Exdeath cutscenes
Fixed events not properly healing at certain locations (Zokk, Karlabos, W1 Steamship, W3 start)
Included an auto-patcher 'ProjectDemifier.exe', which will handle patching any ROM file supplied (native Japanese or RPGe English patch, headered or unheadered)
1.0
Initial release