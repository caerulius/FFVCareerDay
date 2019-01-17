# FFV: Project *Demi*

**Project *Demi*** is a quality of life hack for Final Fantasy V, designed for players who want to experience FFV hassle-free. Faster movement & abbreviated cutscenes let the player progress quickly while leaving the core gameplay and mechanics unaltered.

**Project *Demi*** will be the base for an open world/randomizer mod currently titled **Career Day**, currently in development. 

# Trailer
<a href="http://www.youtube.com/watch?feature=player_embedded&v=Cw4XK67PteI
" target="_blank"><img src="http://img.youtube.com/vi/Cw4XK67PteI/0.jpg" 
alt="" width="240" height="180" border="10" /></a>

#  Features
- Cutscenes are removed or abbreviated. The design approach was to keep the spirit of the game in tact, but to largely cut out content that detracts from core gameplay.
- Both default speed and dash speed is increased. World map allows for dashing, and vehicle speeds are doubled.
- Destination information is located in the "Key" area in the item menu. While playing the main game, it is possible the player becomes lost as a result of abbreviated cutscenes. 'Destination' will guide the player on where to go next. 
- Encounters can be toggled on/off within the in-game "Config" menu. 
- The abilities "Dash", "Passages", "Learning", and "Pitfalls" are always active. 
#### Optional features
- Patches for ABP/EXP modifications are available, providing a 2x or 4x multiplier to these rewards. 
- A patch for awarding boss EXP is available. With this patch, fighting bosses alone will yield a Level ~35 party throughout the game, fluctuating with optional bosses. 

# Patch
IPS patches are available within the `patches` directory. Use [Lunar IPS](https://fusoya.eludevisibility.org/lips/) or a similar IPS patcher to apply directly to a Final Fantasy V ROM with the [RPGe patch](http://www.romhacking.net/translations/353/) applied. 

Please patch `main.ips` first, then patch any other patches. 
```
ffv_project_demi_main.ips    (primary patch)
ffv_project_demi_expabp2.ips (2x multiplier to EXP/ABP)
ffv_project_demi_expabp4.ips (4x multiplier to EXP/ABP)
ffv_project_demi_boss.ips    (award boss EXP to a level ~35 endgame curve)
```

# Other notes
- Most gameplay elements are unchanged, where the player progresses events & bosses normally through the game. In some cases, in the spirit of creating fluid gameplay, some changes were implemented. Currently there are the following changes:
  - After warping from World 1 to World 2, the Solitary Island tent & Abductor sequence was removed. The player will transition straight from World 1 to playing as Galuf in Exdeath's castle in World 2. 
  - After the Guardians battle in Mua Forest, the Galuf x Exdeath cutscene battle is removed. After battle, Cara will receive the Bracelet, then the game will continue. 
  
# Known bugs
- In the Moogle Forest area in World 2, dash speed on the world map will lock based whether or not the player is in an encounter area or not. This is a known side-effect of how dashing on the world map works, which is triggered when encounter-less tiles are present. 
  
# [Discord](https://discord.gg/6Yw6HbK)
Our community Discord for development is [located here](https://discord.gg/6Yw6HbK), open to everyone. Please direct all identified gameplay bugs and comments here. 

# Studio Big Bridge
<img src="https://i.imgur.com/crHvpA8.png" alt="drawing" width="300">

### Development Team
- [@caerulius](https://twitter.com/caerulius) 
- [@cleartonic](https://twitter.com/cleartonic)

# Special Thanks
- The RPGe team's [original translation of FFV](http://www.romhacking.net/translations/353/). We would not be working on this project without this team's hard work, setting the original standard for translations and hacking
- SamuraiGoroh for providing robust documentation and initial guidance during our research of all things related to Final Fantasy V data & hacking
- Alpha testing provided by [Knox](https://twitter.com/knoxisbest), [Rename](https://twitter.com/SpeedRunesLive), and [Megiddo](https://twitter.com/megiddo_ta)
- Various members of the Slickproductions community who helped answer one-off questions
