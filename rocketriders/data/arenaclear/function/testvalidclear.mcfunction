##Operator command - tests valid arenaclear based on enabled items
execute if predicate game:phase/match run return run tellraw @s {color:"red",text:"You can only run this when the game has ended"}
execute if predicate game:item_pool_meta/all_normal_missiles_disabled if predicate game:item_pool_meta/all_lightning_missiles_disabled if predicate game:item_pool_meta/all_heavy_missiles_disabled run return run tellraw @s {color:"red",text:"You must have at least one Missile enabled to start the game"}

execute store result score $match_repeat_amount global run scoreboard players get $extra_match_repetitions config
execute unless predicate game:repeat_settings/forever run scoreboard players add $match_repeat_amount global 1
execute unless score $match_repeat_amount global matches 1.. run scoreboard players set $match_repeat_amount global 1

execute at @s run playsound minecraft:ui.button.click master @a[x=0] ~ ~ ~ 1 1
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!NoModesInstalled,tag=!NoModesEnabled,tag=!needsForceClear] run function arenaclear:areaclear
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!NoModesInstalled,tag=!NoModesEnabled,tag=needsForceClear] run tellraw @s {"text":"Warning: Force clearing arena since previous gamemode was uninstalled.","color":"red"}
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!NoModesInstalled,tag=!NoModesEnabled,tag=needsForceClear] run function arenaclear:forceareaclear
execute unless entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!NoModesInstalled,tag=!NoModesEnabled] run tellraw @s {"text":"Error: Cannot clear arena because no gamemodes are installed/enabled.","color":"red"}
