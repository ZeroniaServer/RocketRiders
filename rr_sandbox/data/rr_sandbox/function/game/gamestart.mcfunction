#Items
execute as @a[x=0,tag=JoinBlue,tag=!servermodeJoin] run function custom:update_armor
execute unless predicate game:game_started as @a[x=0,tag=JoinBlue,tag=!servermodeJoin] run loot replace entity @s hotbar.0 loot items:books/nomicon/pre_game
execute if predicate game:game_started as @a[x=0,tag=JoinBlue,tag=!servermodeJoin] run function rr_sandbox:items/givenomicon

execute as @a[x=0,tag=JoinYellow,tag=!servermodeJoin] run function custom:update_armor
execute unless predicate game:game_started as @a[x=0,tag=JoinYellow,tag=!servermodeJoin] run loot replace entity @s hotbar.0 loot items:books/nomicon/pre_game
execute if predicate game:game_started as @a[x=0,tag=JoinYellow,tag=!servermodeJoin] run function rr_sandbox:items/givenomicon

#Notify Join
execute if predicate game:game_started unless predicate rr:is_cubekrowd run tellraw @a[x=0,tag=JoinBlue,tag=!servermodeJoin] [{"text":"Drop your ","color":"dark_aqua","italic":true},{"text":"Rocket","color":"blue","bold":true,"italic":false},{"text":"-","color":"gray","bold":true,"italic":false},{"text":"nomicon","color":"gold","bold":true,"italic":false},{"text":" to leave the match.","color":"dark_aqua","italic":true}]
execute if predicate game:game_started if predicate rr:is_cubekrowd run tellraw @a[x=0,tag=JoinBlue,tag=!servermodeJoin] [{"text":"Use ","color":"dark_aqua","italic":true},{"text":"/leave ","color":"blue","bold":true,"italic":false},{"text":"to leave the match.","color":"dark_aqua","italic":true}]
execute if predicate game:game_started unless predicate rr:is_cubekrowd run tellraw @a[x=0,tag=JoinYellow,tag=!servermodeJoin] [{"text":"Drop your ","color":"yellow","italic":true},{"text":"Rocket","color":"blue","bold":true,"italic":false},{"text":"-","color":"gray","bold":true,"italic":false},{"text":"nomicon","color":"gold","bold":true,"italic":false},{"text":" to leave the match.","color":"yellow","italic":true}]
execute if predicate game:game_started if predicate rr:is_cubekrowd run tellraw @a[x=0,tag=JoinYellow,tag=!servermodeJoin] [{"text":"Use ","color":"yellow","italic":true},{"text":"/leave ","color":"gold","bold":true,"italic":false},{"text":"to leave the match.","color":"yellow","italic":true}]

#Tag Removal
tag @a[x=0,tag=!servermodeJoin] remove JoinBlue
tag @a[x=0,tag=!servermodeJoin] remove JoinYellow

#Bossbar
execute unless predicate game:game_started if entity @s[tag=!Countdown,tag=EditedSettings] unless entity @s[scores={endtimer=1..}] unless entity @a[x=0,team=Blue] unless entity @a[x=0,team=Yellow] run bossbar set rr:startgame name ["",{"text":"Awaiting players...","color":"white"}]
execute unless predicate game:game_started if entity @s[tag=!Countdown,tag=EditedSettings] unless entity @s[scores={endtimer=1..}] unless entity @a[x=0,team=Blue] unless entity @a[x=0,team=Yellow] run bossbar set rr:startgame value 0
execute unless predicate game:game_started if entity @s[tag=!Countdown,tag=EditedSettings] unless entity @s[scores={endtimer=1..}] unless entity @a[x=0,team=Blue] unless entity @a[x=0,team=Yellow] run bossbar set rr:startgame color white

#Countdown
execute unless predicate game:game_started if entity @s[tag=EditedSettings] if entity @a[x=0,team=Blue] run tag @s add Countdown
execute unless predicate game:game_started if entity @s[tag=EditedSettings] if entity @a[x=0,team=Yellow] run tag @s add Countdown
execute if entity @s[tag=EditedSettings,tag=Countdown] unless entity @a[x=0,team=Blue] unless entity @a[x=0,team=Yellow] run function game:restartcountdown

execute if entity @s[scores={count=1..600}] run scoreboard players set @a[x=0] dropBook 0
execute unless predicate game:game_ended if score @s count matches 600 as @a[team=Blue] run function rr_sandbox:items/givenomicon
execute unless predicate game:game_ended if score @s count matches 600 as @a[team=Yellow] run function rr_sandbox:items/givenomicon
execute if score @s count matches 600 unless predicate rr:is_cubekrowd run tellraw @a[x=0,team=Blue] [{"text":"Drop your ","color":"dark_aqua","italic":true},{"text":"Rocket","color":"blue","bold":true,"italic":false},{"text":"-","color":"gray","bold":true,"italic":false},{"text":"nomicon","color":"gold","bold":true,"italic":false},{"text":" to leave the match.","color":"dark_aqua","italic":true}]
execute if score @s count matches 600 unless predicate rr:is_cubekrowd run tellraw @a[x=0,team=Yellow] [{"text":"Drop your ","color":"yellow","italic":true},{"text":"Rocket","color":"blue","bold":true,"italic":false},{"text":"-","color":"gray","bold":true,"italic":false},{"text":"nomicon","color":"gold","bold":true,"italic":false},{"text":" to leave the match.","color":"yellow","italic":true}]
execute if score @s count matches 600 if predicate rr:is_cubekrowd run tellraw @a[x=0,team=Blue] [{"text":"Use ","color":"dark_aqua","italic":true},{"text":"/leave ","color":"blue","bold":true,"italic":false},{"text":"to leave the match.","color":"dark_aqua","italic":true}]
execute if score @s count matches 600 if predicate rr:is_cubekrowd run tellraw @a[x=0,team=Yellow] [{"text":"Use ","color":"yellow","italic":true},{"text":"/leave ","color":"gold","bold":true,"italic":false},{"text":"to leave the match.","color":"yellow","italic":true}]
execute unless predicate game:game_ended if score @s count matches 600 run tag @s add noAchievements
execute unless predicate game:game_ended if score @s count matches 600 run function custom:set_global/game_started {bool:true}