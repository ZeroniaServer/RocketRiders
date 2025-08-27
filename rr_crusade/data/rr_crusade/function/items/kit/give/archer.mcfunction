execute if entity @s[tag=JoinBlue,scores={crusadekit=2}] run scoreboard players reset @s crusadekit
execute if entity @s[tag=JoinYellow,scores={crusadekit=2}] run scoreboard players reset @s crusadekit

execute unless entity @s[scores={crusadekit=2}] run clear @s
execute unless entity @s[scores={crusadekit=2}] run loot replace entity @s hotbar.0 loot items:misc/shooting_saber_crusade
execute unless entity @s[scores={crusadekit=2}] run function custom:update_armor

execute unless entity @s[scores={crusadekit=2}] run tag @s remove fullOffhand
execute unless predicate game:game_started if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!GameEnd,scores={count=..599}] unless entity @s[scores={crusadekit=2}] run loot replace entity @s weapon.offhand loot {pools:[{rolls:1,entries:[{type:"loot_table",value:"items:misc/arrow_lobby"}],functions:[{function:"set_count",count:20}]}]}
execute if predicate game:game_started if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!GameEnd] run function rr_crusade:items/util/givearrows

execute unless entity @s[scores={crusadekit=2}] run tellraw @s[team=Blue,tag=!kitarcher] ["",{"text":"Selected Kit: ","color":"green"},{"text":"Archer","bold":true,"color":"red"},{"text":"!","color":"green"},"\n",{"text":"‣ ","color":"red"},{"text":"You can obtain: ","color":"gray"},{"text":"Citadel","color":"green"},{"text":", ","color":"gray"},{"text":"Slasher","color":"green"},{"text":", ","color":"gray"},{"text":"Thunderbolt","color":"yellow"},{"text":", ","color":"gray"},{"text":"Hurricane","color":"yellow"},{"text":", ","color":"gray"},{"text":"Broadsword","color":"#ca00ca"},{"text":", ","color":"gray"},{"text":"Arrows","color":"light_purple"},{"text":", ","color":"gray"},{"text":"Canopy","color":"light_purple"},{"text":", ","color":"gray"},{"text":"Splash","color":"light_purple"},"\n",{"text":"‣ ","color":"red"},{"text":"Your equipment: ","color":"gray"},{"text":"Shooting Saber","color":"blue"},{"text":", ","color":"gray"},{"text":"Archer Helmet","color":"blue"},{"text":", ","color":"gray"},{"text":"Archer Chestplate","color":"blue"},{"text":", ","color":"gray"},{"text":"Archer Leggings","color":"blue"}]
execute unless entity @s[scores={crusadekit=2}] run tellraw @s[team=Yellow,tag=!kitarcher] ["",{"text":"Selected Kit: ","color":"green"},{"text":"Archer","bold":true,"color":"red"},{"text":"!","color":"green"},"\n",{"text":"‣ ","color":"red"},{"text":"You can obtain: ","color":"gray"},{"text":"Citadel","color":"green"},{"text":", ","color":"gray"},{"text":"Slasher","color":"green"},{"text":", ","color":"gray"},{"text":"Thunderbolt","color":"yellow"},{"text":", ","color":"gray"},{"text":"Hurricane","color":"yellow"},{"text":", ","color":"gray"},{"text":"Broadsword","color":"#ca00ca"},{"text":", ","color":"gray"},{"text":"Arrows","color":"light_purple"},{"text":", ","color":"gray"},{"text":"Canopy","color":"light_purple"},{"text":", ","color":"gray"},{"text":"Splash","color":"light_purple"},"\n",{"text":"‣ ","color":"red"},{"text":"Your equipment: ","color":"gray"},{"text":"Shooting Saber","color":"gold"},{"text":", ","color":"gray"},{"text":"Archer Helmet","color":"gold"},{"text":", ","color":"gray"},{"text":"Archer Chestplate","color":"gold"},{"text":", ","color":"gray"},{"text":"Archer Leggings","color":"gold"}]

execute unless entity @s[scores={crusadekit=2}] run title @s[tag=!kitarcher] title {"text":"Selected Kit:","color":"green"}
execute unless entity @s[scores={crusadekit=2}] run title @s[tag=!kitarcher] subtitle {"text":"Archer","color":"red","bold":true}
execute unless entity @s[scores={crusadekit=2}] at @s[tag=!kitarcher] run playsound minecraft:item.crossbow.loading_end master @s ~ ~ ~ 1 1

execute unless entity @s[scores={crusadekit=2}] run scoreboard players add $archer CmdData 1

execute unless entity @s[scores={crusadekit=2}] run scoreboard players set @s crusadekit 2