execute if entity @s[tag=unofficialDev] run tag @s remove unofficialDev
execute unless entity @s[team=Developer] run team join Developer @s
execute unless entity @s[gamemode=creative] run gamemode creative @s
execute unless entity @s[nbt={Dimension:1}] in overworld run tp @s @e[tag=joinpadEnd,limit=1]