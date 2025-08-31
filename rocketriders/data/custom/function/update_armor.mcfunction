
#Redirect to the overworld (if @s is in the overworld)
execute unless dimension minecraft:overworld run return run execute at @s if dimension minecraft:overworld run function custom:update_armor

#Write to container first then copy to inventory, to avoid flickering
loot replace block 0 184 -16 container.0 27 loot custom:empty

## Spectators
execute if entity @s[gamemode=spectator] run return run loot replace block 0 184 -16 container.0 4 loot custom:empty

## Lobby
# Parkour Boots
execute if entity @s[team=Lobby,tag=inParkour] run loot replace block 0 184 -16 container.0 loot items:armor/parkour_boots
# Rank Boots
execute if entity @s[team=Lobby] unless function game:norankboots run loot replace block 0 184 -16 container.0 loot items:armor/rank_boots

execute if entity @s[team=Lobby] run return run loot replace entity @s armor.feet 4 mine 0 184 -16 stick[custom_data={drop_contents:true}]

## Game
# Hobbit Modifier
execute if predicate custom:on_blue_or_yellow_team if predicate game:modifiers/hobbits/on unless predicate custom:invisible run loot replace block 0 184 -16 container.3 loot modifiers:hobbit_head
# Generic Gear
execute if predicate custom:on_blue_or_yellow_team if predicate game:gamemode_components/armor/generic run loot replace block 0 184 -16 container.0 loot items:armor/generic_gear/boots
execute if predicate custom:on_blue_or_yellow_team if predicate game:gamemode_components/armor/generic run loot replace block 0 184 -16 container.1 loot items:armor/generic_gear/leggings
execute if predicate custom:on_blue_or_yellow_team if predicate game:gamemode_components/armor/generic run loot replace block 0 184 -16 container.2 loot items:armor/generic_gear/chestplate
# Swap Gear
execute if predicate custom:on_blue_or_yellow_team if predicate game:gamemode_components/armor/swap run loot replace block 0 184 -16 container.0 3 loot items:armor/swap_gear/all
# Crusade Gear
execute if predicate custom:on_blue_or_yellow_team if predicate game:gamemode_components/armor/crusade_kit_dependent if predicate rr_crusade:kit/archer run loot replace block 0 184 -16 container.0 loot items:armor/crusade_kits/archer/boots
execute if predicate custom:on_blue_or_yellow_team if predicate game:gamemode_components/armor/crusade_kit_dependent if predicate rr_crusade:kit/archer run loot replace block 0 184 -16 container.1 loot items:armor/crusade_kits/archer/leggings
execute if predicate custom:on_blue_or_yellow_team if predicate game:gamemode_components/armor/crusade_kit_dependent if predicate rr_crusade:kit/archer run loot replace block 0 184 -16 container.2 loot items:armor/crusade_kits/archer/chestplate
execute if predicate custom:on_blue_or_yellow_team if predicate game:gamemode_components/armor/crusade_kit_dependent if predicate rr_crusade:kit/archer run loot replace block 0 184 -16 container.3 loot items:armor/crusade_kits/archer/helmet
execute if predicate custom:on_blue_or_yellow_team if predicate game:gamemode_components/armor/crusade_kit_dependent if predicate rr_crusade:kit/knight run loot replace block 0 184 -16 container.0 loot items:armor/crusade_kits/knight/boots
execute if predicate custom:on_blue_or_yellow_team if predicate game:gamemode_components/armor/crusade_kit_dependent if predicate rr_crusade:kit/knight run loot replace block 0 184 -16 container.1 loot items:armor/crusade_kits/knight/leggings
execute if predicate custom:on_blue_or_yellow_team if predicate game:gamemode_components/armor/crusade_kit_dependent if predicate rr_crusade:kit/knight run loot replace block 0 184 -16 container.2 loot items:armor/crusade_kits/knight/chestplate
execute if predicate custom:on_blue_or_yellow_team if predicate game:gamemode_components/armor/crusade_kit_dependent if predicate rr_crusade:kit/knight run loot replace block 0 184 -16 container.3 loot items:armor/crusade_kits/knight/helmet
execute if predicate custom:on_blue_or_yellow_team if predicate game:gamemode_components/armor/crusade_kit_dependent if predicate rr_crusade:kit/mage run loot replace block 0 184 -16 container.0 loot items:armor/crusade_kits/mage/boots
execute if predicate custom:on_blue_or_yellow_team if predicate game:gamemode_components/armor/crusade_kit_dependent if predicate rr_crusade:kit/mage run loot replace block 0 184 -16 container.1 loot items:armor/crusade_kits/mage/leggings
execute if predicate custom:on_blue_or_yellow_team if predicate game:gamemode_components/armor/crusade_kit_dependent if predicate rr_crusade:kit/mage run loot replace block 0 184 -16 container.2 loot items:armor/crusade_kits/mage/chestplate
execute if predicate custom:on_blue_or_yellow_team if predicate game:gamemode_components/armor/crusade_kit_dependent if predicate rr_crusade:kit/mage run loot replace block 0 184 -16 container.3 loot items:armor/crusade_kits/mage/helmet

