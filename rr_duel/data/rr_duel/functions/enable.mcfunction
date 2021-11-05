tag @s remove switchGamemodes

function gamemodes:storesettings
tag @s add customBossbar
tag @s add duelEnabled
tag @s add SurpriseEggOff
tag @s add tyingOff
tag @s add itemDelayOff
tag @s add settingsLocked
tag @s add customSaberMsg
tag @s add customLeaveHandling
tag @s add featheredOff
tag @s add customSpawns
tag @s add WindDownForce
tag @s add WindDown

tag @s[tag=Molerat] add WasMolerat
tag @s[tag=Molerat] remove Molerat

#Item giving time
scoreboard players set @s MaxItemSec 15
scoreboard players set @s MaxItemTime 300

#Blank arena preset
scoreboard players set @s TopDeco 0
scoreboard players set @s MiddleDeco 0
scoreboard players set @s TopCorner 0
scoreboard players set @s BottomDeco 0
scoreboard players set @s PortalDeco 0
function arenaclear:refreshcustomizer