
#Canopy forgets owner if crossing in Rocket Residers
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=Residers] on origin if entity @s[predicate=custom:residers] run return run function custom:player_action/forget_all_canopies

#Canopy doesn't teleport more than once if shot by Nova Rocket
execute if score @s entity.canopy.movement_cooldown matches 1.. on origin if score @s novattach matches 1..15 run return run function custom:player_action/forget_all_canopies
#Canopy ends Nova effects if teleporting in first tick
execute if score @s entity.canopy.movement_cooldown matches 0 on origin run scoreboard players set @s[scores={novattach=1..15}] novattach 16

#Reset the motion before teleporting (thanks to @dragonmaster95 for the suggestion!)
execute if score @s entity.canopy.movement_cooldown matches 0 on origin run tp @s @s
#The teleport window for players on Canopies is 2 seconds. This is to ensure that falling players arrive on the Canopy safely and to reduce lag-induced oddities with Canopies.
execute if score @s entity.canopy.movement_cooldown matches 0..39 on origin positioned as @s run tp @s[distance=0.01..] @s
execute if score @s entity.canopy.movement_cooldown matches 0..39 on origin align xyz positioned ~0.5 ~2 ~0.5 run tp @s[distance=0.01..] ~ ~ ~
execute if score @s entity.canopy.movement_cooldown matches 0..39 on origin run attribute @s minecraft:safe_fall_distance modifier add rocketriders:canopy 100 add_value
execute if score @s entity.canopy.movement_cooldown matches 0..39 on origin run attribute @s minecraft:jump_strength modifier add rocketriders:canopy -1 add_multiplied_total
execute if score @s entity.canopy.movement_cooldown matches 0..39 on origin run attribute @s minecraft:movement_speed modifier add rocketriders:canopy -1 add_multiplied_total

execute if score @s entity.canopy.movement_cooldown matches 40.. on origin run attribute @s minecraft:safe_fall_distance modifier remove rocketriders:canopy
execute if score @s entity.canopy.movement_cooldown matches 40.. on origin run attribute @s minecraft:jump_strength modifier remove rocketriders:canopy
execute if score @s entity.canopy.movement_cooldown matches 40.. on origin run attribute @s minecraft:movement_speed modifier remove rocketriders:canopy
