execute store result score $parkour_instructions var run scoreboard players operation $tips var = @s settings
scoreboard players operation $tips var %= $10 constant
execute if score $tips var matches 0 run tag @s add hideTips
execute if score $tips var matches 1 run tag @s remove hideTips

execute store result score $particles var run scoreboard players operation $parkour_instructions var /= $10 constant
scoreboard players operation $parkour_instructions var %= $10 constant
execute if predicate rr:has_parkour if score $parkour_instructions var matches 0 run tag @s add hideParkourTips
execute if predicate rr:has_parkour if score $parkour_instructions var matches 1 run tag @s remove hideParkourTips

execute store result score $do_hotbar_auto_fill var run scoreboard players operation $particles var /= $10 constant
scoreboard players operation $particles var %= $10 constant
execute if score $particles var matches 0 run tag @s add hideParticles
execute if score $particles var matches 1 run tag @s remove hideParticles

execute store result score $default_spell var run scoreboard players operation $do_hotbar_auto_fill var /= $10 constant
scoreboard players operation $do_hotbar_auto_fill var %= $10 constant
execute if score $do_hotbar_auto_fill var matches 0 run tag @s remove do_hotbar_auto_fill
execute if score $do_hotbar_auto_fill var matches 1 run tag @s add do_hotbar_auto_fill

execute store result score $crusade_kit var run scoreboard players operation $default_spell var /= $10 constant
scoreboard players operation $default_spell var %= $10 constant
execute if score $default_spell var matches 0 run scoreboard players reset @s default_spell
execute if score $default_spell var matches 1 run scoreboard players set @s default_spell 1
execute if score $default_spell var matches 2 run scoreboard players set @s default_spell 2
execute if score $default_spell var matches 3 run scoreboard players set @s default_spell 3

scoreboard players operation $crusade_kit var /= $10 constant
scoreboard players operation $crusade_kit var %= $10 constant
execute if score $crusade_kit var matches 0 run scoreboard players reset @s start_as_crusade_kit
execute if score $crusade_kit var matches 1 run scoreboard players set @s start_as_crusade_kit 1
execute if score $crusade_kit var matches 2 run scoreboard players set @s start_as_crusade_kit 2
execute if score $crusade_kit var matches 3 run scoreboard players set @s start_as_crusade_kit 3

# Save Settings
function custom:player_action/playerdata/save