## Overrides
# Rank Boots
execute unless function game:norankboots run loot replace block 0 184 -16 container.0 loot items:armor/rank_boots

# Elytra
execute if predicate custom:on_blue_or_yellow_team if entity @s[tag=wearing_elytra] run loot replace block 0 184 -16 container.2 loot items:misc/elytra
execute if predicate custom:on_blue_or_yellow_team if entity @s[tag=wearing_elytra] if items entity @s armor.chest *[custom_data~{id:"elytra"}] run item replace block 0 184 -16 container.2 from entity @s armor.chest

# Invisibility
#set asset ID to a random string of numbers so that they can't get around the armour invisibility with a resource pack
execute if predicate custom:on_blue_or_yellow_team if predicate custom:invisible run execute store result storage rocketriders:main update_armor.random_asset_id_1 int 1 run random value 0..2147483646
execute if predicate custom:on_blue_or_yellow_team if predicate custom:invisible run execute store result storage rocketriders:main update_armor.random_asset_id_2 int 1 run random value 0..2147483646
execute if predicate custom:on_blue_or_yellow_team if predicate custom:invisible run function custom:_update_armor_/make_invisible with storage rocketriders:main update_armor

# Game Ending
execute if entity @s[tag=Winner] if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=GameEnd] run loot replace block 0 184 -16 container.2 loot items:ending/celebratory_elytra
execute if entity @s[tag=Loser] if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=GameEnd] run loot replace block 0 184 -16 container.3 loot items:ending/loser_banner

# Flag
execute if predicate game:gamemode_components/has_flags if entity @s[tag=CarryFlag,tag=CarryFY1] run item replace block 0 184 -16 container.3 with minecraft:yellow_banner[enchantments={binding_curse:1},tooltip_display={hidden_components:["enchantments"]}]
execute if predicate game:gamemode_components/has_flags if entity @s[tag=CarryFlag,tag=CarryFY2] run item replace block 0 184 -16 container.3 with minecraft:yellow_banner[enchantments={binding_curse:1},tooltip_display={hidden_components:["enchantments"]}]
execute if predicate game:gamemode_components/has_flags if entity @s[tag=CarryFlag,tag=CarryFB1] run item replace block 0 184 -16 container.3 with minecraft:blue_banner[enchantments={binding_curse:1},tooltip_display={hidden_components:["enchantments"]}]
execute if predicate game:gamemode_components/has_flags if entity @s[tag=CarryFlag,tag=CarryFB2] run item replace block 0 184 -16 container.3 with minecraft:blue_banner[enchantments={binding_curse:1},tooltip_display={hidden_components:["enchantments"]}]

## Apply changes
loot replace entity @s armor.feet 4 mine 0 184 -16 stick[custom_data={drop_contents:true}]
