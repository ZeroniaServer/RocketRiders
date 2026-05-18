execute unless entity @e[x=0,type=armor_stand,tag=Selection,tag=chaseEnabled] run return fail

#Flag placement
execute unless predicate game:modifiers/hardcore/on run summon marker 12.0 64.0 64.0 {Tags:["checkered_flag"]}
execute if predicate game:modifiers/hardcore/on run summon marker 12.0 64.0 65.0 {Tags:["checkered_flag"]}
execute positioned as @e[limit=1,x=0,type=marker,tag=checkered_flag] run function rr_chase:game/checkered_flag/place

#Stair placement
kill @e[x=0,type=marker,tag=chaseStairs]
summon marker 10 63 66 {Tags:["chaseStairs"]}
execute positioned 10 63 66 run function rr_chase:arenaclear/stairleft
execute positioned 14 63 66 run function rr_chase:arenaclear/stairright
fill 11 63 64 13 63 62 obsidian replace white_stained_glass
execute if predicate game:modifiers/hardcore/on run fill 11 63 64 13 63 62 obsidian replace yellow_stained_glass

#Chase blocks
function rr_chase:chaseblocks/killall
scoreboard players set $ChaseBlocks CmdData 150
function rr_chase:chaseblocks/spawn
