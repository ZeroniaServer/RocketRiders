## Resets the inventory to what it would be at the start of the phase the player is in

tag @s add resetting_inventory

# clear inventory and thrown items
loot replace entity @s inventory.0 27 loot custom:empty
item replace entity @s player.cursor with air
item replace entity @s player.crafting.0 with air
item replace entity @s player.crafting.1 with air
item replace entity @s player.crafting.2 with air
item replace entity @s player.crafting.3 with air
item replace entity @s saddle with air
tag @s add matchOrigin
execute as @e[x=0,type=item] unless items entity @s contents *[custom_data~{Droppable:true}] if function custom:match_origin run kill @s
tag @s remove matchOrigin

# Write hotbar and offhand items to a separate container, then update the respective player slots if the item has changed.
# This avoid the gui item stretching animation, and the item bobbing while holding it.
loot replace block 0 184 -16 container.0 27 loot custom:empty
item replace block 0 184 -16 container.0 from entity @s hotbar.0
item replace block 0 184 -16 container.1 from entity @s hotbar.1
item replace block 0 184 -16 container.2 from entity @s hotbar.2
item replace block 0 184 -16 container.3 from entity @s hotbar.3
item replace block 0 184 -16 container.4 from entity @s hotbar.4
item replace block 0 184 -16 container.5 from entity @s hotbar.5
item replace block 0 184 -16 container.6 from entity @s hotbar.6
item replace block 0 184 -16 container.7 from entity @s hotbar.7
item replace block 0 184 -16 container.8 from entity @s hotbar.8
item replace block 0 184 -16 container.9 from entity @s weapon.offhand
data modify storage rocketriders:main reset_inventory set value {items_original:[],items_replace:[]}
data modify storage rocketriders:main reset_inventory.items_original set from block 0 184 -16 Items
loot replace block 0 184 -16 container.0 27 loot custom:empty

## Set items
# lobby players
execute if predicate custom:team/lobby run function custom:__impl__/reset_inventory/give_nav_book with storage rocketriders:navbook item
execute if predicate custom:team/lobby if predicate rr:server_mode/cubekrowd_voting if predicate game:phase/staging/configuration unless score @s VoteNum matches 1.. unless items block 0 184 -16 container.0 *[custom_data~{id:"voting_ballot"},!custom_data~{voting_ballot:{used:true}}] run loot replace block 0 184 -16 container.0 loot servermode:voting_ballot
execute if predicate custom:team/lobby if predicate rr:server_mode/cubekrowd_voting if predicate game:phase/staging/configuration if score @s VoteNum matches 1.. unless items block 0 184 -16 container.0 *[custom_data~{id:"voting_ballot"},custom_data~{voting_ballot:{used:true}}] run loot replace block 0 184 -16 container.0 loot servermode:voting_ballot_used
execute if predicate custom:team/lobby if predicate rr:has_parkour if entity @s[tag=inParkour] unless items block 0 184 -16 container.3 *[custom_data~{id:"parkour/return_to_checkpoint"}] run loot replace block 0 184 -16 container.3 loot lobby:parkour/return_to_checkpoint
execute if predicate custom:team/lobby if predicate rr:has_parkour if entity @s[tag=inParkour] unless items block 0 184 -16 container.5 *[custom_data~{id:"parkour/return_to_start"}] run loot replace block 0 184 -16 container.5 loot lobby:parkour/return_to_start
execute if predicate custom:team/lobby if predicate rr:has_parkour if entity @s[tag=inParkour] unless items block 0 184 -16 container.8 *[custom_data~{id:"parkour/quit_parkour"}] run loot replace block 0 184 -16 container.8 loot lobby:parkour/quit_parkour

