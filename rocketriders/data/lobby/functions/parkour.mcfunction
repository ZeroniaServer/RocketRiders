#######################################################
## PARKOUR: The system behind the lobby parkour area ##
#######################################################

##Start parkour
execute as @a[team=Lobby,tag=!inParkour] at @s positioned ~ ~1 ~ if entity @e[tag=parkourStart,type=area_effect_cloud,limit=1,distance=..1] run tellraw @s [{"text":"Parkour run started!","color":"dark_green","bold":"true"}]
execute as @a[team=Lobby,tag=!inParkour] at @s positioned ~ ~1 ~ if entity @e[tag=parkourStart,type=area_effect_cloud,limit=1,distance=..1] run tag @s add inParkour

##Checkpoints
scoreboard players add @a[team=Lobby,tag=inParkour] checkpoint 0
#TODO ADD MORE

##Return to checkpoint
#If you fall on the floor, you return to your last checkpoint automatically
execute as @a[team=Lobby,tag=inParkour] at @s if entity @s[y=185,dy=0] run tag @s add returnCheckpoint
execute as @a[team=Lobby,tag=inParkour,tag=returnCheckpoint] run tellraw @s ["",{"text":"Returned to Checkpoint ","color":"dark_green"},{"score":{"name":"@s","objective":"checkpoint"},"color":"green","bold":"true"},{"text":".","color":"dark_green"}]
execute as @a[team=Lobby,tag=inParkour,tag=returnCheckpoint,scores={checkpoint=0}] run tp @s -31 193 18 0 0
#TODO ADD MORE
execute as @a[team=Lobby,tag=inParkour,tag=returnCheckpoint] run tag @s remove returnCheckpoint

##Reset time
tellraw @a[team=Lobby,tag=inParkour,tag=timeReset] [{"text":"Your time has reset.","color":"green","italic":"true"}]
scoreboard players reset @a[team=Lobby,tag=inParkour,tag=timeReset] parkourSecs
scoreboard players reset @a[team=Lobby,tag=inParkour,tag=timeReset] parkourMins
scoreboard players reset @a[team=Lobby,tag=inParkour,tag=timeReset] parkourTimer
tag @a[team=Lobby,tag=inParkour,tag=timeReset] remove timeReset

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

##Inventory controls (offhand and drop)
#Return to last checkpoint
execute as @a[team=Lobby,tag=inParkour] unless entity @s[nbt={Inventory:[{Slot:3b,id:"minecraft:clock",Count:1}]}] run replaceitem entity @s hotbar.3 clock{display:{Name:"{\"translate\":\"Return to Last Checkpoint\",\"color\":\"aqua\",\"bold\":true,\"italic\":false}"}} 1
execute as @a[team=Lobby,tag=inParkour,scores={dropClock=1..}] run tag @s add returnCheckpoint
scoreboard players reset @a dropClock
execute as @a[team=Lobby,tag=inParkour] if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:clock"}]}] run tag @s add returnCheckpoint

#Quit parkour
execute as @a[team=Lobby,tag=inParkour] unless entity @s[nbt={Inventory:[{Slot:5b,id:"minecraft:barrier",Count:1}]}] run replaceitem entity @s hotbar.5 barrier{display:{Name:"{\"translate\":\"Quit Parkour\",\"color\":\"red\",\"bold\":true,\"italic\":false}"}} 1
execute as @a[team=Lobby,tag=inParkour,scores={dropBarrier=1..}] run tellraw @s [{"text":"You quit the parkour.","color":"red"}]
execute as @a[team=Lobby,tag=inParkour,scores={dropBarrier=1..}] run tag @s remove inParkour
scoreboard players reset @a dropBarrier
execute as @a[team=Lobby,tag=inParkour] if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:barrier"}]}] run tellraw @s [{"text":"You quit the parkour.","color":"red"}]
execute as @a[team=Lobby,tag=inParkour] if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:barrier"}]}] run tag @s remove inParkour

##Clear offhand (necessary for inventory controls)
replaceitem entity @a[team=Lobby] weapon.offhand air

##Leave area to quit parkour
execute as @a[team=Lobby,tag=inParkour] at @s if entity @s[y=200,dy=100] run tellraw @s [{"text":"You left the parkour area, so your parkour run was canceled.","color":"red"}]
execute as @a[team=Lobby,tag=inParkour] at @s if entity @s[y=200,dy=100] run tag @s remove inParkour

##Safety: Only lobby players in parkour
tag @a[team=!Lobby,tag=inParkour] remove inParkour

##Reset objectives for non-parkour players
scoreboard players reset @a[team=Lobby,tag=!inParkour] checkpoint
scoreboard players reset @a[team=Lobby,tag=!inParkour] parkourTimer
scoreboard players reset @a[team=Lobby,tag=!inParkour] parkourMins
scoreboard players reset @a[team=Lobby,tag=!inParkour] parkourSecs