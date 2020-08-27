#######################################################
## PARKOUR: The system behind the lobby parkour area ##
#######################################################

##Start parkour
execute as @a[team=Lobby,tag=!inParkour] at @s positioned ~ ~1 ~ if entity @e[tag=parkourStart,type=area_effect_cloud,limit=1,distance=..1.2] run tag @s add startParkour
execute as @a[team=Lobby,tag=startParkour] run tellraw @s [{"text":"Parkour Run Started!","color":"dark_green","bold":"true"}]
execute as @a[team=Lobby,tag=startParkour] run tellraw @s [{"text":"- Step on pressure plates to reach ","color":"green"},{"text":"Checkpoints","color":"dark_green"},{"text":".","color":"green"}]
execute as @a[team=Lobby,tag=startParkour] run tellraw @s [{"text":"- If you fall on the ground, you go to your last ","color":"green"},{"text":"Checkpoint","color":"dark_green"},{"text":".","color":"green"}]
execute as @a[team=Lobby,tag=startParkour] run tellraw @s [{"text":"- The first pressure plate resets your time.","color":"green"}]
execute as @a[team=Lobby,tag=startParkour] run tellraw @s [{"text":"- Drop/offhand the compass to ","color":"green"},{"text":"Return to Checkpoint","color":"aqua","bold":"true"},{"text":".","color":"green"}]
execute as @a[team=Lobby,tag=startParkour] run tellraw @s [{"text":"- Drop/offhand the clock to ","color":"green"},{"text":"Quit to Start","color":"yellow","bold":"true"},{"text":".","color":"green"}]
execute as @a[team=Lobby,tag=startParkour] run tellraw @s [{"text":"- Drop/offhand the barrier to ","color":"green"},{"text":"Quit Parkour","color":"red","bold":"true"},{"text":".","color":"green"}]
execute as @a[team=Lobby,tag=startParkour] at @s run playsound minecraft:entity.firework_rocket.twinkle_far player @s ~ ~ ~ 1 1
execute as @a[team=Lobby,tag=startParkour] at @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 1.3
execute as @a[team=Lobby,tag=startParkour] at @s run particle firework ~ ~1 ~ 0 0 0 0.1 100 force @s
execute as @a[team=Lobby,tag=startParkour] run tag @s add inParkour
execute as @a[team=Lobby,tag=startParkour] run tag @s remove startParkour

##Checkpoints
scoreboard players add @a[team=Lobby,tag=inParkour] checkpoint 0

#Reach checkpoint
execute as @a[team=Lobby,tag=inParkour,scores={checkpoint=0}] at @s positioned ~ ~1 ~ if entity @e[tag=parkourC1,type=area_effect_cloud,limit=1,distance=..1.2] run tag @s add earnCheckpoint
execute as @a[team=Lobby,tag=inParkour,scores={checkpoint=1}] at @s positioned ~ ~1 ~ if entity @e[tag=parkourC2,type=area_effect_cloud,limit=1,distance=..1.2] run tag @s add earnCheckpoint
execute as @a[team=Lobby,tag=inParkour,scores={checkpoint=2}] at @s positioned ~ ~1 ~ if entity @e[tag=parkourC3,type=area_effect_cloud,limit=1,distance=..1.2] run tag @s add earnCheckpoint

#Visual/Sound effects
execute as @a[team=Lobby,tag=earnCheckpoint] run scoreboard players add @s checkpoint 1
execute as @a[team=Lobby,tag=earnCheckpoint] at @s run playsound minecraft:entity.firework_rocket.twinkle_far player @s ~ ~ ~ 1 1
execute as @a[team=Lobby,tag=earnCheckpoint] at @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 1.3
execute as @a[team=Lobby,tag=earnCheckpoint] at @s run particle firework ~ ~1 ~ 0 0 0 0.1 100 force @s

