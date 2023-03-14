#Extra for Hypersonic
execute at @s[tag=hyperExtraBlue,scores={CmdData=2..}] at @s run setblock ~ ~-4 ~9 tnt
execute at @s[tag=hyperExtraBlue,scores={CmdData=2..}] at @s run fill ~ ~-6 ~9 ~1 ~-6 ~9 tnt
execute at @s[tag=hyperExtraBlue,scores={CmdData=2..}] run kill @s
execute at @s[tag=hyperExtraYellow,scores={CmdData=2..}] at @s run setblock ~ ~-4 ~-10 tnt
execute at @s[tag=hyperExtraYellow,scores={CmdData=2..}] at @s run fill ~ ~-6 ~-10 ~-1 ~-6 ~-10 tnt
execute at @s[tag=hyperExtraYellow,scores={CmdData=2..}] run kill @s
scoreboard players add @s CmdData 1