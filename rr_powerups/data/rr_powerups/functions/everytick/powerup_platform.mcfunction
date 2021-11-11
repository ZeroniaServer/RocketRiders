#obsidian rim
execute unless score @e[tag=captureMiddle,limit=1] CmdData matches 1.. run fill ~6 ~-1 ~-1 ~6 ~-1 ~1 obsidian
execute if score @e[tag=captureMiddle,limit=1] CmdData matches 1.. run fill ~6 ~-1 ~-1 ~6 ~-1 ~1 crying_obsidian
execute unless score @e[tag=captureMiddle,limit=1] CmdData matches 2.. run fill ~-6 ~-1 ~-1 ~-6 ~-1 ~1 obsidian
execute if score @e[tag=captureMiddle,limit=1] CmdData matches 2.. run fill ~-6 ~-1 ~-1 ~-6 ~-1 ~1 crying_obsidian
execute unless score @e[tag=captureMiddle,limit=1] CmdData matches 3.. run fill ~-1 ~-1 ~6 ~1 ~-1 ~6 obsidian
execute if score @e[tag=captureMiddle,limit=1] CmdData matches 3.. run fill ~-1 ~-1 ~6 ~1 ~-1 ~6 crying_obsidian
execute unless score @e[tag=captureMiddle,limit=1] CmdData matches 4.. run fill ~-1 ~-1 ~-6 ~1 ~-1 ~-6 obsidian
execute if score @e[tag=captureMiddle,limit=1] CmdData matches 4.. run fill ~-1 ~-1 ~-6 ~1 ~-1 ~-6 crying_obsidian
execute unless score @e[tag=captureMiddle,limit=1] CmdData matches 5.. run fill ~-5 ~-1 ~2 ~-5 ~-1 ~3 obsidian
execute if score @e[tag=captureMiddle,limit=1] CmdData matches 5.. run fill ~-5 ~-1 ~2 ~-5 ~-1 ~3 crying_obsidian
execute unless score @e[tag=captureMiddle,limit=1] CmdData matches 6.. run fill ~-5 ~-1 ~-2 ~-5 ~-1 ~-3 obsidian
execute if score @e[tag=captureMiddle,limit=1] CmdData matches 6.. run fill ~-5 ~-1 ~-2 ~-5 ~-1 ~-3 crying_obsidian
execute unless score @e[tag=captureMiddle,limit=1] CmdData matches 7.. run fill ~5 ~-1 ~2 ~5 ~-1 ~3 obsidian
execute if score @e[tag=captureMiddle,limit=1] CmdData matches 7.. run fill ~5 ~-1 ~2 ~5 ~-1 ~3 crying_obsidian
execute unless score @e[tag=captureMiddle,limit=1] CmdData matches 8.. run fill ~5 ~-1 ~-2 ~5 ~-1 ~-3 obsidian
execute if score @e[tag=captureMiddle,limit=1] CmdData matches 8.. run fill ~5 ~-1 ~-2 ~5 ~-1 ~-3 crying_obsidian
execute unless score @e[tag=captureMiddle,limit=1] CmdData matches 9.. run fill ~-2 ~-1 ~5 ~-3 ~-1 ~5 obsidian
execute if score @e[tag=captureMiddle,limit=1] CmdData matches 9.. run fill ~-2 ~-1 ~5 ~-3 ~-1 ~5 crying_obsidian
execute unless score @e[tag=captureMiddle,limit=1] CmdData matches 10.. run fill ~-2 ~-1 ~-5 ~-3 ~-1 ~-5 obsidian
execute if score @e[tag=captureMiddle,limit=1] CmdData matches 10.. run fill ~-2 ~-1 ~-5 ~-3 ~-1 ~-5 crying_obsidian
execute unless score @e[tag=captureMiddle,limit=1] CmdData matches 11.. run fill ~2 ~-1 ~5 ~3 ~-1 ~5 obsidian
execute if score @e[tag=captureMiddle,limit=1] CmdData matches 11.. run fill ~2 ~-1 ~5 ~3 ~-1 ~5 crying_obsidian
execute unless score @e[tag=captureMiddle,limit=1] CmdData matches 12.. run fill ~2 ~-1 ~-5 ~3 ~-1 ~-5 obsidian
execute if score @e[tag=captureMiddle,limit=1] CmdData matches 12.. run fill ~2 ~-1 ~-5 ~3 ~-1 ~-5 crying_obsidian
execute unless score @e[tag=captureMiddle,limit=1] CmdData matches 13.. run setblock ~4 ~-1 ~4 obsidian
execute if score @e[tag=captureMiddle,limit=1] CmdData matches 13.. run setblock ~4 ~-1 ~4 crying_obsidian
execute unless score @e[tag=captureMiddle,limit=1] CmdData matches 14.. run setblock ~-4 ~-1 ~4 obsidian
execute if score @e[tag=captureMiddle,limit=1] CmdData matches 14.. run setblock ~-4 ~-1 ~4 crying_obsidian
execute unless score @e[tag=captureMiddle,limit=1] CmdData matches 15.. run setblock ~-4 ~-1 ~-4 obsidian
execute if score @e[tag=captureMiddle,limit=1] CmdData matches 15.. run setblock ~-4 ~-1 ~-4 crying_obsidian
execute unless score @e[tag=captureMiddle,limit=1] CmdData matches 16.. run setblock ~4 ~-1 ~-4 obsidian
execute if score @e[tag=captureMiddle,limit=1] CmdData matches 16.. run setblock ~4 ~-1 ~-4 crying_obsidian

#purpur stairs
setblock ~-1 ~-1 ~ purpur_stairs[facing=west]
setblock ~1 ~-1 ~ purpur_stairs[facing=east]
setblock ~ ~-1 ~-1 purpur_stairs[facing=north]
setblock ~ ~-1 ~1 purpur_stairs[facing=south]

execute if entity @s[scores={capturePoint=0},tag=!contested] at @s run function rr_powerups:everytick/uncaptured_platform
execute if entity @s[scores={capturePoint=1},tag=!contested] at @s run function rr_powerups:everytick/blue_platform
execute if entity @s[scores={capturePoint=2},tag=!contested] at @s run function rr_powerups:everytick/yellow_platform
execute if entity @s[tag=contested] at @s run function rr_powerups:everytick/contested_platform

#antidupe blocks
fill ~-1 ~-2 ~-5 ~1 ~-2 ~5 air
fill ~-5 ~-2 ~-1 ~5 ~-2 ~1 air
fill ~-3 ~-2 ~-4 ~3 ~-2 ~4 air
fill ~-4 ~-2 ~-3 ~4 ~-2 ~3 air