execute if entity @e[tag=ChaseBlock,distance=..2] run scoreboard players add $ChaseBlocks CmdData 1

execute unless entity @e[tag=ChaseBlock,distance=..2] at @s if entity @s[scores={CmdData=0..40}] run setblock ~ ~ ~ red_stained_glass
execute unless entity @e[tag=ChaseBlock,distance=..2] at @s if entity @s[scores={CmdData=41..50}] run setblock ~ ~ ~ purple_stained_glass
execute unless entity @e[tag=ChaseBlock,distance=..2] at @s if entity @s[scores={CmdData=51..80}] run setblock ~ ~ ~ cyan_stained_glass
execute unless entity @e[tag=ChaseBlock,distance=..2] at @s if entity @s[scores={CmdData=81..}] run setblock ~ ~ ~ tinted_glass

execute unless entity @e[tag=ChaseBlock,distance=..2] at @s if entity @s[scores={CmdData=0..40}] run summon marker ~ ~ ~ {Tags:["ChaseBlock","MissileBlock"]}
execute unless entity @e[tag=ChaseBlock,distance=..2] at @s if entity @s[scores={CmdData=41..50}] run summon marker ~ ~ ~ {Tags:["ChaseBlock","UtilBlock"]}
execute unless entity @e[tag=ChaseBlock,distance=..2] at @s if entity @s[scores={CmdData=51..80}] run summon marker ~ ~ ~ {Tags:["ChaseBlock","ArrowBlock"]}
execute unless entity @e[tag=ChaseBlock,distance=..2] at @s if entity @s[scores={CmdData=81..}] run summon marker ~ ~ ~ {Tags:["ChaseBlock","CrystalBlock"]}