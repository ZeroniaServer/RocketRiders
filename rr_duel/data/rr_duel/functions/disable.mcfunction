execute as @s[tag=duelEnabled] run function gamemodes:restoresettings
tag @s remove duelEnabled
tag @s remove settingsLocked
function arenaclear:refreshcustomizer
tag @s remove tyingOff
tag @s remove itemDelayOff
tag @s remove SurpriseEggOff
tag @s remove customBossbar
tag @s remove customSaberMsg
tag @s remove customLeaveHandling
tag @s remove featheredOff
tag @s remove customSpawns
tag @s remove WindDownForce
tag @s add switchGamemodes