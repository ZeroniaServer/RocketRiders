#Items
execute as @a[tag=JoinBlue] run function game:givegear
function game:saberblue

execute as @a[tag=JoinYellow] run function game:givegear
function game:saberyellow

#Tag Removal
tag @a remove JoinBlue
tag @a remove JoinYellow

#Bossbar
execute as @s[tag=!GameStarted,tag=!Countdown,tag=EditedSettings] unless entity @s[scores={endtimer=1..}] if entity @a[team=Blue] unless entity @a[team=Yellow] run bossbar set rr:startgame name ["",{"text":"Awaiting ","color":"white"},{"text":"Yellow ","color":"gold"},{"text":"player.","color":"white"}]
execute as @s[tag=!GameStarted,tag=!Countdown,tag=EditedSettings] unless entity @s[scores={endtimer=1..}] if entity @a[team=Blue] unless entity @a[team=Yellow] run bossbar set rr:startgame color blue
execute as @s[tag=!GameStarted,tag=!Countdown,tag=EditedSettings] unless entity @s[scores={endtimer=1..}] if entity @a[team=Blue] unless entity @a[team=Yellow] run bossbar set rr:startgame value 15
execute as @s[tag=!GameStarted,tag=!Countdown,tag=EditedSettings] unless entity @s[scores={endtimer=1..}] if entity @a[team=Yellow] unless entity @a[team=Blue] run bossbar set rr:startgame name ["",{"text":"Awaiting ","color":"white"},{"text":"Blue ","color":"blue"},{"text":"player.","color":"white"}]
execute as @s[tag=!GameStarted,tag=!Countdown,tag=EditedSettings] unless entity @s[scores={endtimer=1..}] if entity @a[team=Yellow] unless entity @a[team=Blue] run bossbar set rr:startgame color yellow
execute as @s[tag=!GameStarted,tag=!Countdown,tag=EditedSettings] unless entity @s[scores={endtimer=1..}] if entity @a[team=Yellow] unless entity @a[team=Blue] run bossbar set rr:startgame value 15
execute as @s[tag=!GameStarted,tag=!Countdown,tag=EditedSettings] unless entity @s[scores={endtimer=1..}] unless entity @a[team=Blue] unless entity @a[team=Yellow] run bossbar set rr:startgame name ["",{"text":"Awaiting ","color":"white"},{"text":"Yellow ","color":"gold"},{"text":"and ","color":"white"},{"text":"Blue ","color":"blue"},{"text":"players.","color":"white"}]
execute as @s[tag=!GameStarted,tag=!Countdown,tag=EditedSettings] unless entity @s[scores={endtimer=1..}] unless entity @a[team=Blue] unless entity @a[team=Yellow] run bossbar set rr:startgame value 0
execute as @s[tag=!GameStarted,tag=!Countdown,tag=EditedSettings] unless entity @s[scores={endtimer=1..}] unless entity @a[team=Blue] unless entity @a[team=Yellow] run bossbar set rr:startgame color white
execute as @s[tag=!GameStarted,tag=!Countdown,tag=EditedSettings] unless entity @s[scores={endtimer=1..}] run bossbar set rr:startgame max 30

#Countdown
tag @s[scores={count=1..}] add bossbarOverride
scoreboard players set @s[scores={count=1}] count 400
execute as @s[scores={count=400}] run bossbar set rr:startgame name ["",{"text":"The game is starting in ","color":"green"},{"text":"10","bold":true,"color":"dark_green"},{"text":" seconds.","color":"green"}]
execute as @s[scores={count=400}] run bossbar set rr:startgame value 10
execute as @s[scores={count=400}] run bossbar set rr:startgame max 10
execute as @s[tag=EditedSettings] if entity @a[team=Blue] if entity @a[team=Yellow] run tag @s[tag=!GameStarted] add Countdown
execute as @s[tag=EditedSettings] unless entity @a[team=Blue] run function game:restartcountdown
execute as @s[tag=EditedSettings] unless entity @a[team=Yellow] run function game:restartcountdown
execute as @s[scores={count=600}] as @a[team=Blue] run function rr_duel:forfeit/calculate
execute as @s[scores={count=600}] as @a[team=Yellow] run function rr_duel:forfeit/calculate
execute as @s[scores={count=600},tag=!SMActive] run tellraw @a[team=Blue] [{"text":"Drop your ","color":"aqua","italic":"true"},{"text":"Shooting Saber ","color":"blue","bold":"true","italic":"false"},{"text":"to forfeit the match.","color":"aqua","italic":"true"}]
execute as @s[scores={count=600},tag=!SMActive] run tellraw @a[team=Yellow] [{"text":"Drop your ","color":"yellow","italic":"true"},{"text":"Shooting Saber ","color":"gold","bold":"true","italic":"false"},{"text":"to forfeit the match.","color":"yellow","italic":"true"}]
execute as @s[scores={count=600},tag=SMActive] run tellraw @a[team=Blue] [{"text":"Use ","color":"aqua","italic":"true"},{"text":"/leave ","color":"blue","bold":"true","italic":"false"},{"text":"to forfeit the match.","color":"aqua","italic":"true"}]
execute as @s[scores={count=600},tag=SMActive] run tellraw @a[team=Yellow] [{"text":"Use ","color":"yellow","italic":"true"},{"text":"/leave ","color":"gold","bold":"true","italic":"false"},{"text":"to forfeit the match.","color":"yellow","italic":"true"}]
execute as @s[scores={count=600}] run team join Blue Blue:
execute as @s[scores={count=600}] run team join Yellow Yellow:
execute as @s[scores={count=600}] run bossbar set rr:startgame name ["",{"text":"A 1v1 Duel match is currently in progress!","color":"dark_red"}]
execute as @s[scores={count=600}] run bossbar set rr:startgame color red
execute as @s[scores={count=600}] run scoreboard players set @s Rounds 1
execute as @s[scores={count=600}] run tellraw @a[team=!Lobby] [{"text":"Beginning Round ","color":"red"},{"score":{"name":"@s","objective":"Rounds"},"color":"dark_red","bold":"true"},{"text":"."}]
execute as @s[scores={count=600},tag=!GameEnd] run tag @s add GameStarted