# team players
execute if predicate custom:team/any_playing_team if predicate game:gamemode_components/main_item/shooting_saber run loot replace block 0 184 -16 container.0 loot items:misc/shooting_saber
execute if predicate custom:team/any_playing_team if predicate game:gamemode_components/main_item/shooting_saber if predicate game:phase/staging run loot replace block 0 184 -16 container.9 loot {pools:[{rolls:1,entries:[{type:"loot_table",value:"items:misc/arrow"}],functions:[{function:"set_count",count:20}]}]}
execute if predicate custom:team/any_playing_team if predicate game:gamemode_components/main_item/piercing_pickaxe run loot replace block 0 184 -16 container.0 loot items:misc/piercing_pickaxe
execute if predicate custom:team/any_playing_team if predicate game:gamemode_components/main_item/rocket_nomicon run loot replace block 0 184 -16 container.0 loot items:misc/rocket_nomicon
execute if predicate custom:team/any_playing_team if predicate game:gamemode_components/main_item/crusade_kit_dependent if predicate rr_crusade:kit/knight run loot replace block 0 184 -16 container.0 loot items:misc/knight_sword
execute if predicate custom:team/any_playing_team if predicate game:gamemode_components/main_item/crusade_kit_dependent if predicate rr_crusade:kit/knight run loot replace block 0 184 -16 container.9 loot items:misc/knight_shield
execute if predicate custom:team/any_playing_team if predicate game:gamemode_components/main_item/crusade_kit_dependent if predicate rr_crusade:kit/archer run loot replace block 0 184 -16 container.0 loot items:misc/shooting_saber
execute if predicate custom:team/any_playing_team if predicate game:gamemode_components/main_item/crusade_kit_dependent if predicate rr_crusade:kit/archer if predicate game:phase/staging run loot replace block 0 184 -16 container.9 loot {pools:[{rolls:1,entries:[{type:"loot_table",value:"items:misc/arrow"}],functions:[{function:"set_count",count:20}]}]}
execute if predicate custom:team/any_playing_team if predicate game:gamemode_components/main_item/crusade_kit_dependent if predicate rr_crusade:kit/archer if predicate game:phase/match/play run loot replace block 0 184 -16 container.9 loot {pools:[{rolls:1,entries:[{type:"loot_table",value:"items:misc/arrow"}],functions:[{function:"set_count",count:4}]}]}
execute if predicate custom:team/any_playing_team if predicate game:gamemode_components/main_item/crusade_kit_dependent if predicate rr_crusade:kit/mage run loot replace block 0 184 -16 container.0 loot items:misc/spell_wand

# winner's fireworks
execute if predicate game:phase/match/over if predicate custom:team/any_playing_team if entity @s[tag=Winner] run loot replace block 0 184 -16 container.1 loot items:ending/celebratory_fireworks

## Transfer and delete relevant items
data modify storage rocketriders:main reset_inventory.items_replace set from block 0 184 -16 Items

execute unless items block 0 184 -16 container.0 * run item replace entity @s hotbar.0 with air
execute if items block 0 184 -16 container.0 * if items entity @s hotbar.0 * store success score $item_changed var run data modify storage rocketriders:main reset_inventory.items_original[{Slot:0b}] set from storage rocketriders:main reset_inventory.items_replace[{Slot:0b}]
execute if items block 0 184 -16 container.0 * if items entity @s hotbar.0 * if score $item_changed var matches 1 run item replace entity @s hotbar.0 from block 0 184 -16 container.0
execute if items block 0 184 -16 container.0 * unless items entity @s hotbar.0 * run item replace entity @s hotbar.0 from block 0 184 -16 container.0

execute unless items block 0 184 -16 container.1 * run item replace entity @s hotbar.1 with air
execute if items block 0 184 -16 container.1 * if items entity @s hotbar.1 * store success score $item_changed var run data modify storage rocketriders:main reset_inventory.items_original[{Slot:1b}] set from storage rocketriders:main reset_inventory.items_replace[{Slot:1b}]
execute if items block 0 184 -16 container.1 * if items entity @s hotbar.1 * if score $item_changed var matches 1 run item replace entity @s hotbar.1 from block 0 184 -16 container.1
execute if items block 0 184 -16 container.1 * unless items entity @s hotbar.1 * run item replace entity @s hotbar.1 from block 0 184 -16 container.1

execute unless items block 0 184 -16 container.2 * run item replace entity @s hotbar.2 with air
execute if items block 0 184 -16 container.2 * if items entity @s hotbar.2 * store success score $item_changed var run data modify storage rocketriders:main reset_inventory.items_original[{Slot:2b}] set from storage rocketriders:main reset_inventory.items_replace[{Slot:2b}]
execute if items block 0 184 -16 container.2 * if items entity @s hotbar.2 * if score $item_changed var matches 1 run item replace entity @s hotbar.2 from block 0 184 -16 container.2
execute if items block 0 184 -16 container.2 * unless items entity @s hotbar.2 * run item replace entity @s hotbar.2 from block 0 184 -16 container.2

execute unless items block 0 184 -16 container.3 * run item replace entity @s hotbar.3 with air
execute if items block 0 184 -16 container.3 * if items entity @s hotbar.3 * store success score $item_changed var run data modify storage rocketriders:main reset_inventory.items_original[{Slot:3b}] set from storage rocketriders:main reset_inventory.items_replace[{Slot:3b}]
execute if items block 0 184 -16 container.3 * if items entity @s hotbar.3 * if score $item_changed var matches 1 run item replace entity @s hotbar.3 from block 0 184 -16 container.3
execute if items block 0 184 -16 container.3 * unless items entity @s hotbar.3 * run item replace entity @s hotbar.3 from block 0 184 -16 container.3

