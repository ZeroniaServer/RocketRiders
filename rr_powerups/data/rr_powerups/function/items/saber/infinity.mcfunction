execute if items entity @s hotbar.0 bow run loot replace entity @s hotbar.0 loot items:misc/shooting_saber_infinity
execute if items entity @s hotbar.1 bow run loot replace entity @s hotbar.1 loot items:misc/shooting_saber_infinity
execute if items entity @s hotbar.2 bow run loot replace entity @s hotbar.2 loot items:misc/shooting_saber_infinity
execute if items entity @s hotbar.3 bow run loot replace entity @s hotbar.3 loot items:misc/shooting_saber_infinity
execute if items entity @s hotbar.4 bow run loot replace entity @s hotbar.4 loot items:misc/shooting_saber_infinity
execute if items entity @s hotbar.5 bow run loot replace entity @s hotbar.5 loot items:misc/shooting_saber_infinity
execute if items entity @s hotbar.6 bow run loot replace entity @s hotbar.6 loot items:misc/shooting_saber_infinity
execute if items entity @s hotbar.7 bow run loot replace entity @s hotbar.7 loot items:misc/shooting_saber_infinity
execute if items entity @s hotbar.8 bow run loot replace entity @s hotbar.8 loot items:misc/shooting_saber_infinity
execute if items entity @s inventory.0 bow run loot replace entity @s inventory.0 loot items:misc/shooting_saber_infinity
execute if items entity @s inventory.1 bow run loot replace entity @s inventory.1 loot items:misc/shooting_saber_infinity
execute if items entity @s inventory.2 bow run loot replace entity @s inventory.2 loot items:misc/shooting_saber_infinity
execute if items entity @s inventory.3 bow run loot replace entity @s inventory.3 loot items:misc/shooting_saber_infinity
execute if items entity @s inventory.4 bow run loot replace entity @s inventory.4 loot items:misc/shooting_saber_infinity
execute if items entity @s inventory.5 bow run loot replace entity @s inventory.5 loot items:misc/shooting_saber_infinity
execute if items entity @s inventory.6 bow run loot replace entity @s inventory.6 loot items:misc/shooting_saber_infinity
execute if items entity @s inventory.7 bow run loot replace entity @s inventory.7 loot items:misc/shooting_saber_infinity
execute if items entity @s inventory.8 bow run loot replace entity @s inventory.8 loot items:misc/shooting_saber_infinity
execute if items entity @s inventory.9 bow run loot replace entity @s inventory.9 loot items:misc/shooting_saber_infinity
execute if items entity @s inventory.10 bow run loot replace entity @s inventory.10 loot items:misc/shooting_saber_infinity
execute if items entity @s inventory.11 bow run loot replace entity @s inventory.11 loot items:misc/shooting_saber_infinity
execute if items entity @s inventory.12 bow run loot replace entity @s inventory.12 loot items:misc/shooting_saber_infinity
execute if items entity @s inventory.13 bow run loot replace entity @s inventory.13 loot items:misc/shooting_saber_infinity
execute if items entity @s inventory.14 bow run loot replace entity @s inventory.14 loot items:misc/shooting_saber_infinity
execute if items entity @s inventory.15 bow run loot replace entity @s inventory.15 loot items:misc/shooting_saber_infinity
execute if items entity @s inventory.16 bow run loot replace entity @s inventory.16 loot items:misc/shooting_saber_infinity
execute if items entity @s inventory.17 bow run loot replace entity @s inventory.17 loot items:misc/shooting_saber_infinity
execute if items entity @s inventory.18 bow run loot replace entity @s inventory.18 loot items:misc/shooting_saber_infinity
execute if items entity @s inventory.19 bow run loot replace entity @s inventory.19 loot items:misc/shooting_saber_infinity
execute if items entity @s inventory.20 bow run loot replace entity @s inventory.20 loot items:misc/shooting_saber_infinity
execute if items entity @s inventory.21 bow run loot replace entity @s inventory.21 loot items:misc/shooting_saber_infinity
execute if items entity @s inventory.22 bow run loot replace entity @s inventory.22 loot items:misc/shooting_saber_infinity
execute if items entity @s inventory.23 bow run loot replace entity @s inventory.23 loot items:misc/shooting_saber_infinity
execute if items entity @s inventory.24 bow run loot replace entity @s inventory.24 loot items:misc/shooting_saber_infinity
execute if items entity @s inventory.25 bow run loot replace entity @s inventory.25 loot items:misc/shooting_saber_infinity
execute if items entity @s inventory.26 bow run loot replace entity @s inventory.26 loot items:misc/shooting_saber_infinity
execute if items entity @s weapon.offhand bow run loot replace entity @s weapon.offhand loot items:misc/shooting_saber_infinity
execute if items entity @s player.crafting.0 bow run loot replace entity @s player.crafting.0 loot items:misc/shooting_saber_infinity
execute if items entity @s player.crafting.1 bow run loot replace entity @s player.crafting.1 loot items:misc/shooting_saber_infinity
execute if items entity @s player.crafting.2 bow run loot replace entity @s player.crafting.2 loot items:misc/shooting_saber_infinity
execute if items entity @s player.crafting.3 bow run loot replace entity @s player.crafting.3 loot items:misc/shooting_saber_infinity
execute if items entity @s player.cursor bow run loot replace entity @s player.cursor loot items:misc/shooting_saber_infinity
tag @s add self
execute as @e[x=0,type=item] if items entity @s contents bow store success score @s BowShot on origin if entity @s[tag=self]
execute as @e[x=0,type=item,scores={BowShot=1..}] run loot replace entity @s contents loot items:misc/shooting_saber_infinity
scoreboard players reset @e[x=0,type=item,scores={BowShot=1..}] BowShot
tag @s remove self