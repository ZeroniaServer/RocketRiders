execute unless entity @s[tag=GameStarted] run scoreboard players add @s[tag=Countdown] count 1
execute as @s[scores={count=1..600}] run scoreboard players set @a dropBow 0
execute as @s[scores={count=1}] at @s run title @a title ["",{"text":"Game starting in:","color":"dark_green","bold":true}]
execute as @s[scores={count=1}] at @s run title @a subtitle ["",{"text":"30 seconds","color":"dark_green","bold":true}]
execute as @s[scores={count=400}] at @s run title @a title ["",{"text":"Game starting in:","color":"dark_green","bold":true}]
execute as @s[scores={count=400}] run title @a subtitle ["",{"text":"10","color":"green","bold":true}]
execute as @s[scores={count=400}] at @a run playsound block.note_block.hat master @a ~ ~ ~ 100 0
execute as @s[scores={count=420}] run title @a title ["",{"text":"Game starting in:","color":"dark_green","bold":true}]
execute as @s[scores={count=420}] run title @a subtitle ["",{"text":"9","color":"green","bold":true}]
execute as @s[scores={count=420}] at @a run playsound block.note_block.hat master @a ~ ~ ~ 100 0
execute as @s[scores={count=440}] run title @a title ["",{"text":"Game starting in:","color":"dark_green","bold":true}]
execute as @s[scores={count=440}] run title @a subtitle ["",{"text":"8","color":"green","bold":true}]
execute as @s[scores={count=440}] at @a run playsound block.note_block.hat master @a ~ ~ ~ 100 0
execute as @s[scores={count=460}] run title @a title ["",{"text":"Game starting in:","color":"dark_green","bold":true}]
execute as @s[scores={count=460}] run title @a subtitle ["",{"text":"7","color":"green","bold":true}]
execute as @s[scores={count=460}] at @a run playsound block.note_block.hat master @a ~ ~ ~ 100 0
execute as @s[scores={count=480}] run title @a title ["",{"text":"Game starting in:","color":"dark_green","bold":true}]
execute as @s[scores={count=480}] at @s run title @a subtitle ["",{"text":"6","color":"green","bold":true}]
execute as @s[scores={count=480}] at @a run playsound block.note_block.hat master @a ~ ~ ~ 100 0
execute as @s[scores={count=500}] at @s run title @a title ["",{"text":"Game starting in:","color":"dark_green","bold":true}]
execute as @s[scores={count=500}] run title @a subtitle ["",{"text":"5","color":"green","bold":true}]
execute as @s[scores={count=500}] at @a run playsound block.note_block.hat master @a ~ ~ ~ 100 0
execute as @s[scores={count=520}] run title @a title ["",{"text":"Game starting in:","color":"dark_green","bold":true}]
execute as @s[scores={count=520}] run title @a subtitle ["",{"text":"4","color":"green","bold":true}]
execute as @s[scores={count=520}] at @a run playsound block.note_block.hat master @a ~ ~ ~ 100 0
execute as @s[scores={count=540}] run title @a title ["",{"text":"Game starting in:","color":"dark_green","bold":true}]
execute as @s[scores={count=540}] run title @a subtitle ["",{"text":"3","color":"green","bold":true}]
execute as @s[scores={count=540}] at @a run playsound block.note_block.hat master @a ~ ~ ~ 100 0
execute as @s[scores={count=560}] run title @a title ["",{"text":"Game starting in:","color":"dark_green","bold":true}]
execute as @s[scores={count=560}] run title @a subtitle ["",{"text":"2","color":"green","bold":true}]
execute as @s[scores={count=560}] at @a run playsound block.note_block.hat master @a ~ ~ ~ 100 0
execute as @s[scores={count=580}] run title @a title ["",{"text":"Game starting in:","color":"dark_green","bold":true}]
execute as @s[scores={count=580}] run title @a subtitle ["",{"text":"1","color":"green","bold":true}]
execute as @s[scores={count=580}] at @a run playsound block.note_block.hat master @a ~ ~ ~ 100 0
execute as @s[scores={count=600}] run title @a title ["",{"text":"Game Started!","color":"dark_green","bold":true}]
execute as @s[scores={count=600}] run title @a subtitle ["",{"text":"GL & HF!","color":"green","bold":true}]
execute as @s[scores={count=600}] at @a run playsound block.note_block.hat master @a ~ ~ ~ 100 0
execute as @s[scores={count=600}] run tp @a[team=Yellow] 12 64 66 -180 0
execute as @s[scores={count=600}] run tp @a[team=Blue] 12 64 -66 0 0
execute as @s[scores={count=600}] run effect clear @a[team=Blue] resistance
execute as @s[scores={count=600}] run effect clear @a[team=Yellow] resistance
execute as @s[scores={count=600}] run effect give @a[team=Blue] fire_resistance 10 100 true
execute as @s[scores={count=600}] run effect give @a[team=Yellow] fire_resistance 10 100 true
execute as @s[scores={count=600}] run gamemode survival @a[team=Yellow]
execute as @s[scores={count=600}] run gamemode survival @a[team=Blue]
#hotfix for being able to keep charging bow from queue
execute as @s[scores={count=600}] run clear @a[team=Blue] bow
execute as @s[scores={count=600}] as @a[team=Blue] run function game:saberblue
execute as @s[scores={count=600}] run clear @a[team=Yellow] bow
execute as @s[scores={count=600}] as @a[team=Yellow] run function game:saberyellow
execute as @s[scores={count=600}] run tellraw @a[team=Blue] [{"text":"Drop your ","color":"aqua","italic":"true"},{"text":"Shooting Saber ","color":"blue","bold":"true","italic":"false"},{"text":"to leave the match.","color":"aqua","italic":"true"}]
execute as @s[scores={count=600}] run tellraw @a[team=Yellow] [{"text":"Drop your ","color":"gold","italic":"true"},{"text":"Shooting Saber ","color":"yellow","bold":"true","italic":"false"},{"text":"to leave the match.","color":"gold","italic":"true"}]
execute as @s[scores={count=600},tag=!GameEnd] run tag @a remove CalculateWin
execute as @s[scores={count=600},tag=!GameEnd] run tag @a remove CalculateLoss
execute as @s[scores={count=600},tag=!GameEnd] run tag @s add GameStarted
#hotfix for bug where jumping in queue rooms disqualifies you from ground bound
execute as @s[scores={count=600}] run scoreboard players set @a[team=Yellow] jumps 0
execute as @s[scores={count=600}] run scoreboard players set @a[team=Blue] jumps 0
#enabling damage gamerules
execute as @s[scores={count=600}] run gamerule fallDamage true
execute as @s[scores={count=600}] run gamerule drowningDamage true
execute as @s[scores={count=600}] run gamerule fireDamage true
scoreboard players set @s[tag=GameStarted] count 0
tag @s[tag=GameStarted] remove Countdown