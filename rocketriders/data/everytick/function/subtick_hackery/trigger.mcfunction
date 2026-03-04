advancement revoke @s only everytick:subtick_hackery

scoreboard players set $subtick_hackery_done global 1

execute in minecraft:overworld positioned 0.0 0.0 0.0 as @e[limit=1,x=0,type=armor_stand,tag=Selection] run function everytick:subtick_hackery/handle_custom_blocks_breaking\

# Stop potion sounds when players are being put out of fire
execute in minecraft:overworld as @e[x=0,type=area_effect_cloud,tag=fireAEC] at @s run stopsound @a[distance=..10] * minecraft:entity.splash_potion.break