execute as @a store result score @s HasAux run clear @s mooshroom_spawn_egg 0
execute as @a store result score @s HasToma run clear @s creeper_spawn_egg 0
execute as @a store result score @s HasBlade run clear @s husk_spawn_egg 0
execute as @a store result score @s HasWar run clear @s silverfish_spawn_egg 0
execute as @a store result score @s HasAnt run clear @s bat_spawn_egg 0
execute as @a store result score @s HasBolt run clear @s vex_spawn_egg 0
execute as @a store result score @s HasGuard run clear @s elder_guardian_spawn_egg 0
execute as @a store result score @s HasRift run clear @s salmon_spawn_egg 0
execute as @a store result score @s HasJug run clear @s zombie_horse_spawn_egg 0
execute as @a store result score @s HasShield run clear @s snowball 0
execute as @a store result score @s HasPlat run clear @s ender_pearl 0
execute as @a store result score @s HasFireball run clear @s blaze_spawn_egg 0
execute as @a store result score @s HasObshield run clear @s enderman_spawn_egg 0
execute as @a store result score @s HasBullet run clear @s skeleton_horse_spawn_egg 0
execute as @a store result score @s HasNull run clear @s phantom_spawn_egg 0
execute as @a store result score @s HasHur run clear @s drowned_spawn_egg 0
execute as @a store result score @s HasSlash run clear @s shulker_spawn_egg 0
execute as @a store result score @s HasHyper run clear @s turtle_spawn_egg 0
execute as @a store result score @s HasCata run clear @s cave_spider_spawn_egg 0
execute as @a store result score @s HasCitadel run clear @s wandering_trader_spawn_egg 0
execute as @a store result score @s HasGemi run clear @s fox_spawn_egg 0
execute as @a store result score @s HasNova run clear @s tropical_fish_spawn_egg 0
execute as @a store result score @s HasVortex run clear @s egg 0
execute as @a store result score @s HasSplash run clear @s splash_potion{Potion:"minecraft:water"} 0

execute as @a[scores={HasAux=2..}] run clear @s mooshroom_spawn_egg 1
execute as @a[scores={HasToma=2..}] run clear @s creeper_spawn_egg 1
execute as @a[scores={HasBlade=2..}] run clear @s husk_spawn_egg 1
execute as @a[scores={HasWar=2..}] run clear @s silverfish_spawn_egg 1
execute as @a[scores={HasAnt=2..}] run clear @s bat_spawn_egg 1
execute as @a[scores={HasBolt=2..}] run clear @s vex_spawn_egg 1
execute as @a[scores={HasGuard=2..}] run clear @s elder_guardian_spawn_egg 1
execute as @a[scores={HasRift=2..}] run clear @s salmon_spawn_egg 1
execute as @a[scores={HasJug=2..}] run clear @s zombie_horse_spawn_egg 1
execute as @a[scores={HasShield=2..}] run clear @s snowball 1
execute as @a[scores={HasPlat=2..}] run clear @s ender_pearl 1
execute as @a[scores={HasFireball=2..}] run clear @s blaze_spawn_egg 1
execute as @a[scores={HasObshield=2..}] run clear @s enderman_spawn_egg 1
execute as @a[scores={HasBullet=2..}] run clear @s skeleton_horse_spawn_egg 1
execute as @a[scores={HasNull=2..}] run clear @s phantom_spawn_egg 1
execute as @a[scores={HasHur=2..}] run clear @s drowned_spawn_egg 1
execute as @a[scores={HasSlash=2..}] run clear @s shulker_spawn_egg 1
execute as @a[scores={HasHyper=2..}] run clear @s turtle_spawn_egg 1
execute as @a[scores={HasCata=2..}] run clear @s cave_spider_spawn_egg 1
execute as @a[scores={HasCitadel=2..}] run clear @s wandering_trader_spawn_egg 1
execute as @a[scores={HasGemi=2..}] run clear @s fox_spawn_egg 1
execute as @a[scores={HasNova=2..}] run clear @s tropical_fish_spawn_egg 1
execute as @a[scores={HasVortex=2..}] run clear @s egg 1
execute as @a[scores={HasSplash=2..}] run clear @s splash_potion{Potion:"minecraft:water"} 1