#Tellraw messages
execute as @a[team=Lobby,tag=earnCheckpoint,scores={parkourSecs=..9,parkourMins=..9}] run tellraw @s ["",{"text":"You've reached Checkpoint ","color":"dark_green"},{"score":{"name":"@s","objective":"checkpoint"},"color":"green","bold":"true"},{"text":" in ","color":"dark_green"},{"text":"0","color":"green","bold":"true"},{"score":{"name":"@s","objective":"parkourMins"},"color":"green","bold":"true"},{"text":":0","color":"green","bold":"true"},{"score":{"name":"@s","objective":"parkourSecs"},"color":"green","bold":"true"},{"text":".","color":"green","bold":"true"},{"score":{"name":"@s","objective":"parkourDeci"},"color":"green","bold":"true"},{"score":{"name":"@s","objective":"parkourDeci2"},"color":"green","bold":"true"},{"text":"!","color":"dark_green"}]
execute as @a[team=Lobby,tag=earnCheckpoint,scores={parkourSecs=10..,parkourMins=..9}] run tellraw @s ["",{"text":"You've reached Checkpoint ","color":"dark_green"},{"score":{"name":"@s","objective":"checkpoint"},"color":"green","bold":"true"},{"text":" in ","color":"dark_green"},{"text":"0","color":"green","bold":"true"},{"score":{"name":"@s","objective":"parkourMins"},"color":"green","bold":"true"},{"text":":","color":"green","bold":"true"},{"score":{"name":"@s","objective":"parkourSecs"},"color":"green","bold":"true"},{"text":".","color":"green","bold":"true"},{"score":{"name":"@s","objective":"parkourDeci"},"color":"green","bold":"true"},{"score":{"name":"@s","objective":"parkourDeci2"},"color":"green","bold":"true"},{"text":"!","color":"dark_green"}]
execute as @a[team=Lobby,tag=earnCheckpoint,scores={parkourSecs=..9,parkourMins=10..}] run tellraw @s ["",{"text":"You've reached Checkpoint ","color":"dark_green"},{"score":{"name":"@s","objective":"checkpoint"},"color":"green","bold":"true"},{"text":" in ","color":"dark_green"},{"score":{"name":"@s","objective":"parkourMins"},"color":"green","bold":"true"},{"text":":0","color":"green","bold":"true"},{"score":{"name":"@s","objective":"parkourSecs"},"color":"green","bold":"true"},{"text":".","color":"green","bold":"true"},{"score":{"name":"@s","objective":"parkourDeci"},"color":"green","bold":"true"},{"score":{"name":"@s","objective":"parkourDeci2"},"color":"green","bold":"true"},{"text":"!","color":"dark_green"}]
execute as @a[team=Lobby,tag=earnCheckpoint,scores={parkourSecs=10..,parkourMins=10..}] run tellraw @s ["",{"text":"You've reached Checkpoint ","color":"dark_green"},{"score":{"name":"@s","objective":"checkpoint"},"color":"green","bold":"true"},{"text":" in ","color":"dark_green"},{"score":{"name":"@s","objective":"parkourMins"},"color":"green","bold":"true"},{"text":":","color":"green","bold":"true"},{"score":{"name":"@s","objective":"parkourSecs"},"color":"green","bold":"true"},{"text":".","color":"green","bold":"true"},{"score":{"name":"@s","objective":"parkourDeci"},"color":"green","bold":"true"},{"score":{"name":"@s","objective":"parkourDeci2"},"color":"green","bold":"true"},{"text":"!","color":"dark_green"}]
tag @a[team=Lobby,tag=earnCheckpoint] remove earnCheckpoint

