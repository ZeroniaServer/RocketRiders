##kills trident entities if the player already has a trident
execute on origin store result score @s HasTrident run clear @s trident 0
execute on origin if entity @s[tag=tridentValid,scores={HasTrident=1..}] run kill @s