#Clears temporary afterwards because for some reason that can't be done in the same tick

execute as @s[tag=BAux] positioned ~-1 175 ~4 run fill ~-5 ~ ~-5 ~7 ~3 ~15 air replace
execute as @s[tag=YAux] positioned ~-1 175 ~-14 run fill ~-5 ~ ~-5 ~7 ~3 ~15 air replace

execute as @s[tag=BToma] positioned ~-1 175 ~4 run fill ~-5 ~ ~-5 ~6 ~1 ~13 air replace
execute as @s[tag=YToma] positioned ~-1 175 ~-12 run fill ~2 ~ ~ ~6 ~1 ~13 air replace

execute as @s[tag=BNull] positioned ~-1 175 ~4 run fill ~-5 ~ ~-5 ~6 ~2 ~13 air replace
execute as @s[tag=YNull] positioned ~-1 175 ~-12 run fill ~-5 ~ ~-5 ~6 ~2 ~13 air replace

execute as @s[tag=BWar] positioned ~-1 175 ~4 run fill ~-5 ~ ~-5 ~7 ~2 ~15 air replace
execute as @s[tag=YWar] positioned ~-1 175 ~-14 run fill ~-5 ~ ~-5 ~7 ~2 ~15 air replace

execute as @s[tag=BBolt] positioned ~-1 175 ~4 run fill ~-5 ~ ~-5 ~6 ~1 ~15 air replace
execute as @s[tag=YBolt] positioned ~-1 175 ~-14 run fill ~-5 ~ ~-5 ~6 ~1 ~15 air replace

execute as @s[tag=BHur] positioned ~-1 175 ~5 run fill ~-5 ~ ~-5 ~7 ~1 ~13 air replace
execute as @s[tag=YHur] positioned ~-1 175 ~-13 run fill ~-5 ~ ~-5 ~7 ~1 ~13 air replace

execute as @s[tag=BGuard] positioned ~-1 175 ~4 run fill ~-5 ~ ~-5 ~7 ~2 ~15 air replace
execute as @s[tag=YGuard] positioned ~-1 175 ~-14 run fill ~-5 ~ ~-5 ~7 ~2 ~15 air replace

execute as @s[tag=BAnt] positioned ~ 175 ~4 run fill ~-5 ~ ~-5 ~5 ~3 ~11 air replace
execute as @s[tag=YAnt] positioned ~ 175 ~-10 run fill ~-5 ~ ~-5 ~5 ~3 ~11 air replace

execute as @s[tag=BBlade] positioned ~-1 175 ~4 run fill ~-5 ~ ~-5 ~7 ~1 ~19 air replace
execute as @s[tag=YBlade] positioned ~-1 175 ~-18 run fill ~-5 ~ ~-5 ~7 ~1 ~19 air replace

execute as @s[tag=BRift] positioned ~-1 175 ~4 run fill ~-5 ~ ~-5 ~7 ~1 ~18 air replace
execute as @s[tag=YRift] positioned ~-1 175 ~-17 run fill ~-5 ~ ~-5 ~7 ~1 ~18 air replace

execute as @s[tag=BJug] positioned ~-1 175 ~4 run fill ~-5 ~ ~-5 ~7 ~2 ~21 air replace
execute as @s[tag=YJug] positioned ~-1 175 ~-20 run fill ~-5 ~ ~-5 ~7 ~2 ~21 air replace

execute as @s[tag=BSlash] positioned ~-1 175 ~4 run fill ~-5 ~ ~-5 ~7 ~3 ~17 air replace
execute as @s[tag=YSlash] positioned ~-1 175 ~-16 run fill ~-5 ~ ~-5 ~7 ~3 ~17 air replace

execute as @s[tag=BCata] positioned ~-1 175 ~3 run fill ~-5 ~ ~-5 ~7 ~2 ~16 air replace
execute as @s[tag=YCata] positioned ~-1 175 ~-14 run fill ~-5 ~ ~-5 ~7 ~2 ~16 air replace

execute as @s[tag=BCitadel] positioned ~-1 175 ~4 run fill ~-5 ~ ~-5 ~7 ~2 ~14 air replace
execute as @s[tag=YCitadel] positioned ~-1 175 ~-13 run fill ~-5 ~ ~-5 ~7 ~2 ~14 air replace

execute as @s[tag=BGemi] positioned ~-1 175 ~4 run fill ~-5 ~ ~-5 ~7 ~1 ~14 air replace
execute as @s[tag=YGemi] positioned ~-1 175 ~-13 run fill ~-5 ~ ~-5 ~7 ~1 ~14 air replace

execute as @s[tag=BLift] positioned ~-1 175 ~4 run fill ~-5 ~ ~-5 ~7 ~2 ~11 air replace
execute as @s[tag=YLift] positioned ~-1 175 ~-10 run fill ~-5 ~ ~-5 ~7 ~2 ~11 air replace

execute as @s[tag=BHyper] positioned ~-1 175 ~5 run fill ~-5 ~ ~-5 ~7 ~2 ~14 air replace
execute as @s[tag=YHyper] positioned ~-1 175 ~-14 run fill ~-5 ~ ~-5 ~7 ~2 ~14 air replace

execute as @s[tag=BBull] positioned ~-1 175 ~4 run fill ~-5 ~ ~-5 ~7 ~2 ~17 air replace
execute as @s[tag=YBull] positioned ~-1 175 ~-16 run fill ~-5 ~ ~-5 ~7 ~2 ~17 air replace

execute as @s[tag=BDuplex] positioned ~-1 175 ~4 run fill ~-5 ~ ~-5 ~7 ~2 ~22 air replace
execute as @s[tag=YDuplex] positioned ~-1 175 ~-21 run fill ~-5 ~ ~-5 ~7 ~2 ~22 air replace

execute as @s[tag=BBroad] positioned ~-1 175 ~5 run fill ~-5 ~ ~-5 ~7 ~2 ~16 air replace
execute as @s[tag=YBroad] positioned ~-1 175 ~-16 run fill ~-5 ~ ~-5 ~7 ~2 ~16 air replace

kill @s[tag=repeatedClear]
tag @s add repeatedClear