##End parkour
execute as @a[team=Lobby,tag=inParkour] at @s positioned ~ ~1 ~ if entity @e[tag=parkourEnd,type=area_effect_cloud,limit=1,distance=..1.2] run tag @s add finishedParkour
execute as @a[team=Lobby,tag=finishedParkour,scores={parkourSecs=..9,parkourMins=..9}] run tellraw @a ["",{"selector":"@s"},{"text":" completed the Parkour in ","color":"dark_green"},{"text":"0","color":"green","bold":"true"},{"score":{"name":"@s","objective":"parkourMins"},"color":"green","bold":"true"},{"text":":0","color":"green","bold":"true"},{"score":{"name":"@s","objective":"parkourSecs"},"color":"green","bold":"true"},{"text":".","color":"green","bold":"true"},{"score":{"name":"@s","objective":"parkourDeci"},"color":"green","bold":"true"},{"score":{"name":"@s","objective":"parkourDeci2"},"color":"green","bold":"true"},{"text":"!","color":"dark_green"}]
execute as @a[team=Lobby,tag=finishedParkour,scores={parkourSecs=10..,parkourMins=..9}] run tellraw @a ["",{"selector":"@s"},{"text":" completed the Parkour in ","color":"dark_green"},{"text":"0","color":"green","bold":"true"},{"score":{"name":"@s","objective":"parkourMins"},"color":"green","bold":"true"},{"text":":","color":"green","bold":"true"},{"score":{"name":"@s","objective":"parkourSecs"},"color":"green","bold":"true"},{"text":".","color":"green","bold":"true"},{"score":{"name":"@s","objective":"parkourDeci"},"color":"green","bold":"true"},{"score":{"name":"@s","objective":"parkourDeci2"},"color":"green","bold":"true"},{"text":"!","color":"dark_green"}]
execute as @a[team=Lobby,tag=finishedParkour,scores={parkourSecs=..9,parkourMins=10..}] run tellraw @a ["",{"selector":"@s"},{"text":" completed the Parkour in ","color":"dark_green"},{"score":{"name":"@s","objective":"parkourMins"},"color":"green","bold":"true"},{"text":":0","color":"green","bold":"true"},{"score":{"name":"@s","objective":"parkourSecs"},"color":"green","bold":"true"},{"text":".","color":"green","bold":"true"},{"score":{"name":"@s","objective":"parkourDeci"},"color":"green","bold":"true"},{"score":{"name":"@s","objective":"parkourDeci2"},"color":"green","bold":"true"},{"text":"!","color":"dark_green"}]
execute as @a[team=Lobby,tag=finishedParkour,scores={parkourSecs=10..,parkourMins=10..}] run tellraw @a ["",{"selector":"@s"},{"text":" completed the Parkour in ","color":"dark_green"},{"score":{"name":"@s","objective":"parkourMins"},"color":"green","bold":"true"},{"text":":","color":"green","bold":"true"},{"score":{"name":"@s","objective":"parkourSecs"},"color":"green","bold":"true"},{"text":".","color":"green","bold":"true"},{"score":{"name":"@s","objective":"parkourDeci"},"color":"green","bold":"true"},{"score":{"name":"@s","objective":"parkourDeci2"},"color":"green","bold":"true"},{"text":"!","color":"dark_green"}]

#Visual/Sound effects
execute as @a[team=Lobby,tag=finishedParkour] at @s run playsound minecraft:entity.firework_rocket.twinkle_far player @s ~ ~ ~ 1 1
execute as @a[team=Lobby,tag=finishedParkour] at @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 1.1
execute as @a[team=Lobby,tag=finishedParkour] at @s run playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 1 1.3
execute as @a[team=Lobby,tag=finishedParkour] at @s run particle firework ~ ~1 ~ 0 0 0 0.1 100 force @s

#Store best final time
scoreboard players set $60 finalParkourTime 60
execute as @a[team=Lobby,tag=finishedParkour] run scoreboard players operation @s finalParkourTime = @s parkourMins
execute as @a[team=Lobby,tag=finishedParkour] run scoreboard players operation @s finalParkourTime *= $60 finalParkourTime
execute as @a[team=Lobby,tag=finishedParkour] run scoreboard players operation @s finalParkourTime += @s parkourSecs

