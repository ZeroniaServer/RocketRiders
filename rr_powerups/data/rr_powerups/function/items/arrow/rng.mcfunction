summon marker 0 0 0 {Tags:["rngBlindArrow","rng2"],CustomName:"rngBlindArrow (Blindness Arrow)"}
summon marker 0 0 0 {Tags:["rngLeviArrow","rng2"],CustomName:"rngLeviArrow (Levitation Arrow)"}
summon marker 0 0 0 {Tags:["rngWitherArrow","rng2"],CustomName:"rngWitherArrow (Wither Arrow)"}
summon marker 0 0 0 {Tags:["rngSlowArrow","rng2"],CustomName:"rngSlowArrow (Slowness Arrow)"}
tag @e[x=0,type=marker,tag=rng2,sort=random,limit=1] add rngSelected
execute if predicate game:game_rules/show_debug_logs/on run function custom:log {message:["(rr_powerups:items/arrow/rng) Selected: ",{selector:"@e[limit=1,x=0,type=marker,tag=rng2,tag=rngSelected]"}]}

#> Prevent arrow duplication glitches
execute unless predicate game:game_rules/item_stacking/on as @e[x=0,type=item] if items entity @s contents tipped_arrow run function rr_powerups:items/deduct

function items:full_hotbar

execute as @e[x=0,type=marker,tag=rngSelected,tag=rngBlindArrow] as @e[x=0,type=marker,scores={capturePoint=1}] as @a[x=0,predicate=custom:team/blue] run function rr_powerups:items/arrow/giveblindarrow
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngBlindArrow] as @e[x=0,type=marker,scores={capturePoint=2}] as @a[x=0,predicate=custom:team/yellow] run function rr_powerups:items/arrow/giveblindarrow
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngLeviArrow] as @e[x=0,type=marker,scores={capturePoint=1}] as @a[x=0,predicate=custom:team/blue] run function rr_powerups:items/arrow/giveleviarrow
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngLeviArrow] as @e[x=0,type=marker,scores={capturePoint=2}] as @a[x=0,predicate=custom:team/yellow] run function rr_powerups:items/arrow/giveleviarrow
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngWitherArrow] as @e[x=0,type=marker,scores={capturePoint=1}] as @a[x=0,predicate=custom:team/blue] run function rr_powerups:items/arrow/givewitherarrow
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngWitherArrow] as @e[x=0,type=marker,scores={capturePoint=2}] as @a[x=0,predicate=custom:team/yellow] run function rr_powerups:items/arrow/givewitherarrow
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngSlowArrow] as @e[x=0,type=marker,scores={capturePoint=1}] as @a[x=0,predicate=custom:team/blue] run function rr_powerups:items/arrow/giveslowarrow
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngSlowArrow] as @e[x=0,type=marker,scores={capturePoint=2}] as @a[x=0,predicate=custom:team/yellow] run function rr_powerups:items/arrow/giveslowarrow

#item announcements
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngBlindArrow] as @e[x=0,type=marker,scores={capturePoint=1}] run tellraw @a[x=0,predicate=!custom:team/lobby] [{score:{name:"#blue",objective:"text.accent_color"}},[{bold:true,score:{name:"#blue",objective:"text.main_color"}},{score:{name:"#blue",objective:"text.team_name"}}]," received: ",{"text":"Blindness Arrows","color":"dark_purple","bold":true,"italic":true}]
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngBlindArrow] as @e[x=0,type=marker,scores={capturePoint=2}] run tellraw @a[x=0,predicate=!custom:team/lobby] [{score:{name:"#yellow",objective:"text.accent_color"}},[{bold:true,score:{name:"#yellow",objective:"text.main_color"}},{score:{name:"#yellow",objective:"text.team_name"}}]," received: ",{"text":"Blindness Arrows","color":"dark_purple","bold":true,"italic":true}]
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngLeviArrow] as @e[x=0,type=marker,scores={capturePoint=1}] run tellraw @a[x=0,predicate=!custom:team/lobby] [{score:{name:"#blue",objective:"text.accent_color"}},[{bold:true,score:{name:"#blue",objective:"text.main_color"}},{score:{name:"#blue",objective:"text.team_name"}}]," received: ",{"text":"Levitation Arrows","color":"dark_purple","bold":true,"italic":true}]
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngLeviArrow] as @e[x=0,type=marker,scores={capturePoint=2}] run tellraw @a[x=0,predicate=!custom:team/lobby] [{score:{name:"#yellow",objective:"text.accent_color"}},[{bold:true,score:{name:"#yellow",objective:"text.main_color"}},{score:{name:"#yellow",objective:"text.team_name"}}]," received: ",{"text":"Levitation Arrows","color":"dark_purple","bold":true,"italic":true}]
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngWitherArrow] as @e[x=0,type=marker,scores={capturePoint=1}] run tellraw @a[x=0,predicate=!custom:team/lobby] [{score:{name:"#blue",objective:"text.accent_color"}},[{bold:true,score:{name:"#blue",objective:"text.main_color"}},{score:{name:"#blue",objective:"text.team_name"}}]," received: ",{"text":"Wither Arrows","color":"dark_purple","bold":true,"italic":true}]
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngWitherArrow] as @e[x=0,type=marker,scores={capturePoint=2}] run tellraw @a[x=0,predicate=!custom:team/lobby] [{score:{name:"#yellow",objective:"text.accent_color"}},[{bold:true,score:{name:"#yellow",objective:"text.main_color"}},{score:{name:"#yellow",objective:"text.team_name"}}]," received: ",{"text":"Wither Arrows","color":"dark_purple","bold":true,"italic":true}]
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngSlowArrow] as @e[x=0,type=marker,scores={capturePoint=1}] run tellraw @a[x=0,predicate=!custom:team/lobby] [{score:{name:"#blue",objective:"text.accent_color"}},[{bold:true,score:{name:"#blue",objective:"text.main_color"}},{score:{name:"#blue",objective:"text.team_name"}}]," received: ",{"text":"Slowness Arrows","color":"dark_purple","bold":true,"italic":true}]
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngSlowArrow] as @e[x=0,type=marker,scores={capturePoint=2}] run tellraw @a[x=0,predicate=!custom:team/lobby] [{score:{name:"#yellow",objective:"text.accent_color"}},[{bold:true,score:{name:"#yellow",objective:"text.main_color"}},{score:{name:"#yellow",objective:"text.team_name"}}]," received: ",{"text":"Slowness Arrows","color":"dark_purple","bold":true,"italic":true}]

kill @e[x=0,type=marker,tag=rng2]

execute unless entity @e[x=0,type=end_crystal,tag=PUCrystalPerma] run scoreboard players add @e[x=0,type=marker,tag=captureMiddle,tag=!BrokenPlatform] CmdData 2
execute unless entity @e[x=0,type=end_crystal,tag=PUCrystalPerma] as @e[x=0,type=marker,tag=captureMiddle,tag=!BrokenPlatform] at @s run playsound minecraft:entity.turtle.egg_crack master @a[x=0] ~ ~ ~ 0.4 2
execute unless entity @e[x=0,type=end_crystal,tag=PUCrystalPerma] as @e[x=0,type=marker,tag=captureMiddle,tag=!BrokenPlatform] at @s run playsound minecraft:block.amethyst_block.step master @a[x=0] ~ ~ ~ 1 1.4