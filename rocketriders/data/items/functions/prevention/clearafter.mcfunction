#Clears temporary blocks afterwards because for some reason that can't be done in the same tick

execute if entity @s[tag=BAux] positioned ~-1 175 ~4 run fill ~-5 ~ ~-5 ~7 ~3 ~15 air replace
execute if entity @s[tag=YAux] positioned ~-1 175 ~-14 run fill ~-5 ~ ~-5 ~7 ~3 ~15 air replace

execute if entity @s[tag=BToma] positioned ~-1 175 ~4 run fill ~-5 ~ ~-5 ~6 ~1 ~13 air replace
execute if entity @s[tag=YToma] positioned ~-1 175 ~-12 run fill ~2 ~ ~ ~6 ~1 ~13 air replace

execute if entity @s[tag=BNull] positioned ~-1 175 ~4 run fill ~-5 ~ ~-5 ~6 ~2 ~13 air replace
execute if entity @s[tag=YNull] positioned ~-1 175 ~-12 run fill ~-5 ~ ~-5 ~6 ~2 ~13 air replace

execute if entity @s[tag=BWar] positioned ~-1 175 ~4 run fill ~-5 ~ ~-5 ~7 ~2 ~15 air replace
execute if entity @s[tag=YWar] positioned ~-1 175 ~-14 run fill ~-5 ~ ~-5 ~7 ~2 ~15 air replace

execute if entity @s[tag=BBolt] positioned ~-1 175 ~4 run fill ~-5 ~ ~-5 ~6 ~1 ~15 air replace
execute if entity @s[tag=YBolt] positioned ~-1 175 ~-14 run fill ~-5 ~ ~-5 ~6 ~1 ~15 air replace

execute if entity @s[tag=BHur] positioned ~-1 175 ~5 run fill ~-5 ~ ~-5 ~7 ~1 ~13 air replace
execute if entity @s[tag=YHur] positioned ~-1 175 ~-13 run fill ~-5 ~ ~-5 ~7 ~1 ~13 air replace

execute if entity @s[tag=BGuard] positioned ~-1 175 ~4 run fill ~-5 ~ ~-5 ~7 ~2 ~15 air replace
execute if entity @s[tag=YGuard] positioned ~-1 175 ~-14 run fill ~-5 ~ ~-5 ~7 ~2 ~15 air replace

execute if entity @s[tag=BAnt] positioned ~ 175 ~4 run fill ~-5 ~ ~-5 ~5 ~3 ~11 air replace
execute if entity @s[tag=YAnt] positioned ~ 175 ~-10 run fill ~-5 ~ ~-5 ~5 ~3 ~11 air replace

execute if entity @s[tag=BBlade] positioned ~-1 175 ~4 run fill ~-5 ~ ~-5 ~7 ~1 ~19 air replace
execute if entity @s[tag=YBlade] positioned ~-1 175 ~-18 run fill ~-5 ~ ~-5 ~7 ~1 ~19 air replace

execute if entity @s[tag=BRift] positioned ~-1 175 ~4 run fill ~-5 ~ ~-5 ~7 ~1 ~18 air replace
execute if entity @s[tag=YRift] positioned ~-1 175 ~-17 run fill ~-5 ~ ~-5 ~7 ~1 ~18 air replace

execute if entity @s[tag=BJug] positioned ~-1 175 ~4 run fill ~-5 ~ ~-5 ~7 ~2 ~21 air replace
execute if entity @s[tag=YJug] positioned ~-1 175 ~-20 run fill ~-5 ~ ~-5 ~7 ~2 ~21 air replace

execute if entity @s[tag=BSlash] positioned ~-1 175 ~4 run fill ~-5 ~ ~-5 ~7 ~3 ~17 air replace
execute if entity @s[tag=YSlash] positioned ~-1 175 ~-16 run fill ~-5 ~ ~-5 ~7 ~3 ~17 air replace

execute if entity @s[tag=BCata] positioned ~-1 175 ~3 run fill ~-5 ~ ~-5 ~7 ~2 ~16 air replace
execute if entity @s[tag=YCata] positioned ~-1 175 ~-14 run fill ~-5 ~ ~-5 ~7 ~2 ~16 air replace

execute if entity @s[tag=BCitadel] positioned ~-1 175 ~4 run fill ~-5 ~ ~-5 ~7 ~2 ~14 air replace
execute if entity @s[tag=YCitadel] positioned ~-1 175 ~-13 run fill ~-5 ~ ~-5 ~7 ~2 ~14 air replace

execute if entity @s[tag=BGemi] positioned ~-1 175 ~4 run fill ~-5 ~ ~-5 ~7 ~1 ~14 air replace
execute if entity @s[tag=YGemi] positioned ~-1 175 ~-13 run fill ~-5 ~ ~-5 ~7 ~1 ~14 air replace

execute if entity @s[tag=BLift] positioned ~-1 175 ~4 run fill ~-5 ~ ~-5 ~7 ~2 ~11 air replace
execute if entity @s[tag=YLift] positioned ~-1 175 ~-10 run fill ~-5 ~ ~-5 ~7 ~2 ~11 air replace

execute if entity @s[tag=BHyper] positioned ~-1 175 ~5 run fill ~-5 ~ ~-5 ~7 ~2 ~14 air replace
execute if entity @s[tag=YHyper] positioned ~-1 175 ~-14 run fill ~-5 ~ ~-5 ~7 ~2 ~14 air replace

execute if entity @s[tag=BBull] positioned ~-1 175 ~4 run fill ~-5 ~ ~-5 ~7 ~2 ~17 air replace
execute if entity @s[tag=YBull] positioned ~-1 175 ~-16 run fill ~-5 ~ ~-5 ~7 ~2 ~17 air replace

execute if entity @s[tag=BDuplex] positioned ~-1 175 ~4 run fill ~-5 ~ ~-5 ~7 ~2 ~22 air replace
execute if entity @s[tag=YDuplex] positioned ~-1 175 ~-21 run fill ~-5 ~ ~-5 ~7 ~2 ~22 air replace

execute if entity @s[tag=BBroad] positioned ~-1 175 ~5 run fill ~-5 ~ ~-5 ~7 ~2 ~16 air replace
execute if entity @s[tag=YBroad] positioned ~-1 175 ~-16 run fill ~-5 ~ ~-5 ~7 ~2 ~16 air replace

kill @s[tag=repeatedClear5]
tag @s[tag=repeatedClear4] add repeatedClear5
tag @s[tag=repeatedClear3] add repeatedClear4
tag @s[tag=repeatedClear2] add repeatedClear3
tag @s[tag=repeatedClear1] add repeatedClear2
tag @s add repeatedClear1