#First time completion
execute as @a[team=Lobby,tag=finishedParkour,tag=!firstParkour] run scoreboard players operation @s bestParkourTime = @s finalParkourTime
execute as @a[team=Lobby,tag=finishedParkour,tag=!firstParkour] run scoreboard players operation @s bestParkourMins = @s parkourMins
execute as @a[team=Lobby,tag=finishedParkour,tag=!firstParkour] run scoreboard players operation @s bestParkourSecs = @s parkourSecs
execute as @a[team=Lobby,tag=finishedParkour,tag=!firstParkour] run scoreboard players operation @s bestParkourDeci = @s parkourDeci
execute as @a[team=Lobby,tag=finishedParkour,tag=!firstParkour] run scoreboard players operation @s bestParkourDeci2 = @s parkourDeci2

#Repeat completion
execute as @a[team=Lobby,tag=finishedParkour,tag=firstParkour] if score @s finalParkourTime < @s bestParkourTime run tellraw @s [{"text":"That's a new best time!","color":"green","italic":"true"}]
execute as @a[team=Lobby,tag=finishedParkour,tag=firstParkour] if score @s finalParkourTime < @s bestParkourTime run scoreboard players operation @s bestParkourMins = @s parkourMins
execute as @a[team=Lobby,tag=finishedParkour,tag=firstParkour] if score @s finalParkourTime < @s bestParkourTime run scoreboard players operation @s bestParkourSecs = @s parkourSecs
execute as @a[team=Lobby,tag=finishedParkour,tag=firstParkour] if score @s finalParkourTime < @s bestParkourTime run scoreboard players operation @s bestParkourDeci = @s parkourDeci
execute as @a[team=Lobby,tag=finishedParkour,tag=firstParkour] if score @s finalParkourTime < @s bestParkourTime run scoreboard players operation @s bestParkourDeci2 = @s parkourDeci2
execute as @a[team=Lobby,tag=finishedParkour,tag=firstParkour] if score @s finalParkourTime < @s bestParkourTime run scoreboard players operation @s bestParkourTime = @s finalParkourTime

#Store in leaderboard
execute as @a[team=Lobby,tag=finishedParkour] if score @e[tag=ParkourTime,limit=1] bestParkourTime > @s finalParkourTime at @s run function lobby:parkour/updatelb

#Remove tags + give advancement
execute as @a[team=Lobby,tag=finishedParkour] run advancement grant @s only tutorial:endparkour
execute as @a[team=Lobby,tag=finishedParkour] run tag @s add firstParkour
execute as @a[team=Lobby,tag=finishedParkour] run tag @s remove inParkour
execute as @a[team=Lobby,tag=finishedParkour] run tag @s remove finishedParkour

##Return to checkpoint
#If you fall on the floor, you return to your last checkpoint automatically
execute as @a[team=Lobby,tag=inParkour] at @s if block ~ ~-1 ~ black_concrete run tag @s[y=184,dy=16] add returnCheckpoint
execute as @a[team=Lobby,tag=inParkour,tag=returnCheckpoint,scores={checkpoint=0}] run tp @s -31 193 17 0 0
execute as @a[team=Lobby,tag=inParkour,tag=returnCheckpoint,scores={checkpoint=1}] run tp @s -28 196 68 0 0
execute as @a[team=Lobby,tag=inParkour,tag=returnCheckpoint,scores={checkpoint=2}] run tp @s -13 199 58 -90 0
execute as @a[team=Lobby,tag=inParkour,tag=returnCheckpoint,scores={checkpoint=3}] run tp @s -16 199 93 90 0
execute as @a[team=Lobby,tag=inParkour,tag=returnCheckpoint] at @s run playsound minecraft:entity.zombie_villager.converted player @s ~ ~ ~ 1 2
execute as @a[team=Lobby,tag=inParkour,tag=returnCheckpoint] run tag @s remove returnCheckpoint

