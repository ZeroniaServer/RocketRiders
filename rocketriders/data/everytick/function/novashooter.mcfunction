advancement revoke @s only achievements:rr_utility/shot_crossbow
scoreboard players add @s NovaShot 1
execute if items entity @s weapon.mainhand crossbow[custom_data~{nova:1b}] run return run item replace entity @s weapon.mainhand with air
execute if items entity @s weapon.offhand crossbow[custom_data~{nova:1b}] run item replace entity @s weapon.offhand with air