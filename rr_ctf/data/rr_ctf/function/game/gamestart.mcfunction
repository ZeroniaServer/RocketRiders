#Items
execute as @a[x=0,tag=JoinBlue,tag=!servermodeJoin] run function custom:update_armor
execute as @a[x=0,tag=JoinBlue,tag=!servermodeJoin] run loot replace entity @s hotbar.0 loot items:misc/piercing_pickaxe

execute as @a[x=0,tag=JoinYellow,tag=!servermodeJoin] run function custom:update_armor
execute as @a[x=0,tag=JoinYellow,tag=!servermodeJoin] run loot replace entity @s hotbar.0 loot items:misc/piercing_pickaxe

#Notify Join
execute if predicate game:game_started unless predicate rr:is_cubekrowd run tellraw @a[x=0,tag=JoinBlue,tag=!servermodeJoin] [{"text":"Drop your ","color":"dark_aqua","italic":true},{"text":"Piercing Pickaxe ","color":"blue","bold":true,"italic":false},{"text":"to leave the match.","color":"dark_aqua","italic":true}]
execute if predicate game:game_started if predicate rr:is_cubekrowd run tellraw @a[x=0,tag=JoinBlue,tag=!servermodeJoin] [{"text":"Use ","color":"dark_aqua","italic":true},{"text":"/leave ","color":"blue","bold":true,"italic":false},{"text":"to leave the match.","color":"dark_aqua","italic":true}]
execute if predicate game:game_started unless predicate rr:is_cubekrowd run tellraw @a[x=0,tag=JoinYellow,tag=!servermodeJoin] [{"text":"Drop your ","color":"yellow","italic":true},{"text":"Piercing Pickaxe ","color":"gold","bold":true,"italic":false},{"text":"to leave the match.","color":"yellow","italic":true}]
execute if predicate game:game_started if predicate rr:is_cubekrowd run tellraw @a[x=0,tag=JoinYellow,tag=!servermodeJoin] [{"text":"Use ","color":"yellow","italic":true},{"text":"/leave ","color":"gold","bold":true,"italic":false},{"text":"to leave the match.","color":"yellow","italic":true}]

#Score Removal
scoreboard players reset @a[x=0,tag=JoinBlue,tag=!servermodeJoin] FlagsCaptured
scoreboard players reset @a[x=0,tag=JoinYellow,tag=!servermodeJoin] FlagsCaptured

#Give first item to anyone who joins within 1st second
execute if predicate game:game_started if score @s gametime matches 3..20 run function items:givefirst

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

execute unless predicate game:game_started run scoreboard players set @a[x=0] dropPickaxe 0
execute unless predicate game:game_started run scoreboard players set @s canopyStreak 0
execute unless predicate game:game_started run scoreboard players reset @a[x=0] MineWhiteGlass
execute unless predicate game:game_started run scoreboard players reset @a[x=0] MinePurpleGlass
execute unless predicate game:game_started unless predicate game:game_ended run scoreboard players reset @a[x=0] FlagsCaptured
execute if score @s count matches 600 run summon marker 38 63 -66 {Tags:["airDetectBlue"]}
execute if score @s count matches 600 run summon marker 38 63 66 {Tags:["airDetectYellow"]}
execute if score @s count matches 600 unless predicate rr:is_cubekrowd run tellraw @a[x=0,team=Blue] [{"text":"Drop your ","color":"dark_aqua","italic":true},{"text":"Piercing Pickaxe ","color":"blue","bold":true,"italic":false},{"text":"to leave the match.","color":"dark_aqua","italic":true}]
execute if score @s count matches 600 unless predicate rr:is_cubekrowd run tellraw @a[x=0,team=Yellow] [{"text":"Drop your ","color":"yellow","italic":true},{"text":"Piercing Pickaxe ","color":"gold","bold":true,"italic":false},{"text":"to leave the match.","color":"yellow","italic":true}]
execute if score @s count matches 600 if predicate rr:is_cubekrowd run tellraw @a[x=0,team=Blue] [{"text":"Use ","color":"dark_aqua","italic":true},{"text":"/leave ","color":"blue","bold":true,"italic":false},{"text":"to leave the match.","color":"dark_aqua","italic":true}]
execute if score @s count matches 600 if predicate rr:is_cubekrowd run tellraw @a[x=0,team=Yellow] [{"text":"Use ","color":"yellow","italic":true},{"text":"/leave ","color":"gold","bold":true,"italic":false},{"text":"to leave the match.","color":"yellow","italic":true}]
execute unless predicate game:game_ended if score @s count matches 600 run scoreboard players set $game_started global 1