##Scoreboard timer
scoreboard players add @a[team=Lobby,tag=inParkour] parkourTimer 1
scoreboard players add @a[team=Lobby,tag=inParkour] parkourSecs 0
scoreboard players add @a[team=Lobby,tag=inParkour] parkourMins 0
scoreboard players add @a[team=Lobby,tag=inParkour,scores={parkourTimer=20}] parkourSecs 1
scoreboard players set @a[team=Lobby,tag=inParkour,scores={parkourTimer=20}] parkourTimer 0
scoreboard players add @a[team=Lobby,tag=inParkour,scores={parkourSecs=60}] parkourMins 1
scoreboard players set @a[team=Lobby,tag=inParkour,scores={parkourSecs=60}] parkourSecs 0

#Decimals
scoreboard players set $2 parkourDeci 2
execute as @a[team=Lobby,tag=inParkour] run scoreboard players operation @s parkourDeci = @s parkourTimer
execute as @a[team=Lobby,tag=inParkour] run scoreboard players operation @s parkourDeci /= $2 parkourDeci
scoreboard players add @a[team=Lobby,tag=inParkour] parkourDeci2 5
scoreboard players set @a[team=Lobby,tag=inParkour,scores={parkourDeci2=10}] parkourDeci2 0

##Reset time
tag @a[team=Lobby,tag=inParkour,tag=onResetPlate] remove onResetPlate
execute as @a[team=Lobby,tag=inParkour] at @s if entity @s[x=-31,y=193,z=18,dx=0,dy=0,dz=0] run tag @s add onResetPlate
scoreboard players set @a[team=Lobby,tag=inParkour,tag=!timeReset,tag=onResetPlate] parkourSecs 0
scoreboard players set @a[team=Lobby,tag=inParkour,tag=!timeReset,tag=onResetPlate] parkourMins 0
scoreboard players set @a[team=Lobby,tag=inParkour,tag=!timeReset,tag=onResetPlate] parkourDeci 0
scoreboard players set @a[team=Lobby,tag=inParkour,tag=!timeReset,tag=onResetPlate] parkourDeci2 0
scoreboard players set @a[team=Lobby,tag=inParkour,tag=!timeReset,tag=onResetPlate] parkourTimer 0
scoreboard players set @a[team=Lobby,tag=inParkour,tag=!timeReset,tag=onResetPlate] checkpoint 0
tag @a[team=Lobby,tag=inParkour,tag=!timeReset,tag=onResetPlate] add timeReset
tag @a[team=Lobby,tag=inParkour,tag=timeReset,tag=!onResetPlate] remove timeReset

