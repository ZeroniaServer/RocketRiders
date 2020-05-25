kill @e[tag=SBitem,type=item]
execute as @a unless entity @s[team=!Blue,team=!Yellow] run clear @s #rr_sandbox:clear
execute as @a unless entity @s[team=!Blue,team=!Yellow] run effect clear @s mining_fatigue
execute as @s[scores={endtimer=1}] run gamerule doTileDrops false
tag @s add sandboxLast