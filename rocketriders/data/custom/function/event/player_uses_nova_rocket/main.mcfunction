advancement revoke @s only custom:event/player_uses_nova_rocket

execute if entity @s[gamemode=creative] if items entity @s weapon.mainhand *[custom_data~{id:"nova_rocket"},charged_projectiles=[]|!charged_projectiles] run loot replace entity @s weapon.mainhand loot items:util/nova_rocket
execute if entity @s[gamemode=creative] if items entity @s weapon.offhand *[custom_data~{id:"nova_rocket"},charged_projectiles=[]|!charged_projectiles] run loot replace entity @s weapon.offhand loot items:util/nova_rocket

clear @s *[custom_data~{id:"nova_rocket"},charged_projectiles=[]|!charged_projectiles]