#inventory limiter
scoreboard players set @a invCount 0
scoreboard players add @a[nbt={Inventory:[{Slot:0b}]}] invCount 1
scoreboard players add @a[nbt={Inventory:[{Slot:1b}]}] invCount 1
scoreboard players add @a[nbt={Inventory:[{Slot:2b}]}] invCount 1
scoreboard players add @a[nbt={Inventory:[{Slot:3b}]}] invCount 1
scoreboard players add @a[nbt={Inventory:[{Slot:4b}]}] invCount 1
scoreboard players add @a[nbt={Inventory:[{Slot:5b}]}] invCount 1
scoreboard players add @a[nbt={Inventory:[{Slot:6b}]}] invCount 1
scoreboard players add @a[nbt={Inventory:[{Slot:7b}]}] invCount 1
scoreboard players add @a[nbt={Inventory:[{Slot:8b}]}] invCount 1
scoreboard players add @a[nbt={Inventory:[{Slot:9b}]}] invCount 1
scoreboard players add @a[nbt={Inventory:[{Slot:10b}]}] invCount 1
scoreboard players add @a[nbt={Inventory:[{Slot:11b}]}] invCount 1
scoreboard players add @a[nbt={Inventory:[{Slot:12b}]}] invCount 1
scoreboard players add @a[nbt={Inventory:[{Slot:13b}]}] invCount 1
scoreboard players add @a[nbt={Inventory:[{Slot:14b}]}] invCount 1
scoreboard players add @a[nbt={Inventory:[{Slot:15b}]}] invCount 1
scoreboard players add @a[nbt={Inventory:[{Slot:16b}]}] invCount 1
scoreboard players add @a[nbt={Inventory:[{Slot:17b}]}] invCount 1
scoreboard players add @a[nbt={Inventory:[{Slot:18b}]}] invCount 1
scoreboard players add @a[nbt={Inventory:[{Slot:19b}]}] invCount 1
scoreboard players add @a[nbt={Inventory:[{Slot:20b}]}] invCount 1
scoreboard players add @a[nbt={Inventory:[{Slot:21b}]}] invCount 1
scoreboard players add @a[nbt={Inventory:[{Slot:22b}]}] invCount 1
scoreboard players add @a[nbt={Inventory:[{Slot:23b}]}] invCount 1
scoreboard players add @a[nbt={Inventory:[{Slot:24b}]}] invCount 1
scoreboard players add @a[nbt={Inventory:[{Slot:25b}]}] invCount 1
scoreboard players add @a[nbt={Inventory:[{Slot:26b}]}] invCount 1
scoreboard players add @a[nbt={Inventory:[{Slot:27b}]}] invCount 1
scoreboard players add @a[nbt={Inventory:[{Slot:28b}]}] invCount 1
scoreboard players add @a[nbt={Inventory:[{Slot:29b}]}] invCount 1
scoreboard players add @a[nbt={Inventory:[{Slot:30b}]}] invCount 1
scoreboard players add @a[nbt={Inventory:[{Slot:31b}]}] invCount 1
scoreboard players add @a[nbt={Inventory:[{Slot:32b}]}] invCount 1
scoreboard players add @a[nbt={Inventory:[{Slot:33b}]}] invCount 1
scoreboard players add @a[nbt={Inventory:[{Slot:34b}]}] invCount 1
scoreboard players add @a[nbt={Inventory:[{Slot:35b}]}] invCount 1
scoreboard players add @a[nbt={Inventory:[{Slot:-106b}]}] invCount 1

#(OLD) full hotbar
#execute as @a[tag=fullHotbar] unless entity @s[nbt={Inventory:[{Slot:0b},{Slot:1b},{Slot:2b},{Slot:3b},{Slot:4b},{Slot:5b},{Slot:6b},{Slot:7b},{Slot:8b}]}] run tag @s remove fullHotbar
#tag @a[tag=!fullHotbar,nbt={Inventory:[{Slot:0b},{Slot:1b},{Slot:2b},{Slot:3b},{Slot:4b},{Slot:5b},{Slot:6b},{Slot:7b},{Slot:8b}]}] add fullHotbar

#(OLD) full inventory
#execute as @a[tag=fullHotbar] unless entity @s[nbt={Inventory:[{Slot:0b},{Slot:1b},{Slot:2b},{Slot:3b},{Slot:4b},{Slot:5b},{Slot:6b},{Slot:7b},{Slot:8b},{Slot:9b},{Slot:10b},{Slot:11b},{Slot:12b},{Slot:13b},{Slot:14b},{Slot:15b},{Slot:16b},{Slot:17b},{Slot:18b},{Slot:19b},{Slot:20b},{Slot:21b},{Slot:22b},{Slot:23b},{Slot:24b},{Slot:25b},{Slot:26b},{Slot:27b},{Slot:28b},{Slot:29b},{Slot:30b},{Slot:31b},{Slot:32b},{Slot:33b},{Slot:34b},{Slot:35b},{Slot:-106b}]}] run tag @s remove fullHotbar
#tag @a[tag=!fullHotbar,nbt={Inventory:[{Slot:0b},{Slot:1b},{Slot:2b},{Slot:3b},{Slot:4b},{Slot:5b},{Slot:6b},{Slot:7b},{Slot:8b},{Slot:9b},{Slot:10b},{Slot:11b},{Slot:12b},{Slot:13b},{Slot:14b},{Slot:15b},{Slot:16b},{Slot:17b},{Slot:18b},{Slot:19b},{Slot:20b},{Slot:21b},{Slot:22b},{Slot:23b},{Slot:24b},{Slot:25b},{Slot:26b},{Slot:27b},{Slot:28b},{Slot:29b},{Slot:30b},{Slot:31b},{Slot:32b},{Slot:33b},{Slot:34b},{Slot:35b},{Slot:-106b}]}] add fullHotbar