##Display actionbar
execute as @a[team=Lobby,tag=inParkour,scores={parkourSecs=..9,parkourMins=..9}] run title @s actionbar ["",{"text":"Parkour Timer: ","color":"dark_green"},{"text":"0","color":"green","bold":"true"},{"score":{"name":"@s","objective":"parkourMins"},"color":"green","bold":"true"},{"text":":0","color":"green","bold":"true"},{"score":{"name":"@s","objective":"parkourSecs"},"color":"green","bold":"true"},{"text":".","color":"green","bold":"true"},{"score":{"name":"@s","objective":"parkourDeci"},"color":"green","bold":"true"},{"score":{"name":"@s","objective":"parkourDeci2"},"color":"green","bold":"true"},{"text":"            Checkpoint: ","color":"dark_green"},{"score":{"name":"@s","objective":"checkpoint"},"color":"green","bold":"true"}]
execute as @a[team=Lobby,tag=inParkour,scores={parkourSecs=10..,parkourMins=..9}] run title @s actionbar ["",{"text":"Parkour Timer: ","color":"dark_green"},{"text":"0","color":"green","bold":"true"},{"score":{"name":"@s","objective":"parkourMins"},"color":"green","bold":"true"},{"text":":","color":"green","bold":"true"},{"score":{"name":"@s","objective":"parkourSecs"},"color":"green","bold":"true"},{"text":".","color":"green","bold":"true"},{"score":{"name":"@s","objective":"parkourDeci"},"color":"green","bold":"true"},{"score":{"name":"@s","objective":"parkourDeci2"},"color":"green","bold":"true"},{"text":"            Checkpoint: ","color":"dark_green"},{"score":{"name":"@s","objective":"checkpoint"},"color":"green","bold":"true"}]
execute as @a[team=Lobby,tag=inParkour,scores={parkourSecs=..9,parkourMins=10..}] run title @s actionbar ["",{"text":"Parkour Timer: ","color":"dark_green"},{"score":{"name":"@s","objective":"parkourMins"},"color":"green","bold":"true"},{"text":":0","color":"green","bold":"true"},{"score":{"name":"@s","objective":"parkourSecs"},"color":"green","bold":"true"},{"text":".","color":"green","bold":"true"},{"score":{"name":"@s","objective":"parkourDeci"},"color":"green","bold":"true"},{"score":{"name":"@s","objective":"parkourDeci2"},"color":"green","bold":"true"},{"text":"            Checkpoint: ","color":"dark_green"},{"score":{"name":"@s","objective":"checkpoint"},"color":"green","bold":"true"}]
execute as @a[team=Lobby,tag=inParkour,scores={parkourSecs=10..,parkourMins=10..}] run title @s actionbar ["",{"text":"Parkour Timer: ","color":"dark_green"},{"score":{"name":"@s","objective":"parkourMins"},"color":"green","bold":"true"},{"text":":","color":"green","bold":"true"},{"score":{"name":"@s","objective":"parkourSecs"},"color":"green","bold":"true"},{"text":".","color":"green","bold":"true"},{"score":{"name":"@s","objective":"parkourDeci"},"color":"green","bold":"true"},{"score":{"name":"@s","objective":"parkourDeci2"},"color":"green","bold":"true"},{"text":"            Checkpoint: ","color":"dark_green"},{"score":{"name":"@s","objective":"checkpoint"},"color":"green","bold":"true"}]

##Inventory controls (offhand and drop)
#Return to last checkpoint (includes 1 second cooldown)
scoreboard players add @a[team=Lobby,tag=inParkour] chkpntCooldown 0
execute as @a[team=Lobby,tag=inParkour] unless entity @s[nbt={Inventory:[{Slot:3b,id:"minecraft:compass",Count:1}]}] run replaceitem entity @s hotbar.3 compass{display:{Name:"{\"translate\":\"Return to Checkpoint\",\"color\":\"aqua\",\"bold\":true,\"italic\":false}"}} 1
execute as @a[team=Lobby,tag=inParkour,scores={dropCompass=1..,chkpntCooldown=0}] run tag @s add returnCheckpoint
execute as @a[team=Lobby,tag=inParkour,scores={dropCompass=1..,chkpntCooldown=0}] run scoreboard players set @s chkpntCooldown 1
scoreboard players reset @a dropCompass
execute as @a[team=Lobby,tag=inParkour,scores={chkpntCooldown=0}] if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:compass"}]}] run tag @s add returnCheckpoint
execute as @a[team=Lobby,tag=inParkour,scores={chkpntCooldown=0}] if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:compass"}]}] run scoreboard players set @s chkpntCooldown 1
execute as @a[team=Lobby,tag=inParkour,scores={chkpntCooldown=1}] run tellraw @s ["",{"text":"Returned to Checkpoint ","color":"dark_green"},{"score":{"name":"@s","objective":"checkpoint"},"color":"green","bold":"true"},{"text":".","color":"dark_green"}]
scoreboard players add @a[team=Lobby,tag=inParkour,scores={chkpntCooldown=1..19}] chkpntCooldown 1
scoreboard players set @a[team=Lobby,tag=inParkour,scores={chkpntCooldown=20}] chkpntCooldown 0

