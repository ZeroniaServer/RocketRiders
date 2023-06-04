##kills trident entities if the player already has a trident
execute as @p[tag=!tridentChecked] unless entity @s[team=!Yellow,team=!Blue] run tag @s add tridentChecking
execute if score @s playerUUID = @p[tag=tridentChecking] playerUUID as @p[tag=tridentChecking] run tag @s add tridentValid
execute as @p[tag=tridentValid] store result score @s HasTrident run clear @s trident 0
execute if entity @p[tag=tridentValid,scores={HasTrident=1..},distance=..5] run kill @s
tag @p[tag=tridentChecking] add tridentChecked
tag @a[x=0,tag=tridentChecked] remove tridentChecking
tag @a[x=0,tag=tridentChecked] remove tridentValid
execute if entity @a[x=0,tag=!tridentChecked] run function everytick:trident_antidupe