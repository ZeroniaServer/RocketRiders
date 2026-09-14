#Redirect to the overworld (if @s is in the overworld)
execute unless dimension minecraft:overworld run return run execute at @s if dimension minecraft:overworld run function custom:player/update_armor

# Do not affect developer team
execute if entity @s[predicate=custom:team/developer] run return fail

# To avoid flickering: write items to container first, then copy to inventory
loot replace block 0 184 -16 container.0 27 loot custom:empty

## Spectators
execute unless entity @s[gamemode=!spectator,predicate=!custom:team/spectator] run return run loot replace block 0 184 -16 container.0 4 loot custom:empty

## Lobby
execute if predicate custom:team/lobby if entity @s[tag=inParkour] run loot replace block 0 184 -16 container.0 loot items:armor/parkour_boots
execute if predicate custom:team/lobby unless function game:norankboots run loot replace block 0 184 -16 container.0 loot items:armor/rank_boots
execute if predicate custom:team/lobby run return run loot replace entity @s armor.feet 4 mine 0 184 -16 stick[custom_data={drop_contents:true}]

## Playing Teams
# Hobbit Modifier
execute if predicate custom:team/any_playing_team if predicate game:modifiers/hobbits/on unless predicate custom:entity/has_invisibility_effect run loot replace block 0 184 -16 container.3 loot modifiers:hobbit_head

# Normal Armor
execute if predicate custom:team/any_playing_team if predicate game:armor_type/normal run loot replace block 0 184 -16 container.0 loot items:armor/normal/boots
execute if predicate custom:team/any_playing_team if predicate game:armor_type/normal run loot replace block 0 184 -16 container.1 loot items:armor/normal/leggings
execute if predicate custom:team/any_playing_team if predicate game:armor_type/normal run loot replace block 0 184 -16 container.2 loot items:armor/normal/chestplate
# Swap Gear
execute if predicate custom:team/any_playing_team if predicate game:armor_type/swap_mode run loot replace block 0 184 -16 container.0 3 loot items:armor/swap_mode/all
# Crusade Gear
execute if predicate custom:team/any_playing_team if predicate game:armor_type/crusade_mode if predicate rr_crusade:kit/archer run loot replace block 0 184 -16 container.0 loot items:armor/crusade_mode/archer/boots
execute if predicate custom:team/any_playing_team if predicate game:armor_type/crusade_mode if predicate rr_crusade:kit/archer run loot replace block 0 184 -16 container.1 loot items:armor/crusade_mode/archer/leggings
execute if predicate custom:team/any_playing_team if predicate game:armor_type/crusade_mode if predicate rr_crusade:kit/archer run loot replace block 0 184 -16 container.2 loot items:armor/crusade_mode/archer/chestplate
execute if predicate custom:team/any_playing_team if predicate game:armor_type/crusade_mode if predicate rr_crusade:kit/archer run loot replace block 0 184 -16 container.3 loot items:armor/crusade_mode/archer/helmet
execute if predicate custom:team/any_playing_team if predicate game:armor_type/crusade_mode if predicate rr_crusade:kit/knight run loot replace block 0 184 -16 container.0 loot items:armor/crusade_mode/knight/boots
execute if predicate custom:team/any_playing_team if predicate game:armor_type/crusade_mode if predicate rr_crusade:kit/knight run loot replace block 0 184 -16 container.1 loot items:armor/crusade_mode/knight/leggings
execute if predicate custom:team/any_playing_team if predicate game:armor_type/crusade_mode if predicate rr_crusade:kit/knight run loot replace block 0 184 -16 container.2 loot items:armor/crusade_mode/knight/chestplate
execute if predicate custom:team/any_playing_team if predicate game:armor_type/crusade_mode if predicate rr_crusade:kit/knight run loot replace block 0 184 -16 container.3 loot items:armor/crusade_mode/knight/helmet
execute if predicate custom:team/any_playing_team if predicate game:armor_type/crusade_mode if predicate rr_crusade:kit/mage run loot replace block 0 184 -16 container.0 loot items:armor/crusade_mode/mage/boots
execute if predicate custom:team/any_playing_team if predicate game:armor_type/crusade_mode if predicate rr_crusade:kit/mage run loot replace block 0 184 -16 container.1 loot items:armor/crusade_mode/mage/leggings
execute if predicate custom:team/any_playing_team if predicate game:armor_type/crusade_mode if predicate rr_crusade:kit/mage run loot replace block 0 184 -16 container.2 loot items:armor/crusade_mode/mage/chestplate
execute if predicate custom:team/any_playing_team if predicate game:armor_type/crusade_mode if predicate rr_crusade:kit/mage run loot replace block 0 184 -16 container.3 loot items:armor/crusade_mode/mage/helmet

