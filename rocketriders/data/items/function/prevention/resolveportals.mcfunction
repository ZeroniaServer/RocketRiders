execute unless predicate game:gamemode_components/no_portals unless predicate game:gamemode_components/crusade_portals run fill -10 58 74 34 58 74 minecraft:obsidian replace #custom:basereplace strict
execute unless predicate game:gamemode_components/no_portals unless predicate game:gamemode_components/crusade_portals run fill 34 58 74 34 37 74 minecraft:obsidian replace #custom:basereplace strict
execute unless predicate game:gamemode_components/no_portals unless predicate game:gamemode_components/crusade_portals run fill 34 37 74 -10 37 74 minecraft:obsidian replace #custom:basereplace strict
execute unless predicate game:gamemode_components/no_portals unless predicate game:gamemode_components/crusade_portals run fill 12 37 74 12 58 74 minecraft:obsidian replace #custom:basereplace strict
execute unless predicate game:gamemode_components/no_portals unless predicate game:gamemode_components/crusade_portals run fill -10 37 74 -10 58 74 minecraft:obsidian replace #custom:basereplace strict

execute unless predicate game:gamemode_components/no_portals unless predicate game:gamemode_components/crusade_portals run fill -10 58 -74 34 58 -74 minecraft:obsidian replace #custom:basereplace strict
execute unless predicate game:gamemode_components/no_portals unless predicate game:gamemode_components/crusade_portals run fill 34 58 -74 34 37 -74 minecraft:obsidian replace #custom:basereplace strict
execute unless predicate game:gamemode_components/no_portals unless predicate game:gamemode_components/crusade_portals run fill 34 37 -74 -10 37 -74 minecraft:obsidian replace #custom:basereplace strict
execute unless predicate game:gamemode_components/no_portals unless predicate game:gamemode_components/crusade_portals run fill 12 37 -74 12 58 -74 minecraft:obsidian replace #custom:basereplace strict
execute unless predicate game:gamemode_components/no_portals unless predicate game:gamemode_components/crusade_portals run fill -10 37 -74 -10 58 -74 minecraft:obsidian replace #custom:basereplace strict

#Make sure pistons that got cloned up there don't replace portals!!
execute unless predicate game:gamemode_components/no_portals unless predicate game:gamemode_components/crusade_portals run fill -10 175 74 34 178 74 air replace #custom:piston strict
execute unless predicate game:gamemode_components/no_portals unless predicate game:gamemode_components/crusade_portals run fill -10 175 -74 34 178 -74 air replace #custom:piston strict

execute unless predicate game:gamemode_components/no_portals unless predicate game:gamemode_components/crusade_portals if score $y1port var matches 1 run fill 11 38 74 -9 57 74 nether_portal strict
execute unless predicate game:gamemode_components/no_portals unless predicate game:gamemode_components/crusade_portals if score $y1port var matches 1 run fill 11 175 74 -9 178 74 air replace #custom:piston strict
execute unless predicate game:gamemode_components/no_portals unless predicate game:gamemode_components/crusade_portals if score $y2port var matches 1 run fill 13 38 74 33 57 74 nether_portal strict
execute unless predicate game:gamemode_components/no_portals unless predicate game:gamemode_components/crusade_portals if score $y2port var matches 1 run fill 13 175 74 33 178 74 air replace #custom:piston strict
execute unless predicate game:gamemode_components/no_portals unless predicate game:gamemode_components/crusade_portals if score $b1port var matches 1 run fill 11 38 -74 -9 57 -74 nether_portal strict
execute unless predicate game:gamemode_components/no_portals unless predicate game:gamemode_components/crusade_portals if score $b1port var matches 1 run fill 11 175 -74 -9 178 -74 air replace #custom:piston strict
execute unless predicate game:gamemode_components/no_portals unless predicate game:gamemode_components/crusade_portals if score $b2port var matches 1 run fill 13 38 -74 33 57 -74 nether_portal strict
execute unless predicate game:gamemode_components/no_portals unless predicate game:gamemode_components/crusade_portals if score $b2port var matches 1 run fill 13 175 -74 33 178 -74 air replace #custom:piston strict

scoreboard players reset $y1port var
scoreboard players reset $y2port var
scoreboard players reset $b1port var
scoreboard players reset $b2port var

#Crusade Mode override behavior
execute if predicate game:gamemode_components/crusade_portals run fill 21 175 67 3 178 67 air replace #custom:piston strict
execute if predicate game:gamemode_components/crusade_portals run fill 21 175 -67 3 178 -67 air replace #custom:piston strict

execute if predicate game:gamemode_components/crusade_portals if score $yport var matches 1 run fill 21 56 67 3 44 67 obsidian strict
execute if predicate game:gamemode_components/crusade_portals if score $yport var matches 1 run fill 20 55 67 4 45 67 nether_portal strict
execute if predicate game:gamemode_components/crusade_portals if score $yport var matches 1 run fill 21 175 67 3 178 67 air replace #custom:piston strict
execute if predicate game:gamemode_components/crusade_portals if score $bport var matches 1 run fill 21 56 -67 3 44 -67 obsidian strict
execute if predicate game:gamemode_components/crusade_portals if score $bport var matches 1 run fill 20 55 -67 4 45 -67 nether_portal strict
execute if predicate game:gamemode_components/crusade_portals if score $bport var matches 1 run fill 21 175 -67 3 178 -67 air replace #custom:piston strict
scoreboard players reset $yport var
scoreboard players reset $bport var

##Set back powerables and pistons
function items:prevention/setbackpowerables
function items:prevention/setbackpistons