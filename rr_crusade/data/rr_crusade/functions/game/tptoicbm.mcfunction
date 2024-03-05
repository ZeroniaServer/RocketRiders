##Teleports this tracker entity to corresponding ICBM egg
scoreboard players operation $temp ICBMID = @s ICBMID
tag @s add teleportPair
tag @e[type=egg,tag=ICBM,predicate=custom:icbm_match] add teleportPair
tag @e[type=egg,tag=ICBM,predicate=custom:icbm_match] add teleported
execute if entity @e[type=egg,tag=ICBM,tag=teleportPair] run tp @s @e[type=egg,tag=ICBM,tag=teleportPair,limit=1]

#Trigger conditions
execute unless entity @e[type=egg,tag=ICBM,tag=teleportPair] run tag @s add ICBMTriggered
execute if entity @e[type=egg,tag=ICBM,scores={ICBMtime=30..},tag=teleportPair] run tag @s add ICBMTriggered

#Next two commands disable ICBM near own portals
execute if score $BlueShield crusadehp matches -1000..0 as @e[type=egg,tag=BlueICBM,tag=teleportPair] at @s if entity @s[x=1,y=42,z=-73,dx=22,dy=27,dz=12] run kill @e[type=marker,tag=ICBMtracker,tag=teleportPair]
execute if score $YellowShield crusadehp matches -1000..0 as @e[type=egg,tag=YellowICBM,tag=teleportPair] at @s if entity @s[x=1,y=42,z=61,dx=22,dy=27,dz=12] run kill @e[type=marker,tag=ICBMtracker,tag=teleportPair]

#Trigger ICBM
execute store result score $extrafuse CmdData if entity @e[type=armor_stand,tag=Selection,tag=!ClutterCollector,tag=!Explosive,limit=1]
execute if score $extrafuse CmdData matches 1 at @s[tag=ICBMTriggered] run function everytick:summonicbmtnt1
execute if score $extrafuse CmdData matches 0 at @s[tag=ICBMTriggered] run function everytick:summonicbmtnt2
execute at @s[tag=ICBMTriggered] run function game:tntutilkill
kill @s[tag=ICBMTriggered]

#Reset
tag @s remove teleportPair
tag @e[type=egg,tag=ICBM,tag=teleportPair] remove teleportPair
scoreboard players reset $temp ICBMID