scoreboard players reset * gamemode_components
scoreboard players set $settings_locked gamemode_components 1
scoreboard players set $main_item/bow gamemode_components 1

tag @s remove switchGamemodes

function gamemodes:storesettings
function modifiers:disablemodifiers
tag @s add customBossbar
tag @s add duelEnabled
tag @s add SurpriseEggOff
tag @s add tyingOff
tag @s add itemDelayOff
tag @s add customSaberMsg
tag @s add customLeaveHandling
tag @s add featheredOff
tag @s add WindDownForce
tag @s add WindDown

#Item giving time
scoreboard players set @s MaxItemSec 15
scoreboard players set @s MaxItemTime 300

#Blank arena preset
scoreboard players set @s TopDeco 0
scoreboard players set @s MiddleDeco 0
scoreboard players set @s TopCorner 0
scoreboard players set @s BottomDeco 0
scoreboard players set @s PortalDeco 0