execute unless items block 0 184 -16 container.4 * run item replace entity @s hotbar.4 with air
execute if items block 0 184 -16 container.4 * if items entity @s hotbar.4 * store success score $item_changed var run data modify storage rocketriders:main reset_inventory.items_original[{Slot:4b}] set from storage rocketriders:main reset_inventory.items_replace[{Slot:4b}]
execute if items block 0 184 -16 container.4 * if items entity @s hotbar.4 * if score $item_changed var matches 1 run item replace entity @s hotbar.4 from block 0 184 -16 container.4
execute if items block 0 184 -16 container.4 * unless items entity @s hotbar.4 * run item replace entity @s hotbar.4 from block 0 184 -16 container.4

execute unless items block 0 184 -16 container.5 * run item replace entity @s hotbar.5 with air
execute if items block 0 184 -16 container.5 * if items entity @s hotbar.5 * store success score $item_changed var run data modify storage rocketriders:main reset_inventory.items_original[{Slot:5b}] set from storage rocketriders:main reset_inventory.items_replace[{Slot:5b}]
execute if items block 0 184 -16 container.5 * if items entity @s hotbar.5 * if score $item_changed var matches 1 run item replace entity @s hotbar.5 from block 0 184 -16 container.5
execute if items block 0 184 -16 container.5 * unless items entity @s hotbar.5 * run item replace entity @s hotbar.5 from block 0 184 -16 container.5

execute unless items block 0 184 -16 container.6 * run item replace entity @s hotbar.6 with air
execute if items block 0 184 -16 container.6 * if items entity @s hotbar.6 * store success score $item_changed var run data modify storage rocketriders:main reset_inventory.items_original[{Slot:6b}] set from storage rocketriders:main reset_inventory.items_replace[{Slot:6b}]
execute if items block 0 184 -16 container.6 * if items entity @s hotbar.6 * if score $item_changed var matches 1 run item replace entity @s hotbar.6 from block 0 184 -16 container.6
execute if items block 0 184 -16 container.6 * unless items entity @s hotbar.6 * run item replace entity @s hotbar.6 from block 0 184 -16 container.6

execute unless items block 0 184 -16 container.7 * run item replace entity @s hotbar.7 with air
execute if items block 0 184 -16 container.7 * if items entity @s hotbar.7 * store success score $item_changed var run data modify storage rocketriders:main reset_inventory.items_original[{Slot:7b}] set from storage rocketriders:main reset_inventory.items_replace[{Slot:7b}]
execute if items block 0 184 -16 container.7 * if items entity @s hotbar.7 * if score $item_changed var matches 1 run item replace entity @s hotbar.7 from block 0 184 -16 container.7
execute if items block 0 184 -16 container.7 * unless items entity @s hotbar.7 * run item replace entity @s hotbar.7 from block 0 184 -16 container.7

execute unless items block 0 184 -16 container.8 * run item replace entity @s hotbar.8 with air
execute if items block 0 184 -16 container.8 * if items entity @s hotbar.8 * store success score $item_changed var run data modify storage rocketriders:main reset_inventory.items_original[{Slot:8b}] set from storage rocketriders:main reset_inventory.items_replace[{Slot:8b}]
execute if items block 0 184 -16 container.8 * if items entity @s hotbar.8 * if score $item_changed var matches 1 run item replace entity @s hotbar.8 from block 0 184 -16 container.8
execute if items block 0 184 -16 container.8 * unless items entity @s hotbar.8 * run item replace entity @s hotbar.8 from block 0 184 -16 container.8

execute unless items block 0 184 -16 container.9 * run item replace entity @s weapon.offhand with air
execute if items block 0 184 -16 container.9 * if items entity @s weapon.offhand * store success score $item_changed var run data modify storage rocketriders:main reset_inventory.items_original[{Slot:9b}] set from storage rocketriders:main reset_inventory.items_replace[{Slot:9b}]
execute if items block 0 184 -16 container.9 * if items entity @s weapon.offhand * if score $item_changed var matches 1 run item replace entity @s weapon.offhand from block 0 184 -16 container.9
execute if items block 0 184 -16 container.9 * unless items entity @s weapon.offhand * run item replace entity @s weapon.offhand from block 0 184 -16 container.9

tag @s remove resetting_inventory
