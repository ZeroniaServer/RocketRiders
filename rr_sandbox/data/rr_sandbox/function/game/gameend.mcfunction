function everytick:cluster
function rr_powerups:everytick/spawnables
clear @a[x=0,team=Blue] #custom:clear
clear @a[x=0,team=Blue] crossbow[custom_data~{nova:1b}]
clear @a[x=0,team=Blue] #rr_powerups:clear
clear @a[x=0,team=Blue] #rr_sandbox:clear
clear @a[x=0,team=Yellow] #custom:clear
clear @a[x=0,team=Yellow] crossbow[custom_data~{nova:1b}]
clear @a[x=0,team=Yellow] #rr_powerups:clear
clear @a[x=0,team=Yellow] #rr_sandbox:clear
execute if entity @s[scores={endtimer=1}] run clear @a[x=0,predicate=custom:on_blue_or_yellow_team] written_book
execute if entity @s[scores={endtimer=1}] run loot replace entity @a[x=0,predicate=custom:on_blue_or_yellow_team] hotbar.0 loot items:books/nomicon/post_game
execute as @a[x=0] run trigger nomicon set 0

execute if entity @s[scores={endtimer=1},tag=YellowWon] as @a[x=0,team=Blue] run loot replace entity @s armor.chest loot items:armor/generic_gear/chestplate
execute if entity @s[scores={endtimer=1},tag=BlueWon] as @a[x=0,team=Yellow] run loot replace entity @s armor.chest loot items:armor/generic_gear/chestplate

#Preclear
execute if entity @s[scores={endtimer=569..}] run function rr_sandbox:arenaclear/preclear