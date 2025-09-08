#Set kit to previous upon joining
execute as @a[x=0,tag=JoinBlue,tag=!servermodeJoin] unless score @s crusadekit = @s crusadekit run scoreboard players set @s crusadekit 1
execute as @a[x=0,tag=JoinYellow,tag=!servermodeJoin] unless score @s crusadekit = @s crusadekit run scoreboard players set @s crusadekit 1
execute as @a[x=0,tag=JoinBlue,scores={crusadekit=1},tag=!servermodeJoin] run function rr_crusade:items/kit/give/knight
execute as @a[x=0,tag=JoinBlue,scores={crusadekit=2},tag=!servermodeJoin] run function rr_crusade:items/kit/give/archer
execute as @a[x=0,tag=JoinBlue,scores={crusadekit=3},tag=!servermodeJoin] run function rr_crusade:items/kit/give/mage
execute as @a[x=0,tag=JoinYellow,scores={crusadekit=1},tag=!servermodeJoin] run function rr_crusade:items/kit/give/knight
execute as @a[x=0,tag=JoinYellow,scores={crusadekit=2},tag=!servermodeJoin] run function rr_crusade:items/kit/give/archer
execute as @a[x=0,tag=JoinYellow,scores={crusadekit=3},tag=!servermodeJoin] run function rr_crusade:items/kit/give/mage

#Notify Join
execute if predicate game:game_started unless predicate rr:is_cubekrowd run tellraw @a[x=0,tag=JoinBlue,scores={crusadekit=1},tag=!servermodeJoin] [{"text":"Drop your ","color":"dark_aqua","italic":true},{"text":"Knight Sword ","color":"blue","bold":true,"italic":false},{"text":"to leave the match.","color":"dark_aqua","italic":true}]
execute if predicate game:game_started unless predicate rr:is_cubekrowd run tellraw @a[x=0,tag=JoinBlue,scores={crusadekit=2},tag=!servermodeJoin] [{"text":"Drop your ","color":"dark_aqua","italic":true},{"text":"Shooting Saber ","color":"blue","bold":true,"italic":false},{"text":"to leave the match.","color":"dark_aqua","italic":true}]
execute if predicate game:game_started unless predicate rr:is_cubekrowd run tellraw @a[x=0,tag=JoinBlue,scores={crusadekit=3},tag=!servermodeJoin] [{"text":"Drop your ","color":"dark_aqua","italic":true},{"text":"Spell Wand ","color":"blue","bold":true,"italic":false},{"text":"to leave the match.","color":"dark_aqua","italic":true}]
execute if predicate game:game_started if predicate rr:is_cubekrowd run tellraw @a[x=0,tag=JoinBlue,tag=!servermodeJoin] [{"text":"Use ","color":"dark_aqua","italic":true},{"text":"/leave ","color":"blue","bold":true,"italic":false},{"text":"to leave the match.","color":"dark_aqua","italic":true}]
execute if predicate game:game_started unless predicate rr:is_cubekrowd run tellraw @a[x=0,tag=JoinYellow,scores={crusadekit=1},tag=!servermodeJoin] [{"text":"Drop your ","color":"yellow","italic":true},{"text":"Knight Sword ","color":"gold","bold":true,"italic":false},{"text":"to leave the match.","color":"yellow","italic":true}]
execute if predicate game:game_started unless predicate rr:is_cubekrowd run tellraw @a[x=0,tag=JoinYellow,scores={crusadekit=2},tag=!servermodeJoin] [{"text":"Drop your ","color":"yellow","italic":true},{"text":"Shooting Saber ","color":"gold","bold":true,"italic":false},{"text":"to leave the match.","color":"yellow","italic":true}]
execute if predicate game:game_started unless predicate rr:is_cubekrowd run tellraw @a[x=0,tag=JoinYellow,scores={crusadekit=3},tag=!servermodeJoin] [{"text":"Drop your ","color":"yellow","italic":true},{"text":"Spell Wand ","color":"gold","bold":true,"italic":false},{"text":"to leave the match.","color":"yellow","italic":true}]
execute if predicate game:game_started if predicate rr:is_cubekrowd run tellraw @a[x=0,tag=JoinYellow,tag=!servermodeJoin] [{"text":"Use ","color":"yellow","italic":true},{"text":"/leave ","color":"gold","bold":true,"italic":false},{"text":"to leave the match.","color":"yellow","italic":true}]

#Give first item to anyone who joins within 1st second
execute if predicate game:game_started if score @s gametime matches 3..20 run function rr_crusade:items/givefirst

#Tag Removal
tag @a[x=0,tag=!servermodeJoin] remove JoinBlue
tag @a[x=0,tag=!servermodeJoin] remove JoinYellow

#Countdown
execute if predicate rr:wait_for_sufficient_players unless predicate game:game_started if entity @s[tag=EditedSettings] if entity @a[x=0,team=Blue] if entity @a[x=0,team=Yellow] run tag @s add Countdown
execute if predicate rr:wait_for_sufficient_players if entity @s[tag=EditedSettings,tag=Countdown] unless entity @a[x=0,team=Blue] run function game:restartcountdown
execute if predicate rr:wait_for_sufficient_players if entity @s[tag=EditedSettings,tag=Countdown] unless entity @a[x=0,team=Yellow] run function game:restartcountdown

