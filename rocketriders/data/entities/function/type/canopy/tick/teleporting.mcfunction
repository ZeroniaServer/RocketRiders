#Canopy doesn't teleport more than once if shot by Nova Rocket
execute if score @s entity.canopy.movement_cooldown matches 1.. on origin if predicate custom:nova_attached run return run function entities:type/canopy/tick/trigger_nova_attach

execute if score @s entity.canopy.movement_cooldown matches ..39 on origin run tag @s add canopy.player
execute if score @s entity.canopy.movement_cooldown matches ..39 on passengers on origin run ride @a[limit=1,tag=canopy.player] mount @s[predicate=entities:type/canopy/saddle]
execute if score @s entity.canopy.movement_cooldown matches ..39 on origin run tag @s remove canopy.player
# force_mount tag is used by the CK plugin to prevent dismounting
execute if score @s entity.canopy.movement_cooldown matches ..39 on origin run tag @s[type=player,predicate=custom:alive] add force_mount
execute if score @s entity.canopy.movement_cooldown matches ..39 on origin run tag @s[type=player,predicate=!custom:alive] remove force_mount

execute if score @s entity.canopy.movement_cooldown matches 0 on origin run title @s actionbar ""

execute if score @s entity.canopy.movement_cooldown matches 0 at @s[tag=!canopy.small] on origin run playsound minecraft:entity.player.teleport player @s ~ ~2 ~ 1 1 1
execute if score @s entity.canopy.movement_cooldown matches 40.. on origin run tag @s remove force_mount
execute if score @s entity.canopy.movement_cooldown matches 40.. on origin run tp @s ~ ~2 ~
execute if score @s entity.canopy.movement_cooldown matches 40.. on origin run tp @s @s
execute if score @s entity.canopy.movement_cooldown matches 40.. run scoreboard players set @s entity.canopy.movement_cooldown 45
execute if score @s entity.canopy.movement_cooldown matches 40.. on passengers on origin run kill @s[predicate=entities:type/canopy/saddle]
execute if score @s entity.canopy.movement_cooldown matches 40.. on passengers run kill @s[predicate=entities:type/canopy/saddle_link]
