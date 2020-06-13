execute store result score @s HasLavaSplash run clear @s splash_potion{Potion:"minecraft:awkward"} 0
execute store result score @s HasTrident run clear @s trident 0
execute store result score @s HasElytra run clear @s elytra 0
execute store result score @s HasSlapFish run clear @s cooked_salmon 0
execute store result score @s HasTotem run clear @s totem_of_undying 0
execute store result score @s HasTippedArrows run clear @s tipped_arrow 0
execute store result score @s HasBeeShield run clear @s honey_bottle 0

clear @s[scores={HasLavaSplash=2..}] splash_potion{Potion:"minecraft:awkward"} 1
clear @s[scores={HasTrident=2..}] trident 1
clear @s[scores={HasSlapFish=2..}] cooked_salmon 1
clear @s[scores={HasTotem=2..}] totem_of_undying 1
clear @s[scores={HasBeeShield=2..}] honey_bottle 1