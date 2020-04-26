execute as @a store result score @s HasLavaSplash run clear @s splash_potion{Potion:"minecraft:awkward"} 0
execute as @a store result score @s HasTrident run clear @s trident 0
execute as @a store result score @s HasElytra run clear @s elytra 0
execute as @a store result score @s HasSlapFish run clear @s cooked_salmon 0
execute as @a store result score @s HasTotem run clear @s totem_of_undying 0

execute as @a[scores={HasLavaSplash=2..}] run clear @s splash_potion{Potion:"minecraft:awkward"} 1
execute as @a[scores={HasTrident=2..}] run clear @s trident 1
execute as @a[scores={HasSlapFish=2..}] run clear @s cooked_salmon 1
execute as @a[scores={HasTotem=2..}] run clear @s totem_of_undying 1