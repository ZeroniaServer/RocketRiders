
#Canopy forgets owner if crossing in Rocket Residers
execute if predicate game:modifiers/rocket_residers/on on origin if entity @s[predicate=custom:residers] run return run function custom:player_action/forget_all_canopies

#Canopy ends Nova effects if teleporting in first tick
execute if score @s entity.canopy.movement_cooldown matches 0 on origin run function custom:player_action/forget_nova_attach
#Canopy doesn't teleport more than once if shot by Nova Rocket
execute if score @s entity.canopy.movement_cooldown matches 1.. on origin if predicate custom:nova_attached run return run function custom:player_action/forget_all_canopies

#Reset the motion before teleporting (thanks to @dragonmaster95 for the suggestion!)
execute if score @s entity.canopy.movement_cooldown matches 0 on origin run tp @s @s
#The teleport window for players on Canopies is 2 seconds. This is to ensure that falling players arrive on the Canopy safely and to reduce lag-induced oddities with Canopies.
execute if score @s entity.canopy.movement_cooldown matches 0..39 on origin run function custom:canopy_teleporting_effect/add
execute if score @s entity.canopy.movement_cooldown matches 0..39 on origin positioned as @s run tp @s[distance=0.01..] @s
execute if score @s entity.canopy.movement_cooldown matches 0..39 on origin align xyz positioned ~0.5 ~2 ~0.5 run tp @s[distance=0.01..] ~ ~ ~
execute if score @s entity.canopy.movement_cooldown matches 2.. on origin run effect clear @s slow_falling

execute if score @s entity.canopy.movement_cooldown matches 40.. on origin run function custom:canopy_teleporting_effect/remove