execute unless predicate rr:wait_for_sufficient_players unless predicate game:game_started if entity @s[tag=EditedSettings] if entity @a[x=0,team=Blue] run tag @s add Countdown
execute unless predicate rr:wait_for_sufficient_players unless predicate game:game_started if entity @s[tag=EditedSettings] if entity @a[x=0,team=Yellow] run tag @s add Countdown
execute unless predicate rr:wait_for_sufficient_players if entity @s[tag=EditedSettings,tag=Countdown] unless entity @a[x=0,team=Blue] unless entity @a[x=0,team=Yellow] run function game:restartcountdown

execute if score @s count matches 600 unless predicate rr:is_cubekrowd run tellraw @a[x=0,team=Blue,scores={crusadekit=1}] [{"text":"Drop your ","color":"dark_aqua","italic":true},{"text":"Knight Sword ","color":"blue","bold":true,"italic":false},{"text":"to leave the match.","color":"dark_aqua","italic":true}]
execute if score @s count matches 600 unless predicate rr:is_cubekrowd run tellraw @a[x=0,team=Blue,scores={crusadekit=2}] [{"text":"Drop your ","color":"dark_aqua","italic":true},{"text":"Shooting Saber ","color":"blue","bold":true,"italic":false},{"text":"to leave the match.","color":"dark_aqua","italic":true}]
execute if score @s count matches 600 unless predicate rr:is_cubekrowd run tellraw @a[x=0,team=Blue,scores={crusadekit=3}] [{"text":"Drop your ","color":"dark_aqua","italic":true},{"text":"Spell Wand ","color":"blue","bold":true,"italic":false},{"text":"to leave the match.","color":"dark_aqua","italic":true}]
execute if score @s count matches 600 if predicate rr:is_cubekrowd run tellraw @a[x=0,team=Blue] [{"text":"Use ","color":"dark_aqua","italic":true},{"text":"/leave ","color":"blue","bold":true,"italic":false},{"text":"to leave the match.","color":"dark_aqua","italic":true}]
execute if score @s count matches 600 unless predicate rr:is_cubekrowd run tellraw @a[x=0,team=Yellow,scores={crusadekit=1}] [{"text":"Drop your ","color":"yellow","italic":true},{"text":"Knight Sword ","color":"gold","bold":true,"italic":false},{"text":"to leave the match.","color":"yellow","italic":true}]
execute if score @s count matches 600 unless predicate rr:is_cubekrowd run tellraw @a[x=0,team=Yellow,scores={crusadekit=2}] [{"text":"Drop your ","color":"yellow","italic":true},{"text":"Shooting Saber ","color":"gold","bold":true,"italic":false},{"text":"to leave the match.","color":"yellow","italic":true}]
execute if score @s count matches 600 unless predicate rr:is_cubekrowd run tellraw @a[x=0,team=Yellow,scores={crusadekit=3}] [{"text":"Drop your ","color":"yellow","italic":true},{"text":"Spell Wand ","color":"gold","bold":true,"italic":false},{"text":"to leave the match.","color":"yellow","italic":true}]
execute if score @s count matches 600 if predicate rr:is_cubekrowd run tellraw @a[x=0,team=Yellow] [{"text":"Use ","color":"yellow","italic":true},{"text":"/leave ","color":"gold","bold":true,"italic":false},{"text":"to leave the match.","color":"yellow","italic":true}]
#Hotfix for being able to keep charging bow from queue
execute if score @s count matches 600 run clear @a[x=0,predicate=custom:on_blue_or_yellow_team,predicate=rr_crusade:kit/archer] bow
execute if score @s count matches 600 as @a[x=0,scores={crusadekit=2}] run loot replace entity @s hotbar.0 loot items:misc/shooting_saber
execute if score @s count matches 600 as @a[x=0,scores={crusadekit=2}] run tag @s remove fullOffhand
#Hotfix for being able to cast spells in queue
execute if score @s count matches 600 run scoreboard players reset @a[x=0,predicate=custom:on_blue_or_yellow_team] useWand
#Hotfix for losing shield in queue
execute if score @s count matches 600 run clear @a[x=0,team=Blue,scores={crusadekit=1}] shield
execute if score @s count matches 600 run clear @a[x=0,team=Yellow,scores={crusadekit=1}] shield
execute if score @s count matches 600 as @a[x=0,scores={crusadekit=1}] run loot replace entity @s weapon.offhand loot items:misc/knight_shield
execute if score @s count matches 600 run summon marker 33 63 -66 {Tags:["airDetectBlue"]}
execute if score @s count matches 600 run summon marker 33 63 66 {Tags:["airDetectYellow"]}
execute unless predicate game:game_ended if score @s count matches 600 run function custom:set_global/game_started {bool:true}