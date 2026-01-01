## Resets the inventory to what it would be at the start of the phase the player is in

# clear inventory
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
# only delete hotbar and offhand items if they are not replaced (to avoid the gui item stretching animation)
execute unless items entity @s hotbar.0 *[custom_data~{"reset_inventory/delete":false}] run item modify entity @s hotbar.0 {function:"minecraft:set_custom_data",tag:{"reset_inventory/delete":true}}
execute unless items entity @s hotbar.1 *[custom_data~{"reset_inventory/delete":false}] run item modify entity @s hotbar.1 {function:"minecraft:set_custom_data",tag:{"reset_inventory/delete":true}}
execute unless items entity @s hotbar.2 *[custom_data~{"reset_inventory/delete":false}] run item modify entity @s hotbar.2 {function:"minecraft:set_custom_data",tag:{"reset_inventory/delete":true}}
execute unless items entity @s hotbar.3 *[custom_data~{"reset_inventory/delete":false}] run item modify entity @s hotbar.3 {function:"minecraft:set_custom_data",tag:{"reset_inventory/delete":true}}
execute unless items entity @s hotbar.4 *[custom_data~{"reset_inventory/delete":false}] run item modify entity @s hotbar.4 {function:"minecraft:set_custom_data",tag:{"reset_inventory/delete":true}}
execute unless items entity @s hotbar.5 *[custom_data~{"reset_inventory/delete":false}] run item modify entity @s hotbar.5 {function:"minecraft:set_custom_data",tag:{"reset_inventory/delete":true}}
execute unless items entity @s hotbar.6 *[custom_data~{"reset_inventory/delete":false}] run item modify entity @s hotbar.6 {function:"minecraft:set_custom_data",tag:{"reset_inventory/delete":true}}
execute unless items entity @s hotbar.7 *[custom_data~{"reset_inventory/delete":false}] run item modify entity @s hotbar.7 {function:"minecraft:set_custom_data",tag:{"reset_inventory/delete":true}}
execute unless items entity @s hotbar.8 *[custom_data~{"reset_inventory/delete":false}] run item modify entity @s hotbar.8 {function:"minecraft:set_custom_data",tag:{"reset_inventory/delete":true}}
execute unless items entity @s weapon.offhand *[custom_data~{"reset_inventory/delete":false}] run item modify entity @s weapon.offhand {function:"minecraft:set_custom_data",tag:{"reset_inventory/delete":true}}

# lobby players
execute if predicate custom:team/lobby run function lobby:give_nav_book with storage rocketriders:navbook item
execute if predicate custom:team/lobby if predicate rr:server_mode/cubekrowd_voting unless predicate game:game_running unless entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=EditedSettings] unless score @s VoteNum matches 1.. unless items entity @s hotbar.0 *[custom_data~{id:"voting_ballot"},!custom_data~{voting_ballot:{used:true}}] run loot replace entity @s hotbar.0 loot servermode:voting_ballot
execute if predicate custom:team/lobby if predicate rr:server_mode/cubekrowd_voting unless predicate game:game_running unless entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=EditedSettings] if score @s VoteNum matches 1.. unless items entity @s hotbar.0 *[custom_data~{id:"voting_ballot"},custom_data~{voting_ballot:{used:true}}] run loot replace entity @s hotbar.0 loot servermode:voting_ballot_used
execute if predicate custom:team/lobby if predicate rr:has_parkour if entity @s[tag=inParkour] unless items entity @s hotbar.3 *[custom_data~{parkour:{name:"return_to_checkpoint"}}] run item replace entity @s hotbar.3 with compass[custom_data={parkour:{name:"return_to_checkpoint"},"reset_inventory/delete":false},custom_name=[{bold:true,color:"aqua",italic:false,text:"Return to Checkpoint"}],consumable={consume_seconds:2147483647,has_consume_particles:false,sound:"minecraft:intentionally_empty"}]
execute if predicate custom:team/lobby if predicate rr:has_parkour if entity @s[tag=inParkour] unless items entity @s hotbar.5 *[custom_data~{parkour:{name:"return_to_start"}}] run item replace entity @s hotbar.5 with clock[custom_data={parkour:{name:"return_to_start"},"reset_inventory/delete":false},custom_name=[{bold:true,color:"yellow",italic:false,text:"Return to Start"}],consumable={consume_seconds:2147483647,has_consume_particles:false,sound:"minecraft:intentionally_empty"}]
execute if predicate custom:team/lobby if predicate rr:has_parkour if entity @s[tag=inParkour] unless items entity @s hotbar.8 *[custom_data~{parkour:{name:"quit_parkour"}}] run item replace entity @s hotbar.8 with barrier[custom_data={parkour:{name:"quit_parkour"},"reset_inventory/delete":false},custom_name=[{bold:true,color:"red",italic:false,text:"Quit Parkour"}],consumable={consume_seconds:2147483647,has_consume_particles:false,sound:"minecraft:intentionally_empty"}]

