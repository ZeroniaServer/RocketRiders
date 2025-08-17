#Items
execute as @a[x=0,tag=JoinBlue] run function game:givegear
execute unless predicate game:game_started as @a[x=0,tag=JoinBlue] run loot replace entity @s hotbar.0 loot items:books/nomicon/pre_game
execute if predicate game:game_started as @a[x=0,tag=JoinBlue] run function rr_sandbox:items/givenomicon

execute as @a[x=0,tag=JoinYellow] run function game:givegear
execute unless predicate game:game_started as @a[x=0,tag=JoinYellow] run loot replace entity @s hotbar.0 loot items:books/nomicon/pre_game
execute if predicate game:game_started as @a[x=0,tag=JoinYellow] run function rr_sandbox:items/givenomicon

#Notify Join
execute if predicate game:game_started unless predicate rr:is_cubekrowd run tellraw @a[x=0,tag=JoinBlue] [{"text":"Drop your ","color":"dark_aqua","italic":true},{"text":"Rocket","color":"blue","bold":true,"italic":false},{"text":"-","color":"gray","bold":true,"italic":false},{"text":"nomicon","color":"gold","bold":true,"italic":false},{"text":" to leave the match.","color":"dark_aqua","italic":true}]
execute if predicate game:game_started if predicate rr:is_cubekrowd run tellraw @a[x=0,tag=JoinBlue] [{"text":"Use ","color":"dark_aqua","italic":true},{"text":"/leave ","color":"blue","bold":true,"italic":false},{"text":"to leave the match.","color":"dark_aqua","italic":true}]
execute if predicate game:game_started unless predicate rr:is_cubekrowd run tellraw @a[x=0,tag=JoinYellow] [{"text":"Drop your ","color":"yellow","italic":true},{"text":"Rocket","color":"blue","bold":true,"italic":false},{"text":"-","color":"gray","bold":true,"italic":false},{"text":"nomicon","color":"gold","bold":true,"italic":false},{"text":" to leave the match.","color":"yellow","italic":true}]
execute if predicate game:game_started if predicate rr:is_cubekrowd run tellraw @a[x=0,tag=JoinYellow] [{"text":"Use ","color":"yellow","italic":true},{"text":"/leave ","color":"gold","bold":true,"italic":false},{"text":"to leave the match.","color":"yellow","italic":true}]

#Tag Removal
tag @a[x=0] remove JoinBlue
tag @a[x=0] remove JoinYellow

#Bossbar
execute unless predicate game:game_started if entity @s[tag=!Countdown,tag=EditedSettings] unless entity @s[scores={endtimer=1..}] unless entity @a[x=0,team=Blue] unless entity @a[x=0,team=Yellow] run bossbar set rr:startgame name ["",{"text":"Awaiting players...","color":"white"}]
execute unless predicate game:game_started if entity @s[tag=!Countdown,tag=EditedSettings] unless entity @s[scores={endtimer=1..}] unless entity @a[x=0,team=Blue] unless entity @a[x=0,team=Yellow] run bossbar set rr:startgame value 0
execute unless predicate game:game_started if entity @s[tag=!Countdown,tag=EditedSettings] unless entity @s[scores={endtimer=1..}] unless entity @a[x=0,team=Blue] unless entity @a[x=0,team=Yellow] run bossbar set rr:startgame color white

#Countdown
execute unless predicate game:game_started if entity @s[tag=EditedSettings] if entity @a[x=0,team=Blue] run tag @s add Countdown
execute unless predicate game:game_started if entity @s[tag=EditedSettings] if entity @a[x=0,team=Yellow] run tag @s add Countdown
execute if entity @s[tag=EditedSettings,tag=Countdown] unless entity @a[x=0,team=Blue] unless entity @a[x=0,team=Yellow] run function game:restartcountdown

execute if entity @s[scores={count=1..600}] run scoreboard players set @a[x=0] dropBook 0
execute if entity @s[scores={count=600},tag=!GameEnd] as @a[team=Blue] run function rr_sandbox:items/givenomicon
execute if entity @s[scores={count=600},tag=!GameEnd] as @a[team=Yellow] run function rr_sandbox:items/givenomicon
execute if entity @s[scores={count=600}] unless predicate rr:is_cubekrowd run tellraw @a[x=0,team=Blue] [{"text":"Drop your ","color":"dark_aqua","italic":true},{"text":"Rocket","color":"blue","bold":true,"italic":false},{"text":"-","color":"gray","bold":true,"italic":false},{"text":"nomicon","color":"gold","bold":true,"italic":false},{"text":" to leave the match.","color":"dark_aqua","italic":true}]
execute if entity @s[scores={count=600}] unless predicate rr:is_cubekrowd run tellraw @a[x=0,team=Yellow] [{"text":"Drop your ","color":"yellow","italic":true},{"text":"Rocket","color":"blue","bold":true,"italic":false},{"text":"-","color":"gray","bold":true,"italic":false},{"text":"nomicon","color":"gold","bold":true,"italic":false},{"text":" to leave the match.","color":"yellow","italic":true}]
execute if entity @s[scores={count=600}] if predicate rr:is_cubekrowd run tellraw @a[x=0,team=Blue] [{"text":"Use ","color":"dark_aqua","italic":true},{"text":"/leave ","color":"blue","bold":true,"italic":false},{"text":"to leave the match.","color":"dark_aqua","italic":true}]
execute if entity @s[scores={count=600}] if predicate rr:is_cubekrowd run tellraw @a[x=0,team=Yellow] [{"text":"Use ","color":"yellow","italic":true},{"text":"/leave ","color":"gold","bold":true,"italic":false},{"text":"to leave the match.","color":"yellow","italic":true}]
execute if entity @s[scores={count=600},tag=!GameEnd] run tag @s add noAchievements
execute if entity @s[scores={count=600},tag=!GameEnd] run function custom:set_global/game_started {bool:true}