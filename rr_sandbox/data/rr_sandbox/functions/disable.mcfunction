execute store success score $sblast CmdData if entity @s[tag=sandboxLast]
execute if entity @s[tag=sandboxEnabled] run function gamemodes:restoresettings
execute if score $sblast CmdData matches 1 run tag @s add sandboxLast
tag @s remove sandboxEnabled
tag @s remove noSabers
tag @s remove itemDelayOff
tag @s remove MinuteOff
tag @s remove WindDownOff
tag @s remove SurpriseEggOff
tag @s remove normalForce
tag @s remove lightningForce
tag @s remove heavyForce
tag @s remove utilForce
tag @s remove customBossbar
tag @s add switchGamemodes