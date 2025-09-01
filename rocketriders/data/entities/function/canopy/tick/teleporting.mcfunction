#Canopy doesn't teleport more than once if shot by Nova Rocket
execute if score @s entity.canopy.movement_cooldown matches 1.. on origin if predicate custom:nova_attached run return run function custom:player_action/forget_all_canopies

execute if score @s entity.canopy.movement_cooldown matches ..39 on origin run tag @s add canopy.player
execute if score @s entity.canopy.movement_cooldown matches ..39 on passengers run ride @a[limit=1,tag=canopy.player] mount @s[predicate=entities:type/canopy/saddle]
execute if score @s entity.canopy.movement_cooldown matches ..39 on origin run tag @s remove canopy.player

execute if score @s entity.canopy.movement_cooldown matches ..1 on origin run title @s actionbar ""

execute if score @s entity.canopy.movement_cooldown matches 40.. on origin run tp @s ~ ~2 ~
execute if score @s entity.canopy.movement_cooldown matches 40.. on origin run tp @s @s
execute if score @s entity.canopy.movement_cooldown matches 40.. run scoreboard players set @s entity.canopy.movement_cooldown 45
execute if score @s entity.canopy.movement_cooldown matches 40.. on passengers run kill @s[predicate=entities:type/canopy/saddle]
