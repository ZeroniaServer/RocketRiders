#######################################################
## PARKOUR: The system behind the lobby parkour area ##
#######################################################

##Start parkour
execute as @a[team=Lobby,tag=!inParkour] at @s positioned ~ ~1 ~ if entity @e[tag=parkourStart,type=area_effect_cloud,limit=1,distance=..1] run tag @s add inParkour

##Checkpoints
scoreboard players add @a[team=Lobby,tag=inParkour] checkpoint 0
#TODO ADD MORE

##Auto return to checkpoint
#First checkpoint resets time
execute as @a[team=Lobby,tag=inParkour,scores={checkpoint=0}] at @s if entity @s[y=185,dy=0] run scoreboard players reset @s parkourTimer
execute as @a[team=Lobby,tag=inParkour,scores={checkpoint=0}] at @s if entity @s[y=185,dy=0] run scoreboard players reset @s parkourSecs
execute as @a[team=Lobby,tag=inParkour,scores={checkpoint=0}] at @s if entity @s[y=185,dy=0] run scoreboard players reset @s parkourMins
execute as @a[team=Lobby,tag=inParkour,scores={checkpoint=0}] at @s if entity @s[y=185,dy=0] run tp @s -31 193 20 0 0
#TODO ADD MORE

##Scoreboard timer
scoreboard players add @a[team=Lobby,tag=inParkour] parkourTimer 1
scoreboard players add @a[team=Lobby,tag=inParkour] parkourSecs 0
scoreboard players add @a[team=Lobby,tag=inParkour] parkourMins 0
scoreboard players add @a[team=Lobby,tag=inParkour,scores={parkourTimer=20}] parkourSecs 1
scoreboard players set @a[team=Lobby,tag=inParkour,scores={parkourTimer=20}] parkourTimer 0
scoreboard players add @a[team=Lobby,tag=inParkour,scores={parkourSecs=60}] parkourMins 1
scoreboard players set @a[team=Lobby,tag=inParkour,scores={parkourSecs=60}] parkourSecs 0

##Display actionbar
execute as @a[team=Lobby,tag=inParkour,scores={parkourSecs=..9,parkourMins=..9}] run title @s actionbar ["",{"text":"Parkour Timer: ","color":"dark_green"},{"text":"0","color":"green","bold":"true"},{"score":{"name":"@s","objective":"parkourMins"},"color":"green","bold":"true"},{"text":":0","color":"green","bold":"true"},{"score":{"name":"@s","objective":"parkourSecs"},"color":"green","bold":"true"},{"text":"            Checkpoint: ","color":"dark_green"},{"score":{"name":"@s","objective":"checkpoint"},"color":"green","bold":"true"}]
execute as @a[team=Lobby,tag=inParkour,scores={parkourSecs=10..,parkourMins=..9}] run title @s actionbar ["",{"text":"Parkour Timer: ","color":"dark_green"},{"text":"0","color":"green","bold":"true"},{"score":{"name":"@s","objective":"parkourMins"},"color":"green","bold":"true"},{"text":":","color":"green","bold":"true"},{"score":{"name":"@s","objective":"parkourSecs"},"color":"green","bold":"true"},{"text":"            Checkpoint: ","color":"dark_green"},{"score":{"name":"@s","objective":"checkpoint"},"color":"green","bold":"true"}]
execute as @a[team=Lobby,tag=inParkour,scores={parkourSecs=..9,parkourMins=10..}] run title @s actionbar ["",{"text":"Parkour Timer: ","color":"dark_green"},{"score":{"name":"@s","objective":"parkourMins"},"color":"green","bold":"true"},{"text":":0","color":"green","bold":"true"},{"score":{"name":"@s","objective":"parkourSecs"},"color":"green","bold":"true"},{"text":"            Checkpoint: ","color":"dark_green"},{"score":{"name":"@s","objective":"checkpoint"},"color":"green","bold":"true"}]
execute as @a[team=Lobby,tag=inParkour,scores={parkourSecs=10..,parkourMins=10..}] run title @s actionbar ["",{"text":"Parkour Timer: ","color":"dark_green"},{"score":{"name":"@s","objective":"parkourMins"},"color":"green","bold":"true"},{"text":":","color":"green","bold":"true"},{"score":{"name":"@s","objective":"parkourSecs"},"color":"green","bold":"true"},{"text":"            Checkpoint: ","color":"dark_green"},{"score":{"name":"@s","objective":"checkpoint"},"color":"green","bold":"true"}]

##Quit parkour (leave area)
execute as @a[team=Lobby,tag=inParkour] at @s if entity @s[y=200,dy=100] run tellraw @s [{"text":"You left the parkour area, so your time has been reset","color":"red"}]
execute as @a[team=Lobby,tag=inParkour] at @s if entity @s[y=200,dy=100] run tag @s remove inParkour

##Reset objectives for non-parkour players
scoreboard players reset @a[team=Lobby,tag=!inParkour] checkpoint
scoreboard players reset @a[team=Lobby,tag=!inParkour] parkourTimer
scoreboard players reset @a[team=Lobby,tag=!inParkour] parkourMins
scoreboard players reset @a[team=Lobby,tag=!inParkour] parkourSecs