# Rank Boots
execute unless function game:norankboots run loot replace block 0 184 -16 container.0 loot items:armor/rank_boots
# Elytra
execute if predicate custom:team/any_playing_team if predicate game:phase/match/play if predicate items:effects/elytra/on unless items entity @s armor.chest *[custom_data~{id:"elytra"}] run loot replace block 0 184 -16 container.2 loot items:item/elytra
execute if predicate custom:team/any_playing_team if predicate game:phase/match/play if predicate items:effects/elytra/on if items entity @s armor.chest *[custom_data~{id:"elytra"}] run item replace block 0 184 -16 container.2 from entity @s armor.chest
execute if predicate custom:team/any_playing_team if predicate game:phase/match/play if predicate items:effects/elytra/on if items entity @s armor.chest *[custom_data~{id:"elytra",invisible:true}] unless predicate custom:entity/has_invisibility_effect run item modify block 0 184 -16 container.2 [{function:"minecraft:set_components",components:{"minecraft:equippable":{asset_id:"minecraft:elytra",damage_on_hurt:false,equip_sound:"minecraft:item.armor.equip_elytra",slot:"chest"}}},{function:"minecraft:set_custom_data",tag:{invisible:false}}]
# Invisibility
#set asset ID to a random string of numbers so that they can't get around the armour invisibility with a resource pack
execute if predicate custom:team/any_playing_team if predicate game:phase/match/play if predicate custom:entity/has_invisibility_effect run execute store result storage rocketriders:main update_armor.random_asset_id_1 int 1 run random value 0..2147483646
execute if predicate custom:team/any_playing_team if predicate game:phase/match/play if predicate custom:entity/has_invisibility_effect run execute store result storage rocketriders:main update_armor.random_asset_id_2 int 1 run random value 0..2147483646
execute if predicate custom:team/any_playing_team if predicate game:phase/match/play if predicate custom:entity/has_invisibility_effect run function custom:__impl__/update_armor/make_invisible with storage rocketriders:main update_armor
# CTF Flag
execute if predicate custom:team/any_playing_team if predicate game:phase/match/play if predicate game:match_components/has_flags if predicate custom:player/is_carrying_blue_flag run function custom:__impl__/update_armor/flag_blue with storage rocketriders:teams blue.team_banner
execute if predicate custom:team/any_playing_team if predicate game:phase/match/play if predicate game:match_components/has_flags if predicate custom:player/is_carrying_yellow_flag run function custom:__impl__/update_armor/flag_yellow with storage rocketriders:teams yellow.team_banner
# Game Ending
execute if predicate custom:team/any_playing_team if predicate game:phase/match/closing if entity @s[tag=Winner] run loot replace block 0 184 -16 container.2 loot items:armor/celebratory_elytra
execute if predicate custom:team/any_playing_team if predicate game:phase/match/closing if entity @s[tag=Loser] run loot replace block 0 184 -16 container.3 loot items:armor/flag_of_shameful_loss

# Apply changes
loot replace entity @s armor.feet 4 mine 0 184 -16 stick[custom_data={drop_contents:true}]
