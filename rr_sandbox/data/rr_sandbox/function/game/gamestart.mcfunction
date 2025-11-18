#Notify Join
execute if predicate game:match_in_play unless predicate rr:is_cubekrowd run tellraw @a[x=0,tag=JoinBlue] [{"text":"Drop your ","color":"dark_aqua","italic":true},{"text":"Rocket","color":"blue","bold":true,"italic":false},{"text":"-","color":"gray","bold":true,"italic":false},{"text":"nomicon","color":"gold","bold":true,"italic":false},{"text":" to leave the match.","color":"dark_aqua","italic":true}]
execute if predicate game:match_in_play if predicate rr:is_cubekrowd run tellraw @a[x=0,tag=JoinBlue] [{"text":"Use ","color":"dark_aqua","italic":true},{"text":"/leave","color":"blue","bold":true,"italic":false},{"text":" to leave the match.","color":"dark_aqua","italic":true}]
execute if predicate game:match_in_play unless predicate rr:is_cubekrowd run tellraw @a[x=0,tag=JoinYellow] [{"text":"Drop your ","color":"yellow","italic":true},{"text":"Rocket","color":"blue","bold":true,"italic":false},{"text":"-","color":"gray","bold":true,"italic":false},{"text":"nomicon","color":"gold","bold":true,"italic":false},{"text":" to leave the match.","color":"yellow","italic":true}]
execute if predicate game:match_in_play if predicate rr:is_cubekrowd run tellraw @a[x=0,tag=JoinYellow] [{"text":"Use ","color":"yellow","italic":true},{"text":"/leave","color":"gold","bold":true,"italic":false},{"text":" to leave the match.","color":"yellow","italic":true}]

#Tag Removal
tag @a[x=0] remove JoinBlue
tag @a[x=0] remove JoinYellow

#Bossbar
execute unless predicate game:match_in_play if entity @s[tag=!Countdown,tag=EditedSettings] unless entity @s[scores={endtimer=1..}] unless entity @a[x=0,predicate=custom:team/blue] unless entity @a[x=0,predicate=custom:team/yellow] run bossbar set rr:startgame name ["",{"text":"Awaiting players...","color":"white"}]
execute unless predicate game:match_in_play if entity @s[tag=!Countdown,tag=EditedSettings] unless entity @s[scores={endtimer=1..}] unless entity @a[x=0,predicate=custom:team/blue] unless entity @a[x=0,predicate=custom:team/yellow] run bossbar set rr:startgame value 0
execute unless predicate game:match_in_play if entity @s[tag=!Countdown,tag=EditedSettings] unless entity @s[scores={endtimer=1..}] unless entity @a[x=0,predicate=custom:team/blue] unless entity @a[x=0,predicate=custom:team/yellow] run bossbar set rr:startgame color white

#Countdown
execute unless predicate game:match_in_play if entity @s[tag=EditedSettings] if entity @a[x=0,predicate=custom:team/blue] run tag @s add Countdown
execute unless predicate game:match_in_play if entity @s[tag=EditedSettings] if entity @a[x=0,predicate=custom:team/yellow] run tag @s add Countdown
execute if entity @s[tag=EditedSettings,tag=Countdown] unless entity @a[x=0,predicate=custom:team/blue] unless entity @a[x=0,predicate=custom:team/yellow] run function game:restartcountdown

execute if entity @s[scores={count=1..600}] run scoreboard players set @a[x=0] dropBook 0
execute unless predicate game:match_over if score @s count matches 600 as @a[x=0,predicate=custom:team/blue] run function rr_sandbox:items/givenomicon
execute unless predicate game:match_over if score @s count matches 600 as @a[x=0,predicate=custom:team/yellow] run function rr_sandbox:items/givenomicon
execute unless predicate game:match_over if score @s count matches 600 run tag @s add noAchievements
execute unless predicate game:match_over if score @s count matches 600 run scoreboard players set $match_in_play global 1