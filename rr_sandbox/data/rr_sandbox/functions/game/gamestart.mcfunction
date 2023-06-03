#Items
execute if entity @s[scores={servermode=0},tag=!SMCustom] as @a[predicate=custom:indimension,tag=JoinBlue] run function game:givegear
execute unless entity @s[scores={servermode=0},tag=!SMCustom] as @a[predicate=custom:indimension,tag=JoinBlue] run function servermode:givegear
execute unless entity @s[tag=GameStarted] run item replace entity @a[predicate=custom:indimension,tag=JoinBlue] hotbar.0 with minecraft:written_book{pages:['{"extra":[{"text":"\\u0020 Rocket","color":"blue","bold":true},{"text":"-","color":"gray","bold":true},{"text":"nomicon","color":"gold","bold":true},{"text":"\\n\\nYour one-stop shop for every item in RR!\\n\\nNothing to see here just yet, but check this book again once the game starts!\\n","color":"dark_gray"},{"text":"\\n\\n\\n\\nSo impatient...","color":"#CCCCCC","italic":true}],"text":""}'],author:"Zeronia",title:"Rocket-nomicon",resolved:1b,display:{Name:'[{"text":"Rocket","color":"blue","bold":true,"italic":false},{"text":"-","color":"gray","bold":true,"italic":false},{"text":"nomicon","color":"gold","bold":true,"italic":false}]',Lore:['{"translate":"A helpful book used to obtain","color":"purple"}','{"translate":"every item in Rocket Riders!","color":"purple"}']}}
execute if entity @s[tag=GameStarted] as @a[predicate=custom:indimension,tag=JoinBlue] run function rr_sandbox:items/givenomicon

execute if entity @s[scores={servermode=0},tag=!SMCustom] as @a[predicate=custom:indimension,tag=JoinYellow] run function game:givegear
execute unless entity @s[scores={servermode=0},tag=!SMCustom] as @a[predicate=custom:indimension,tag=JoinYellow] run function servermode:givegear
execute unless entity @s[tag=GameStarted] run item replace entity @a[predicate=custom:indimension,tag=JoinYellow] hotbar.0 with minecraft:written_book{pages:['{"extra":[{"text":"\\u0020 Rocket","color":"blue","bold":true},{"text":"-","color":"gray","bold":true},{"text":"nomicon","color":"gold","bold":true},{"text":"\\n\\nYour one-stop shop for every item in RR!\\n\\nNothing to see here just yet, but check this book again once the game starts!\\n","color":"dark_gray"},{"text":"\\n\\n\\n\\nSo impatient...","color":"#CCCCCC","italic":true}],"text":""}'],author:"Zeronia",title:"Rocket-nomicon",resolved:1b,display:{Name:'[{"text":"Rocket","color":"blue","bold":true,"italic":false},{"text":"-","color":"gray","bold":true,"italic":false},{"text":"nomicon","color":"gold","bold":true,"italic":false}]',Lore:['{"translate":"A helpful book used to obtain","color":"purple"}','{"translate":"every item in Rocket Riders!","color":"purple"}']}}
execute if entity @s[tag=GameStarted] as @a[predicate=custom:indimension,tag=JoinYellow] run function rr_sandbox:items/givenomicon

#Notify Join
execute if entity @s[tag=GameStarted,tag=!SMActive] run tellraw @a[predicate=custom:indimension,tag=JoinBlue] [{"text":"Drop your ","color":"aqua","italic":true},{"text":"Rocket","color":"blue","bold":true,"italic":false},{"text":"-","color":"gray","bold":true,"italic":false},{"text":"nomicon","color":"gold","bold":true,"italic":false},{"text":" to leave the match.","color":"aqua","italic":true}]
execute if entity @s[tag=GameStarted,tag=SMActive] run tellraw @a[predicate=custom:indimension,tag=JoinBlue] [{"text":"Use ","color":"aqua","italic":true},{"text":"/leave ","color":"blue","bold":true,"italic":false},{"text":"to leave the match.","color":"aqua","italic":true}]
execute if entity @s[tag=GameStarted,tag=!SMActive] run tellraw @a[predicate=custom:indimension,tag=JoinYellow] [{"text":"Drop your ","color":"yellow","italic":true},{"text":"Rocket","color":"blue","bold":true,"italic":false},{"text":"-","color":"gray","bold":true,"italic":false},{"text":"nomicon","color":"gold","bold":true,"italic":false},{"text":" to leave the match.","color":"yellow","italic":true}]
execute if entity @s[tag=GameStarted,tag=SMActive] run tellraw @a[predicate=custom:indimension,tag=JoinYellow] [{"text":"Use ","color":"yellow","italic":true},{"text":"/leave ","color":"gold","bold":true,"italic":false},{"text":"to leave the match.","color":"yellow","italic":true}]

