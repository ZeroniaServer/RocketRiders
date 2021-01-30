##Prepares Stinging Shields to be cleared from global coordinate storage
#Summon new AEC entity
summon area_effect_cloud 0 0 0 {Tags:[BeeShield],Duration:2000000000}

#Set position from global storage
execute as @e[type=area_effect_cloud,tag=BeeShield,limit=1] run data modify entity @s Pos[0] set from storage rr_powerups:beeshieldpos x[0]
execute as @e[type=area_effect_cloud,tag=BeeShield,limit=1] run data modify entity @s Pos[1] set from storage rr_powerups:beeshieldpos y[0]
execute as @e[type=area_effect_cloud,tag=BeeShield,limit=1] run data modify entity @s Pos[2] set from storage rr_powerups:beeshieldpos z[0]

#Remove necessary blocks
execute as @e[tag=BeeShield,type=area_effect_cloud,limit=1] at @s run fill ~-2 ~-4 ~ ~2 ~4 ~ air
kill @e[tag=BeeShield,type=area_effect_cloud,limit=1]

#Remove this set of coordinates in preparation for the next one
data remove storage rr_powerups:beeshieldpos x[0]
data remove storage rr_powerups:beeshieldpos y[0]
data remove storage rr_powerups:beeshieldpos z[0]

#Remove 1 from counter
scoreboard players remove @s[scores={beeShieldCount=1..}] beeShieldCount 1

#Recursion condition - as long as there's still coords stored, keep going
execute if entity @s[scores={beeShieldCount=1..}] run function rr_powerups:arenaclear/preparebeeshield

#End condition - clear arrays
execute if entity @s[scores={beeShieldCount=0}] run data modify storage rr_powerups:beeshieldpos x set value []
execute if entity @s[scores={beeShieldCount=0}] run data modify storage rr_powerups:beeshieldpos y set value []
execute if entity @s[scores={beeShieldCount=0}] run data modify storage rr_powerups:beeshieldpos z set value []