execute as @a store result score @s HasLavaSplash run clear @s splash_potion{Potion:"minecraft:awkward"} 0
execute as @a store result score @s HasFire run clear @s fire_charge 0
execute as @a store result score @s HasTrident run clear @s trident 0
execute as @a store result score @s HasPickaxe run clear @s stone_pickaxe 0
execute as @a store result score @s HasBarricade run clear @s pufferfish_spawn_egg 0
execute as @a store result score @s HasSmokeBomb run clear @s chorus_fruit 0
execute as @a store result score @s HasElytra run clear @s elytra 0

execute as @a[scores={HasLavaSplash=2..}] run clear @s splash_potion{Potion:"minecraft:awkward"} 1
execute as @a[scores={HasTrident=2..}] run clear @s trident 1
execute as @a[scores={HasPickaxe=2..}] run clear @s stone_pickaxe 1