#Tag Removal
tag @a[predicate=custom:indimension] remove JoinBlue
tag @a[predicate=custom:indimension] remove JoinYellow

#Bossbar
execute if entity @s[tag=!GameStarted,tag=!Countdown,tag=EditedSettings] unless entity @s[scores={endtimer=1..}] unless entity @a[predicate=custom:indimension,team=Blue] unless entity @a[predicate=custom:indimension,team=Yellow] run bossbar set rr:startgame name ["",{"text":"Awaiting players...","color":"white"}]
execute if entity @s[tag=!GameStarted,tag=!Countdown,tag=EditedSettings] unless entity @s[scores={endtimer=1..}] unless entity @a[predicate=custom:indimension,team=Blue] unless entity @a[predicate=custom:indimension,team=Yellow] run bossbar set rr:startgame value 0
execute if entity @s[tag=!GameStarted,tag=!Countdown,tag=EditedSettings] unless entity @s[scores={endtimer=1..}] unless entity @a[predicate=custom:indimension,team=Blue] unless entity @a[predicate=custom:indimension,team=Yellow] run bossbar set rr:startgame color white

#Countdown
execute if entity @s[tag=EditedSettings] if entity @a[predicate=custom:indimension,team=Blue] run tag @s[tag=!GameStarted] add Countdown
execute if entity @s[tag=EditedSettings] if entity @a[predicate=custom:indimension,team=Yellow] run tag @s[tag=!GameStarted] add Countdown
execute if entity @s[tag=EditedSettings,tag=Countdown] unless entity @a[predicate=custom:indimension,team=Blue] unless entity @a[predicate=custom:indimension,team=Yellow] run function game:restartcountdown

execute if entity @s[scores={count=1..600}] run scoreboard players set @a[predicate=custom:indimension] dropBook 0
execute if entity @s[scores={count=600},tag=!GameEnd] as @a[team=Blue] run function rr_sandbox:items/givenomicon
execute if entity @s[scores={count=600},tag=!GameEnd] as @a[team=Yellow] run function rr_sandbox:items/givenomicon
execute if entity @s[scores={count=600},tag=!SMActive] run tellraw @a[predicate=custom:indimension,team=Blue] [{"text":"Drop your ","color":"aqua","italic":true},{"text":"Rocket","color":"blue","bold":true,"italic":false},{"text":"-","color":"gray","bold":true,"italic":false},{"text":"nomicon","color":"gold","bold":true,"italic":false},{"text":" to leave the match.","color":"aqua","italic":true}]
execute if entity @s[scores={count=600},tag=!SMActive] run tellraw @a[predicate=custom:indimension,team=Yellow] [{"text":"Drop your ","color":"yellow","italic":true},{"text":"Rocket","color":"blue","bold":true,"italic":false},{"text":"-","color":"gray","bold":true,"italic":false},{"text":"nomicon","color":"gold","bold":true,"italic":false},{"text":" to leave the match.","color":"yellow","italic":true}]
execute if entity @s[scores={count=600},tag=SMActive] run tellraw @a[predicate=custom:indimension,team=Blue] [{"text":"Use ","color":"aqua","italic":true},{"text":"/leave ","color":"blue","bold":true,"italic":false},{"text":"to leave the match.","color":"aqua","italic":true}]
execute if entity @s[scores={count=600},tag=SMActive] run tellraw @a[predicate=custom:indimension,team=Yellow] [{"text":"Use ","color":"yellow","italic":true},{"text":"/leave ","color":"gold","bold":true,"italic":false},{"text":"to leave the match.","color":"yellow","italic":true}]
execute if entity @s[scores={count=600},tag=!GameEnd] run tag @s add GameStarted