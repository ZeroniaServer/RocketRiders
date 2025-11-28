# arguments: fuse

# Redirect function to the brain
$execute if entity @s[predicate=entities:type/vortex/body] run return run execute on passengers if entity @s[predicate=entities:type/vortex/brain] at @s run function entities:vortex/actions/trigger {fuse:$(fuse)}

execute unless score @s entity.vortex.fuse matches 0.. if entity @s[tag=!vortex.is_drifting,tag=!vortex.feathered] run playsound entity.shulker.hurt_closed master @a[x=0] ~ ~ ~ 0.7 0
execute unless score @s entity.vortex.fuse matches 0.. if entity @s[tag=!vortex.is_drifting,tag=!vortex.feathered] run playsound minecraft:block.sculk_sensor.clicking master @a[x=0] ~ ~ ~ 1 1

$execute unless score @s entity.vortex.fuse matches ..$(fuse) run scoreboard players set @s entity.vortex.fuse $(fuse)

execute if score @s entity.vortex.fuse matches ..1 on vehicle run data merge entity @s {start_interpolation:0,interpolation_duration:1,transformation:{scale:[1,1,1]},billboard:"center"}

execute if predicate game:achievements_can_be_awarded if predicate game:game_rules/impact_utilities/on if entity @s[tag=vortex.feathered] positioned as @s positioned ~ ~-1.6 ~ run advancement grant @a[distance=..3,predicate=custom:team/any_playing_team] only achievements:rr_challenges/zzzzzzhuh
