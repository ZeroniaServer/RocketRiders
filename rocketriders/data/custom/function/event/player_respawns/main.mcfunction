scoreboard players set @s flag.is_dead 0

# Clear game effects
effect clear @s levitation

# Ensure return to spawnpoint
tp @s[team=Blue] 12 64 -66 0 0
tp @s[team=Yellow] 12 64 66 -180 0

# Reset motion
tp @s @s

# Reapply modifier attribute modifiers
execute if entity @s[tag=hobbit] unless entity @s[predicate=game:modifiers/hobbits/on,predicate=custom:on_blue_or_yellow_team] run function modifiers:hobbit/reset
execute if entity @s[tag=hobbit] run function modifiers:hobbit/set
execute if entity @s[tag=long_arms] unless entity @s[predicate=game:modifiers/long_arms/on,predicate=custom:on_blue_or_yellow_team] run function modifiers:long_arms/reset
execute if entity @s[tag=long_arms] run function modifiers:long_arms/set

# Put out fire
execute if entity @s[tag=crosser,predicate=custom:is_on_fire] at @s run function game:putoutfire

# Apply poison if lobby breach was made
execute if predicate game:match_in_play run effect give @s[tag=on_respawn.apply_poison_effect] poison 4 100 true
tag @s remove on_respawn.apply_poison_effect

# Apply effects if crosser fell into the void
execute if predicate game:match_in_play run effect give @s[tag=on_respawn.apply_crosser_void_fall_effects] resistance 1 200 true
execute if predicate game:match_in_play run effect give @s[tag=on_respawn.apply_crosser_void_fall_effects] instant_health 1 200 true
execute if predicate game:match_in_play run effect give @s[tag=on_respawn.apply_crosser_void_fall_effects] fire_resistance 4 200 true
tag @s remove on_respawn.apply_crosser_void_fall_effects

# Apply new kits in Crusade Mode
execute if predicate game:match_in_play as @s[scores={crusadechange=1}] unless score @s crusadechange = @s crusadekit run function rr_crusade:items/kit/give/knight
execute if predicate game:match_in_play as @s[scores={crusadechange=2}] unless score @s crusadechange = @s crusadekit run function rr_crusade:items/kit/give/archer
execute if predicate game:match_in_play as @s[scores={crusadechange=3}] unless score @s crusadechange = @s crusadekit run function rr_crusade:items/kit/give/mage
execute if predicate game:match_in_play run scoreboard players reset @s crusadechange

# Give knights new shields when they respawn
clear @s[scores={crusadekit=1}] shield
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=crusadeEnabled] if entity @s[predicate=custom:on_blue_or_yellow_team,scores={crusadekit=1}] if items entity @s weapon.offhand * run loot give @s loot items:misc/knight_shield
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=crusadeEnabled] if entity @s[predicate=custom:on_blue_or_yellow_team,scores={crusadekit=1}] unless items entity @s weapon.offhand * run loot replace entity @s weapon.offhand loot items:misc/knight_shield
