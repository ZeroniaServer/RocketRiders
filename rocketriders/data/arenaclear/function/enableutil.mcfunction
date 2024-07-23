##Enables all Utility items
tag @s[tag=!shieldWasOn] add rngShield
tag @s[tag=!arrowsWasOn] add rngArrows
tag @s[tag=!vortexWasOn] add rngVortex
tag @s[tag=!obshieldWasOn] add rngObshield
tag @s[tag=!splashWasOn] add rngSplash
tag @s[tag=!canopyWasOn] add rngCanopy
tag @s[tag=!fireballWasOn] add rngFireball
tag @s[tag=!novaWasOn] add rngNova
tag @s[tag=!utilWasOn] remove utilOff
scoreboard players set @e[x=0,type=armor_stand,tag=Selection,limit=1] refreshsigns 1