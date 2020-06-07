execute unless entity @s[tag=unofficialDev] run tag @s add unofficialDev
execute unless entity @s[team=Developer] run team join Developer @s
execute unless entity @s[gamemode=creative] run gamemode creative @s
execute unless entity @s[nbt={Dimension:1}] in the_end run tp @s 100 49 0
tag @s add unDevTeleporting