#> Detect if main weapon is the only thing being destroyed this tick
execute if items entity @s player.crafting.* netherite_pickaxe run tag @s add mainweapon
execute if items entity @s[tag=mainweapon] player.crafting.0 * unless items entity @s player.crafting.0 netherite_pickaxe run tag @s remove mainweapon
execute if items entity @s[tag=mainweapon] player.crafting.1 * unless items entity @s player.crafting.1 netherite_pickaxe run tag @s remove mainweapon
execute if items entity @s[tag=mainweapon] player.crafting.2 * unless items entity @s player.crafting.2 netherite_pickaxe run tag @s remove mainweapon
execute if items entity @s[tag=mainweapon] player.crafting.3 * unless items entity @s player.crafting.3 netherite_pickaxe run tag @s remove mainweapon

#> Ensure player doesn't lose main weapon
execute if items entity @s player.crafting.0 netherite_pickaxe run item replace entity @s player.cursor from entity @s player.crafting.0
execute if items entity @s player.crafting.0 netherite_pickaxe run item replace entity @s player.crafting.0 with air
execute if items entity @s player.crafting.1 netherite_pickaxe run item replace entity @s player.cursor from entity @s player.crafting.1
execute if items entity @s player.crafting.1 netherite_pickaxe run item replace entity @s player.crafting.1 with air
execute if items entity @s player.crafting.2 netherite_pickaxe run item replace entity @s player.cursor from entity @s player.crafting.2
execute if items entity @s player.crafting.2 netherite_pickaxe run item replace entity @s player.crafting.2 with air
execute if items entity @s player.crafting.3 netherite_pickaxe run item replace entity @s player.cursor from entity @s player.crafting.3
execute if items entity @s player.crafting.3 netherite_pickaxe run item replace entity @s player.crafting.3 with air
execute if entity @s[tag=mainweapon] run return run tag @s remove mainweapon

#> Destroy crafting slots + give feedback
summon item_display 0 1000 0 {UUID:[I;123,-1,-1,-1]}

execute if items entity @s player.crafting.0 * run item replace entity 0000007b-ffff-ffff-ffff-ffffffffffff contents from entity @s player.crafting.0
execute as 0000007b-ffff-ffff-ffff-ffffffffffff if items entity @s contents * run data modify storage rocketriders:craftingslot item set from entity @s item
execute if items entity @s player.crafting.0 * run tellraw @s [{"text":"Destroyed ","color":"red"},{"storage":"rocketriders:craftingslot","nbt":"item.components.minecraft:custom_name","interpret":true}]
item replace entity @s player.crafting.0 with air
item replace entity 0000007b-ffff-ffff-ffff-ffffffffffff contents with air

execute if items entity @s player.crafting.1 * run item replace entity 0000007b-ffff-ffff-ffff-ffffffffffff contents from entity @s player.crafting.1
execute as 0000007b-ffff-ffff-ffff-ffffffffffff if items entity @s contents * run data modify storage rocketriders:craftingslot item set from entity @s item
execute if items entity @s player.crafting.1 * run tellraw @s [{"text":"Destroyed ","color":"red"},{"storage":"rocketriders:craftingslot","nbt":"item.components.minecraft:custom_name","interpret":true}]
item replace entity @s player.crafting.1 with air
item replace entity 0000007b-ffff-ffff-ffff-ffffffffffff contents with air

execute if items entity @s player.crafting.2 * run item replace entity 0000007b-ffff-ffff-ffff-ffffffffffff contents from entity @s player.crafting.2
execute as 0000007b-ffff-ffff-ffff-ffffffffffff if items entity @s contents * run data modify storage rocketriders:craftingslot item set from entity @s item
execute if items entity @s player.crafting.2 * run tellraw @s [{"text":"Destroyed ","color":"red"},{"storage":"rocketriders:craftingslot","nbt":"item.components.minecraft:custom_name","interpret":true}]
item replace entity @s player.crafting.2 with air
item replace entity 0000007b-ffff-ffff-ffff-ffffffffffff contents with air

execute if items entity @s player.crafting.3 * run item replace entity 0000007b-ffff-ffff-ffff-ffffffffffff contents from entity @s player.crafting.3
execute as 0000007b-ffff-ffff-ffff-ffffffffffff if items entity @s contents * run data modify storage rocketriders:craftingslot item set from entity @s item
execute if items entity @s player.crafting.3 * run tellraw @s [{"text":"Destroyed ","color":"red"},{"storage":"rocketriders:craftingslot","nbt":"item.components.minecraft:custom_name","interpret":true}]
item replace entity @s player.crafting.3 with air
item replace entity 0000007b-ffff-ffff-ffff-ffffffffffff contents with air

kill 0000007b-ffff-ffff-ffff-ffffffffffff

playsound minecraft:item.axe.strip master @s ~ ~ ~ 0.5 0.9