# team players
execute if predicate custom:team/any_playing_team if predicate game:gamemode_components/main_item/shooting_saber run loot replace entity @s hotbar.0 loot items:misc/shooting_saber
execute if predicate custom:team/any_playing_team if predicate game:gamemode_components/main_item/shooting_saber unless predicate game:game_running run loot replace entity @s weapon.offhand loot {pools:[{rolls:1,entries:[{type:"loot_table",value:"items:misc/arrow"}],functions:[{function:"set_count",count:20}]}]}
execute if predicate custom:team/any_playing_team if predicate game:gamemode_components/main_item/piercing_pickaxe run loot replace entity @s hotbar.0 loot items:misc/piercing_pickaxe
execute if predicate custom:team/any_playing_team if predicate game:gamemode_components/main_item/rocket_nomicon run loot replace entity @s hotbar.0 loot items:misc/rocket_nomicon
execute if predicate custom:team/any_playing_team if predicate game:gamemode_components/main_item/crusade_kit_dependent if predicate rr_crusade:kit/knight run loot replace entity @s hotbar.0 loot items:misc/knight_sword
execute if predicate custom:team/any_playing_team if predicate game:gamemode_components/main_item/crusade_kit_dependent if predicate rr_crusade:kit/knight run loot replace entity @s weapon.offhand loot items:misc/knight_shield
execute if predicate custom:team/any_playing_team if predicate game:gamemode_components/main_item/crusade_kit_dependent if predicate rr_crusade:kit/archer run loot replace entity @s hotbar.0 loot items:misc/shooting_saber
execute if predicate custom:team/any_playing_team if predicate game:gamemode_components/main_item/crusade_kit_dependent if predicate rr_crusade:kit/archer unless predicate game:game_running run loot replace entity @s weapon.offhand loot {pools:[{rolls:1,entries:[{type:"loot_table",value:"items:misc/arrow"}],functions:[{function:"set_count",count:20}]}]}
execute if predicate custom:team/any_playing_team if predicate game:gamemode_components/main_item/crusade_kit_dependent if predicate rr_crusade:kit/archer if predicate game:match_in_play run loot replace entity @s weapon.offhand loot {pools:[{rolls:1,entries:[{type:"loot_table",value:"items:misc/arrow"}],functions:[{function:"set_count",count:4}]}]}
execute if predicate custom:team/any_playing_team if predicate game:gamemode_components/main_item/crusade_kit_dependent if predicate rr_crusade:kit/mage run loot replace entity @s hotbar.0 loot items:misc/spell_wand

# winnter's fireworks
execute if predicate game:match_over if predicate custom:team/any_playing_team if entity @s[tag=Winner] run loot replace entity @s hotbar.1 loot items:ending/celebratory_fireworks

# delete relevant items
clear @s *[custom_data~{"reset_inventory/delete":true}]
