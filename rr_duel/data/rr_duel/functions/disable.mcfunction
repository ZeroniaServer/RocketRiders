execute if entity @s[tag=!WasMolerat] run scoreboard players set $TORAGE CmdData 1
execute as @s[tag=duelEnabled] run function gamemodes:restoresettings
execute if score $TORAGE CmdData matches 1 if entity @s[tag=WasMolerat] run tag @s remove WasMolerat
scoreboard players reset $TORAGE CmdData
tag @s remove duelEnabled
tag @s remove settingsLocked
tag @s remove tyingOff
tag @s remove itemDelayOff
tag @s remove SurpriseEggOff
tag @s remove customBossbar
tag @s remove customSaberMsg
tag @s remove customLeaveHandling
tag @s remove featheredOff
tag @s remove WindDownForce
tag @s remove MoleratOff
tag @s[tag=MoleratWasOn] add Molerat
tag @s[tag=MoleratWasOn] remove MoleratWasOn

tag @s add switchGamemodes