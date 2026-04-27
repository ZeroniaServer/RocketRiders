advancement revoke @s only custom:event/player_uses_nova_rocket

execute store success score $mainhand var if items entity @s weapon.mainhand *[custom_data~{id:"nova_rocket"},charged_projectiles=[]|!charged_projectiles]

execute if score $mainhand var matches 1 store result score $count var if items entity @s weapon.mainhand *[custom_data~{id:"nova_rocket"},charged_projectiles=[]|!charged_projectiles]
execute if score $mainhand var matches 0 store result score $count var if items entity @s weapon.offhand *[custom_data~{id:"nova_rocket"},charged_projectiles=[]|!charged_projectiles]
execute unless entity @s[gamemode=creative] run scoreboard players remove $count var 1

execute if score $count var matches ..0 if score $mainhand var matches 1 run return run item replace entity @s weapon.mainhand with air
execute if score $count var matches ..0 if score $mainhand var matches 0 run return run item replace entity @s weapon.offhand with air

execute if score $mainhand var matches 1 run loot replace entity @s weapon.mainhand loot {pools:[{rolls:1,entries:[{type:"minecraft:loot_table",value:"items:util/nova_rocket"}]}],functions:[{function:"minecraft:set_count",count:{type:"minecraft:score",target:{type:"minecraft:fixed",name:"$count"},score:"var"}}]}
execute if score $mainhand var matches 0 run loot replace entity @s weapon.offhand loot {pools:[{rolls:1,entries:[{type:"minecraft:loot_table",value:"items:util/nova_rocket"}]}],functions:[{function:"minecraft:set_count",count:{type:"minecraft:score",target:{type:"minecraft:fixed",name:"$count"},score:"var"}}]}

