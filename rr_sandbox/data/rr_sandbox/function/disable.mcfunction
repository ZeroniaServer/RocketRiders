execute store success score $sblast CmdData if entity @s[tag=sandboxLast]
execute if entity @s[tag=sandboxEnabled] run function gamemodes:restoresettings
execute if score $sblast CmdData matches 1 run tag @s add sandboxLast
tag @s remove sandboxEnabled
tag @s remove noSabers
tag @s remove customSaberMsg
tag @s remove itemDelayOff
tag @s remove stackingOn
tag @s remove hotbarLimitOff
tag @s remove MinuteOff
tag @s[tag=MinuteWasOn] add Minute
tag @s remove MinuteWasOn
tag @s remove WindDownOff
tag @s[tag=WindDownWasOn] add WindDown
tag @s remove WindDownWasOn
tag @s remove SurpriseEggOff
tag @s[tag=SurpriseEggWasOn] add SurpriseEgg
tag @s remove SurpriseEggWasOn
tag @s remove ChaosOff
tag @s[tag=ChaosWasOn] add Chaos
tag @s remove ChaosWasOn
tag @s remove normalForce
tag @s remove lightningForce
tag @s remove heavyForce
tag @s remove utilForce
tag @s remove hasBees
tag @s remove customBossbar
tag @s add switchGamemodes