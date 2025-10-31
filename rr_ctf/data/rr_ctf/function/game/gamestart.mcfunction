#Items
execute as @a[x=0,tag=JoinBlue] run function custom:update_armor
execute as @a[x=0,tag=JoinBlue] run loot replace entity @s hotbar.0 loot items:misc/piercing_pickaxe

execute as @a[x=0,tag=JoinYellow] run function custom:update_armor
execute as @a[x=0,tag=JoinYellow] run loot replace entity @s hotbar.0 loot items:misc/piercing_pickaxe

#Notify Join
execute if predicate game:match_in_play unless predicate rr:is_cubekrowd run tellraw @a[x=0,tag=JoinBlue] [{"text":"Drop your ","color":"dark_aqua","italic":true},{"text":"Piercing Pickaxe ","color":"blue","bold":true,"italic":false},{"text":"to leave the match.","color":"dark_aqua","italic":true}]
execute if predicate game:match_in_play if predicate rr:is_cubekrowd run tellraw @a[x=0,tag=JoinBlue] [{"text":"Use ","color":"dark_aqua","italic":true},{"text":"/leave ","color":"blue","bold":true,"italic":false},{"text":"to leave the match.","color":"dark_aqua","italic":true}]
execute if predicate game:match_in_play unless predicate rr:is_cubekrowd run tellraw @a[x=0,tag=JoinYellow] [{"text":"Drop your ","color":"yellow","italic":true},{"text":"Piercing Pickaxe ","color":"gold","bold":true,"italic":false},{"text":"to leave the match.","color":"yellow","italic":true}]
execute if predicate game:match_in_play if predicate rr:is_cubekrowd run tellraw @a[x=0,tag=JoinYellow] [{"text":"Use ","color":"yellow","italic":true},{"text":"/leave ","color":"gold","bold":true,"italic":false},{"text":"to leave the match.","color":"yellow","italic":true}]

#Score Removal
scoreboard players reset @a[x=0,tag=JoinBlue] FlagsCaptured
scoreboard players reset @a[x=0,tag=JoinYellow] FlagsCaptured

#Give first item to anyone who joins within 1st second
execute if predicate game:match_in_play if score $game_duration global matches 3..20 run function items:givefirst

#Tag Removal
tag @a[x=0] remove JoinBlue
tag @a[x=0] remove JoinYellow

#Countdown
execute if predicate rr:wait_for_sufficient_players unless predicate game:match_in_play if entity @s[tag=EditedSettings] if entity @a[x=0,predicate=custom:team/blue] if entity @a[x=0,predicate=custom:team/yellow] run tag @s add Countdown
execute if predicate rr:wait_for_sufficient_players if entity @s[tag=EditedSettings,tag=Countdown] unless entity @a[x=0,predicate=custom:team/blue] run function game:restartcountdown
execute if predicate rr:wait_for_sufficient_players if entity @s[tag=EditedSettings,tag=Countdown] unless entity @a[x=0,predicate=custom:team/yellow] run function game:restartcountdown

execute unless predicate rr:wait_for_sufficient_players unless predicate game:match_in_play if entity @s[tag=EditedSettings] if entity @a[x=0,predicate=custom:team/blue] run tag @s add Countdown
execute unless predicate rr:wait_for_sufficient_players unless predicate game:match_in_play if entity @s[tag=EditedSettings] if entity @a[x=0,predicate=custom:team/yellow] run tag @s add Countdown
execute unless predicate rr:wait_for_sufficient_players if entity @s[tag=EditedSettings,tag=Countdown] unless entity @a[x=0,predicate=custom:team/blue] unless entity @a[x=0,predicate=custom:team/yellow] run function game:restartcountdown

execute unless predicate game:match_in_play run scoreboard players set @a[x=0] dropPickaxe 0
execute unless predicate game:match_in_play run scoreboard players set @s canopyStreak 0
execute unless predicate game:match_in_play run scoreboard players reset @a[x=0] MineWhiteGlass
execute unless predicate game:match_in_play run scoreboard players reset @a[x=0] MinePurpleGlass
execute unless predicate game:match_in_play unless predicate game:match_over run scoreboard players reset @a[x=0] FlagsCaptured
execute if score @s count matches 600 run summon marker 38 63 -66 {Tags:["airDetectBlue"]}
execute if score @s count matches 600 run summon marker 38 63 66 {Tags:["airDetectYellow"]}
execute if score @s count matches 600 unless predicate rr:is_cubekrowd run tellraw @a[x=0,predicate=custom:team/blue] [{"text":"Drop your ","color":"dark_aqua","italic":true},{"text":"Piercing Pickaxe ","color":"blue","bold":true,"italic":false},{"text":"to leave the match.","color":"dark_aqua","italic":true}]
execute if score @s count matches 600 unless predicate rr:is_cubekrowd run tellraw @a[x=0,predicate=custom:team/yellow] [{"text":"Drop your ","color":"yellow","italic":true},{"text":"Piercing Pickaxe ","color":"gold","bold":true,"italic":false},{"text":"to leave the match.","color":"yellow","italic":true}]
execute if score @s count matches 600 if predicate rr:is_cubekrowd run tellraw @a[x=0,predicate=custom:team/blue] [{"text":"Use ","color":"dark_aqua","italic":true},{"text":"/leave ","color":"blue","bold":true,"italic":false},{"text":"to leave the match.","color":"dark_aqua","italic":true}]
execute if score @s count matches 600 if predicate rr:is_cubekrowd run tellraw @a[x=0,predicate=custom:team/yellow] [{"text":"Use ","color":"yellow","italic":true},{"text":"/leave ","color":"gold","bold":true,"italic":false},{"text":"to leave the match.","color":"yellow","italic":true}]
execute unless predicate game:match_over if score @s count matches 600 run scoreboard players set $match_in_play global 1