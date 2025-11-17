# runs rotated as the attacker (player), positioned at the eyes anchor of the attacker (player), but executing as the brain (interaction entity)

execute on attacker if score @s time_since_tnt_punch matches ..0 run return fail

## Get impulse (motion + direction)
execute on attacker store result score $impulse_motion_x var run function custom:get_x_velocity
scoreboard players operation $impulse_motion_x var /= $2 constant
execute on attacker store result score $impulse_motion_y var run function custom:get_y_velocity
scoreboard players operation $impulse_motion_y var /= $2 constant
execute on attacker store result score $impulse_motion_z var run function custom:get_z_velocity
scoreboard players operation $impulse_motion_z var /= $2 constant

execute positioned 0.0 0.0 0.0 positioned ^ ^ ^0.2 summon marker run function entities:punchable_tnt/actions/_punch_/get_impulse
execute store result score $impulse_x var run data get storage rocketriders:main punchable_tnt.impulse[0] 1000
execute store result score $impulse_y var run data get storage rocketriders:main punchable_tnt.impulse[1] 1000
execute store result score $impulse_z var run data get storage rocketriders:main punchable_tnt.impulse[2] 1000

scoreboard players operation $impulse_x var += $impulse_motion_x var
scoreboard players operation $impulse_y var += $impulse_motion_y var
scoreboard players operation $impulse_z var += $impulse_motion_z var

# bounce upwards if on ground
execute on vehicle on vehicle store success score $on_ground var if predicate custom:is_on_ground
execute if score $on_ground var matches 1 if score $impulse_y var matches ..-1 run scoreboard players operation $impulse_y var *= $-1 constant
execute if score $on_ground var matches 1 if score $impulse_y var matches ..0200 run scoreboard players set $impulse_y var 0200

# clamp
execute if score $impulse_x var matches 500.. run scoreboard players set $impulse_x var 500
execute if score $impulse_x var matches ..-500 run scoreboard players set $impulse_x var -500
execute if score $impulse_y var matches 1000.. run scoreboard players set $impulse_y var 1000
execute if score $impulse_y var matches ..-1000 run scoreboard players set $impulse_y var -1000
execute if score $impulse_z var matches 500.. run scoreboard players set $impulse_z var 500
execute if score $impulse_z var matches ..-500 run scoreboard players set $impulse_z var -500

# attack cooldown
scoreboard players set $impulse_reduction_factor var 6
execute on attacker if score @s time_since_tnt_punch matches 1.. run scoreboard players operation $impulse_reduction_factor var -= @s time_since_tnt_punch
execute if score $impulse_reduction_factor var matches 2.. run scoreboard players operation $impulse_x var /= $impulse_reduction_factor var
execute if score $impulse_reduction_factor var matches 2.. run scoreboard players operation $impulse_z var /= $impulse_reduction_factor var

## Apply impulse
execute on vehicle on vehicle run data modify storage rocketriders:main punchable_tnt.motion set from entity @s Motion
execute store result score $motion_x var run data get storage rocketriders:main punchable_tnt.motion[0] 1000
execute store result score $motion_y var run data get storage rocketriders:main punchable_tnt.motion[1] 1000
execute store result score $motion_z var run data get storage rocketriders:main punchable_tnt.motion[2] 1000

scoreboard players operation $motion_x var += $impulse_x var
scoreboard players operation $motion_y var += $impulse_y var
scoreboard players operation $motion_z var += $impulse_z var

execute store result storage rocketriders:main punchable_tnt.motion[0] double 0.001 run scoreboard players get $motion_x var
execute store result storage rocketriders:main punchable_tnt.motion[1] double 0.001 run scoreboard players get $motion_y var
execute store result storage rocketriders:main punchable_tnt.motion[2] double 0.001 run scoreboard players get $motion_z var
execute on vehicle on vehicle run data modify entity @s Motion set from storage rocketriders:main punchable_tnt.motion

# sound
scoreboard players operation $impulse_strength var = $impulse_x var
scoreboard players operation $impulse_strength var > $impulse_y var
scoreboard players operation $impulse_strength var > $impulse_z var
execute if score $impulse_strength var matches 250.. on attacker positioned as @s run playsound minecraft:entity.player.attack.knockback player @a[x=0] ~ ~ ~
execute unless score $impulse_strength var matches 250.. on attacker positioned as @s run playsound minecraft:entity.player.attack.weak player @a[x=0] ~ ~ ~

# particles
execute on vehicle on vehicle positioned as @s positioned ~ ~0.5 ~ on passengers on passengers on attacker facing entity @s eyes run particle minecraft:crit ^ ^ ^0.5 0.2 0.2 0.2 0 5 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]

## Post
# set attacker's cooldown
execute on attacker run scoreboard players set @s time_since_tnt_punch 0

# forget attacker
data remove entity @s attack
