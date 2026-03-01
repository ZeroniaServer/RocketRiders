advancement revoke @s only everytick:subtick_hackery

scoreboard players set $subtick_hackery_done global 1

execute in minecraft:overworld positioned 0.0 0.0 0.0 as @e[limit=1,x=0,type=armor_stand,tag=Selection] run function everytick:subtick_hackery/handle_custom_blocks_breaking