#Quit to start
execute as @a[team=Lobby,tag=inParkour] unless entity @s[nbt={Inventory:[{Slot:5b,id:"minecraft:clock",Count:1}]}] run replaceitem entity @s hotbar.5 clock{display:{Name:"{\"translate\":\"Quit to Start\",\"color\":\"yellow\",\"bold\":true,\"italic\":false}"}} 1
execute as @a[team=Lobby,tag=inParkour,scores={dropClock=1..}] run tellraw @s [{"text":"You quit the Parkour. Returning to the start.","color":"red"}]
execute as @a[team=Lobby,tag=inParkour,scores={dropClock=1..}] run tag @s remove inParkour
execute as @a[team=Lobby,scores={dropClock=1..}] run scoreboard players set @s LobbyWarp 7
scoreboard players reset @a dropClock
execute as @a[team=Lobby,tag=inParkour] if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:clock"}]}] run tellraw @s [{"text":"You quit the Parkour. Returning to the start.","color":"red"}]
execute as @a[team=Lobby,tag=inParkour] if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:clock"}]}] run tag @s remove inParkour
execute as @a[team=Lobby] if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:clock"}]}] run scoreboard players set @s LobbyWarp 7

#Quit parkour
execute as @a[team=Lobby,tag=inParkour] unless entity @s[nbt={Inventory:[{Slot:8b,id:"minecraft:barrier",Count:1}]}] run replaceitem entity @s hotbar.8 barrier{display:{Name:"{\"translate\":\"Quit Parkour\",\"color\":\"red\",\"bold\":true,\"italic\":false}"}} 1
execute as @a[team=Lobby,tag=inParkour,scores={dropBarrier=1..}] run tellraw @s [{"text":"You quit the Parkour. Returning to Lobby.","color":"red"}]
execute as @a[team=Lobby,tag=inParkour,scores={dropBarrier=1..}] run tag @s remove inParkour
execute as @a[team=Lobby,scores={dropBarrier=1..}] run scoreboard players set @s LobbyWarp 1
scoreboard players reset @a dropBarrier
execute as @a[team=Lobby,tag=inParkour] if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:barrier"}]}] run tellraw @s [{"text":"You quit the Parkour. Returning to Lobby.","color":"red"}]
execute as @a[team=Lobby,tag=inParkour] if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:barrier"}]}] run tag @s remove inParkour
execute as @a[team=Lobby] if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:barrier"}]}] run scoreboard players set @s LobbyWarp 1

#Clear offhand (necessary for inventory controls)
replaceitem entity @a[team=Lobby] weapon.offhand air

##Invisible players
effect give @a[team=Lobby,tag=inParkour] invisibility 1000000 255 true
effect clear @a[team=Lobby,tag=!inParkour] invisibility

##Boots (non-duel mode)
execute unless entity @e[tag=rr_duel,type=armor_stand,limit=1] run replaceitem entity @a[team=Lobby,tag=inParkour] armor.feet iron_boots{display:{Name:"{\"text\":\"Parkour Boots\",\"color\":\"dark_green\",\"bold\":\"true\",\"italic\":\"false\"}"},Enchantments:[{id:"minecraft:curse_of_binding",lvl:1}],HideFlags:7}

##Safety features
#Only lobby players in parkour mode
tag @a[team=!Lobby,tag=inParkour] remove inParkour
#Don't let non-parkour players on floor (warp back to parkour start)
execute as @a[team=Lobby,tag=!inParkour] at @s if block ~ ~-1 ~ black_concrete run scoreboard players set @s[y=184,dy=16] LobbyWarp 7

##Reset objectives for non-parkour players
scoreboard players reset @a[team=Lobby,tag=!inParkour] checkpoint
scoreboard players reset @a[team=Lobby,tag=!inParkour] chkpntCooldown
scoreboard players reset @a[team=Lobby,tag=!inParkour] parkourTimer
scoreboard players reset @a[team=Lobby,tag=!inParkour] parkourMins
scoreboard players reset @a[team=Lobby,tag=!inParkour] parkourSecs
scoreboard players reset @a[team=Lobby,tag=!inParkour] parkourDeci
scoreboard players reset @a[team=Lobby,tag=!inParkour] parkourDeci2
scoreboard players reset @a[team=Lobby,tag=!inParkour] finalParkourTime