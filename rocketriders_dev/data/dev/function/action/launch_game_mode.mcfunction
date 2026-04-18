execute if score $performing_dev_action dev_action matches 1 run tellraw @s {color:"red",text:"A dev action is already being performed"}
execute if score $performing_dev_action dev_action matches 1 run return fail

execute unless predicate rr:has_modification_room run tellraw @s {color:"red",text:"You cannot use this action in server mode"}
execute unless predicate rr:has_modification_room run return fail

scoreboard players reset * dev_action
scoreboard players set $performing_dev_action dev_action 1
scoreboard players set @s dev_action 1

scoreboard players set $set_game_mode dev_action 0
execute if score @s dev matches 101 store result score $set_game_mode dev_action run scoreboard players get @e[limit=1,x=0,type=armor_stand,tag=gamemodeAS,tag=rr_normal] gamemodeID
execute if score @s dev matches 102 store result score $set_game_mode dev_action run scoreboard players get @e[limit=1,x=0,type=armor_stand,tag=gamemodeAS,tag=rr_powerups] gamemodeID
execute if score @s dev matches 103 store result score $set_game_mode dev_action run scoreboard players get @e[limit=1,x=0,type=armor_stand,tag=gamemodeAS,tag=rr_swap] gamemodeID
execute if score @s dev matches 104 store result score $set_game_mode dev_action run scoreboard players get @e[limit=1,x=0,type=armor_stand,tag=gamemodeAS,tag=rr_ctf] gamemodeID
execute if score @s dev matches 105 store result score $set_game_mode dev_action run scoreboard players get @e[limit=1,x=0,type=armor_stand,tag=gamemodeAS,tag=rr_chase] gamemodeID
execute if score @s dev matches 106 store result score $set_game_mode dev_action run scoreboard players get @e[limit=1,x=0,type=armor_stand,tag=gamemodeAS,tag=rr_duel] gamemodeID
execute if score @s dev matches 107 store result score $set_game_mode dev_action run scoreboard players get @e[limit=1,x=0,type=armor_stand,tag=gamemodeAS,tag=rr_crusade] gamemodeID
execute if score @s dev matches 108 store result score $set_game_mode dev_action run scoreboard players get @e[limit=1,x=0,type=armor_stand,tag=gamemodeAS,tag=rr_sandbox] gamemodeID
execute if score @s dev matches 109 store result score $set_game_mode dev_action run scoreboard players get @e[limit=1,x=0,type=armor_stand,tag=gamemodeAS,tag=rr_classic] gamemodeID
execute if score $set_game_mode dev_action matches ..0 run scoreboard players reset * dev_action
execute if score $set_game_mode dev_action matches ..0 run return run tellraw @s {color:"red",text:"Invalid game mode"}

tellraw @a[x=0] "Quick-launching game..."

execute if predicate game:phase/match in minecraft:overworld run function game:forcestop
schedule function dev:__impl__/launch_game_mode/step_2 3t
