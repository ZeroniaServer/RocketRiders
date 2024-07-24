#Extra for Hypersonic
execute if entity @s[tag=hyperExtraBlue,scores={CmdData=2..}] run setblock ~ ~-4 ~9 tnt
execute if entity @s[tag=hyperExtraBlue,scores={CmdData=2..}] run fill ~ ~-6 ~9 ~1 ~-6 ~9 tnt
execute if entity @s[tag=hyperExtraBlue,scores={CmdData=2..}] run return run kill
execute if entity @s[tag=hyperExtraYellow,scores={CmdData=2..}] run setblock ~ ~-4 ~-10 tnt
execute if entity @s[tag=hyperExtraYellow,scores={CmdData=2..}] run fill ~ ~-6 ~-10 ~-1 ~-6 ~-10 tnt
execute if entity @s[tag=hyperExtraYellow,scores={CmdData=2..}] run return run kill
scoreboard players add @s CmdData 1