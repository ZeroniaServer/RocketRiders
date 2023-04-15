#######################################################
## PARKOUR: The system behind the Lobby Parkour Area ##
#######################################################

##Start parkour
execute as @a[predicate=custom:indimension,team=Lobby,tag=!inParkour] at @s positioned ~ ~1 ~ if entity @e[type=marker,tag=parkourStart,limit=1,distance=..1.2] run tag @s add startParkour
execute as @a[predicate=custom:indimension,team=Lobby,tag=startParkour] run tellraw @s [{"text":"Parkour Run Started!","color":"dark_green","bold":true}]
execute as @a[predicate=custom:indimension,team=Lobby,tag=startParkour,tag=!hideParkourTips] run tellraw @s [{"text":"- Step on pressure plates to reach ","color":"green"},{"text":"Checkpoints","color":"dark_green"},{"text":".","color":"green"}]
execute as @a[predicate=custom:indimension,team=Lobby,tag=startParkour,tag=!hideParkourTips] run tellraw @s [{"text":"- If you fall on the ground, you go to your last ","color":"green"},{"text":"Checkpoint","color":"dark_green"},{"text":".","color":"green"}]
execute as @a[predicate=custom:indimension,team=Lobby,tag=startParkour,tag=!hideParkourTips] run tellraw @s [{"text":"- The first pressure plate resets your time.","color":"green"}]
execute as @a[predicate=custom:indimension,team=Lobby,tag=startParkour,tag=!hideParkourTips] run tellraw @s [{"text":"- Drop/offhand the compass to ","color":"green"},{"text":"Return to Checkpoint","color":"aqua","bold":true},{"text":".","color":"green"}]
execute as @a[predicate=custom:indimension,team=Lobby,tag=startParkour,tag=!hideParkourTips] run tellraw @s [{"text":"- Drop/offhand the clock to ","color":"green"},{"text":"Quit to Start","color":"yellow","bold":true},{"text":".","color":"green"}]
execute as @a[predicate=custom:indimension,team=Lobby,tag=startParkour,tag=!hideParkourTips] run tellraw @s [{"text":"- Drop/offhand the barrier to ","color":"green"},{"text":"Quit Parkour","color":"red","bold":true},{"text":".","color":"green"}]
execute as @a[predicate=custom:indimension,team=Lobby,tag=startParkour,tag=!hideParkourTips] run tellraw @s ["",{"text":"Click ","color":"dark_green","italic":true},{"text":"[HERE]","color":"green","clickEvent":{"action":"run_command","value":"/trigger hideParkourTips set 1"}},{"text":" to no longer see these instructions.","color":"dark_green","italic":true}]
execute as @a[predicate=custom:indimension,team=Lobby,tag=startParkour] at @s run playsound minecraft:entity.firework_rocket.twinkle_far master @s ~ ~ ~ 1 1
execute as @a[predicate=custom:indimension,team=Lobby,tag=startParkour] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.3
execute as @a[predicate=custom:indimension,team=Lobby,tag=startParkour] at @s run particle firework ~ ~1 ~ 0 0 0 0.1 100 force @s
execute as @a[predicate=custom:indimension,team=Lobby,tag=startParkour] run tag @s add inParkour
execute as @a[predicate=custom:indimension,team=Lobby,tag=startParkour] run tag @s remove startParkour

##Checkpoints
scoreboard players add @a[predicate=custom:indimension,team=Lobby,tag=inParkour] checkpoint 0

#Reach checkpoint
execute as @a[predicate=custom:indimension,team=Lobby,tag=inParkour,scores={checkpoint=0}] at @s positioned ~ ~1 ~ if entity @e[type=marker,tag=parkourC1,limit=1,distance=..1.2] run tag @s add earnCheckpoint
execute as @a[predicate=custom:indimension,team=Lobby,tag=inParkour,scores={checkpoint=1}] at @s positioned ~ ~1 ~ if entity @e[type=marker,tag=parkourC2,limit=1,distance=..1.2] run tag @s add earnCheckpoint
execute as @a[predicate=custom:indimension,team=Lobby,tag=inParkour,scores={checkpoint=2}] at @s positioned ~ ~1 ~ if entity @e[type=marker,tag=parkourC3,limit=1,distance=..1.2] run tag @s add earnCheckpoint

#Visual/Sound effects
execute as @a[predicate=custom:indimension,team=Lobby,tag=earnCheckpoint] run scoreboard players add @s checkpoint 1
execute as @a[predicate=custom:indimension,team=Lobby,tag=earnCheckpoint] at @s run playsound minecraft:entity.firework_rocket.twinkle_far master @s ~ ~ ~ 1 1
execute as @a[predicate=custom:indimension,team=Lobby,tag=earnCheckpoint] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.3
execute as @a[predicate=custom:indimension,team=Lobby,tag=earnCheckpoint] at @s run particle firework ~ ~1 ~ 0 0 0 0.1 100 force @s

#Tellraw messages
execute as @a[predicate=custom:indimension,team=Lobby,tag=earnCheckpoint,scores={parkourSecs=..9,parkourMins=..9}] run tellraw @s ["",{"text":"You've reached Checkpoint ","color":"dark_green"},{"score":{"name":"@s","objective":"checkpoint"},"color":"green","bold":true},{"text":" in ","color":"dark_green"},{"text":"0","color":"green","bold":true},{"score":{"name":"@s","objective":"parkourMins"},"color":"green","bold":true},{"text":":0","color":"green","bold":true},{"score":{"name":"@s","objective":"parkourSecs"},"color":"green","bold":true},{"text":".","color":"green","bold":true},{"score":{"name":"@s","objective":"parkourDeci"},"color":"green","bold":true},{"score":{"name":"@s","objective":"parkourDeci2"},"color":"green","bold":true},{"text":"!","color":"dark_green"}]
execute as @a[predicate=custom:indimension,team=Lobby,tag=earnCheckpoint,scores={parkourSecs=10..,parkourMins=..9}] run tellraw @s ["",{"text":"You've reached Checkpoint ","color":"dark_green"},{"score":{"name":"@s","objective":"checkpoint"},"color":"green","bold":true},{"text":" in ","color":"dark_green"},{"text":"0","color":"green","bold":true},{"score":{"name":"@s","objective":"parkourMins"},"color":"green","bold":true},{"text":":","color":"green","bold":true},{"score":{"name":"@s","objective":"parkourSecs"},"color":"green","bold":true},{"text":".","color":"green","bold":true},{"score":{"name":"@s","objective":"parkourDeci"},"color":"green","bold":true},{"score":{"name":"@s","objective":"parkourDeci2"},"color":"green","bold":true},{"text":"!","color":"dark_green"}]
execute as @a[predicate=custom:indimension,team=Lobby,tag=earnCheckpoint,scores={parkourSecs=..9,parkourMins=10..}] run tellraw @s ["",{"text":"You've reached Checkpoint ","color":"dark_green"},{"score":{"name":"@s","objective":"checkpoint"},"color":"green","bold":true},{"text":" in ","color":"dark_green"},{"score":{"name":"@s","objective":"parkourMins"},"color":"green","bold":true},{"text":":0","color":"green","bold":true},{"score":{"name":"@s","objective":"parkourSecs"},"color":"green","bold":true},{"text":".","color":"green","bold":true},{"score":{"name":"@s","objective":"parkourDeci"},"color":"green","bold":true},{"score":{"name":"@s","objective":"parkourDeci2"},"color":"green","bold":true},{"text":"!","color":"dark_green"}]
execute as @a[predicate=custom:indimension,team=Lobby,tag=earnCheckpoint,scores={parkourSecs=10..,parkourMins=10..}] run tellraw @s ["",{"text":"You've reached Checkpoint ","color":"dark_green"},{"score":{"name":"@s","objective":"checkpoint"},"color":"green","bold":true},{"text":" in ","color":"dark_green"},{"score":{"name":"@s","objective":"parkourMins"},"color":"green","bold":true},{"text":":","color":"green","bold":true},{"score":{"name":"@s","objective":"parkourSecs"},"color":"green","bold":true},{"text":".","color":"green","bold":true},{"score":{"name":"@s","objective":"parkourDeci"},"color":"green","bold":true},{"score":{"name":"@s","objective":"parkourDeci2"},"color":"green","bold":true},{"text":"!","color":"dark_green"}]
tag @a[predicate=custom:indimension,team=Lobby,tag=earnCheckpoint] remove earnCheckpoint

##End parkour
execute as @a[predicate=custom:indimension,team=Lobby,tag=inParkour] at @s positioned ~ ~1 ~ if entity @e[type=area_effect_cloud,tag=parkourEnd,limit=1,distance=..1.2] run tag @s add finishedParkour
execute as @a[predicate=custom:indimension,team=Lobby,tag=inParkour,scores={checkpoint=..2}] at @s positioned ~ ~1 ~ if entity @e[type=area_effect_cloud,tag=parkourEnd,limit=1,distance=..1.2] run tag @s add cheatedParkour
execute as @a[predicate=custom:indimension,team=Lobby,tag=finishedParkour,tag=!cheatedParkour,scores={parkourSecs=..9,parkourMins=..9}] run tellraw @a[predicate=custom:indimension] ["",{"selector":"@s"},{"text":" completed the Parkour in ","color":"dark_green"},{"text":"0","color":"green","bold":true},{"score":{"name":"@s","objective":"parkourMins"},"color":"green","bold":true},{"text":":0","color":"green","bold":true},{"score":{"name":"@s","objective":"parkourSecs"},"color":"green","bold":true},{"text":".","color":"green","bold":true},{"score":{"name":"@s","objective":"parkourDeci"},"color":"green","bold":true},{"score":{"name":"@s","objective":"parkourDeci2"},"color":"green","bold":true},{"text":"!","color":"dark_green"}]
execute as @a[predicate=custom:indimension,team=Lobby,tag=finishedParkour,tag=!cheatedParkour,scores={parkourSecs=10..,parkourMins=..9}] run tellraw @a[predicate=custom:indimension] ["",{"selector":"@s"},{"text":" completed the Parkour in ","color":"dark_green"},{"text":"0","color":"green","bold":true},{"score":{"name":"@s","objective":"parkourMins"},"color":"green","bold":true},{"text":":","color":"green","bold":true},{"score":{"name":"@s","objective":"parkourSecs"},"color":"green","bold":true},{"text":".","color":"green","bold":true},{"score":{"name":"@s","objective":"parkourDeci"},"color":"green","bold":true},{"score":{"name":"@s","objective":"parkourDeci2"},"color":"green","bold":true},{"text":"!","color":"dark_green"}]
execute as @a[predicate=custom:indimension,team=Lobby,tag=finishedParkour,tag=!cheatedParkour,scores={parkourSecs=..9,parkourMins=10..}] run tellraw @a[predicate=custom:indimension] ["",{"selector":"@s"},{"text":" completed the Parkour in ","color":"dark_green"},{"score":{"name":"@s","objective":"parkourMins"},"color":"green","bold":true},{"text":":0","color":"green","bold":true},{"score":{"name":"@s","objective":"parkourSecs"},"color":"green","bold":true},{"text":".","color":"green","bold":true},{"score":{"name":"@s","objective":"parkourDeci"},"color":"green","bold":true},{"score":{"name":"@s","objective":"parkourDeci2"},"color":"green","bold":true},{"text":"!","color":"dark_green"}]
execute as @a[predicate=custom:indimension,team=Lobby,tag=finishedParkour,tag=!cheatedParkour,scores={parkourSecs=10..,parkourMins=10..}] run tellraw @a[predicate=custom:indimension] ["",{"selector":"@s"},{"text":" completed the Parkour in ","color":"dark_green"},{"score":{"name":"@s","objective":"parkourMins"},"color":"green","bold":true},{"text":":","color":"green","bold":true},{"score":{"name":"@s","objective":"parkourSecs"},"color":"green","bold":true},{"text":".","color":"green","bold":true},{"score":{"name":"@s","objective":"parkourDeci"},"color":"green","bold":true},{"score":{"name":"@s","objective":"parkourDeci2"},"color":"green","bold":true},{"text":"!","color":"dark_green"}]

#Visual/Sound effects
execute as @a[predicate=custom:indimension,team=Lobby,tag=finishedParkour,tag=!cheatedParkour] at @s run playsound minecraft:entity.firework_rocket.twinkle_far master @s ~ ~ ~ 1 1
execute as @a[predicate=custom:indimension,team=Lobby,tag=finishedParkour,tag=!cheatedParkour] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.1
execute as @a[predicate=custom:indimension,team=Lobby,tag=finishedParkour,tag=!cheatedParkour] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1.3
execute as @a[predicate=custom:indimension,team=Lobby,tag=finishedParkour,tag=!cheatedParkour] at @s run particle firework ~ ~1 ~ 0 0 0 0.1 100 force @s

#Calculate final time
execute if entity @s[scores={servermode=0}] run scoreboard players set $60 finalParkourTime 60
execute if entity @s[scores={servermode=0}] run scoreboard players set $100 finalParkourTime 100
execute if entity @s[scores={servermode=0}] run scoreboard players set $10 finalParkourTime 10
execute if entity @s[scores={servermode=0}] as @a[predicate=custom:indimension,team=Lobby,tag=finishedParkour,tag=!cheatedParkour] run scoreboard players operation @s parkourMins *= $60 finalParkourTime
execute if entity @s[scores={servermode=0}] as @a[predicate=custom:indimension,team=Lobby,tag=finishedParkour,tag=!cheatedParkour] run scoreboard players operation @s parkourMins *= $100 finalParkourTime
execute if entity @s[scores={servermode=0}] as @a[predicate=custom:indimension,team=Lobby,tag=finishedParkour,tag=!cheatedParkour] run scoreboard players operation @s parkourSecs *= $100 finalParkourTime
execute if entity @s[scores={servermode=0}] as @a[predicate=custom:indimension,team=Lobby,tag=finishedParkour,tag=!cheatedParkour] run scoreboard players operation @s parkourDeci *= $10 finalParkourTime
execute if entity @s[scores={servermode=0}] as @a[predicate=custom:indimension,team=Lobby,tag=finishedParkour,tag=!cheatedParkour] run scoreboard players operation @s finalParkourTime = @s parkourDeci2
execute if entity @s[scores={servermode=0}] as @a[predicate=custom:indimension,team=Lobby,tag=finishedParkour,tag=!cheatedParkour] run scoreboard players operation @s finalParkourTime += @s parkourDeci
execute if entity @s[scores={servermode=0}] as @a[predicate=custom:indimension,team=Lobby,tag=finishedParkour,tag=!cheatedParkour] run scoreboard players operation @s finalParkourTime += @s parkourSecs
execute if entity @s[scores={servermode=0}] as @a[predicate=custom:indimension,team=Lobby,tag=finishedParkour,tag=!cheatedParkour] run scoreboard players operation @s finalParkourTime += @s parkourMins
execute if entity @s[scores={servermode=0}] as @a[predicate=custom:indimension,team=Lobby,tag=finishedParkour,tag=!cheatedParkour] run scoreboard players operation @s parkourMins /= $60 finalParkourTime
execute if entity @s[scores={servermode=0}] as @a[predicate=custom:indimension,team=Lobby,tag=finishedParkour,tag=!cheatedParkour] run scoreboard players operation @s parkourMins /= $100 finalParkourTime
execute if entity @s[scores={servermode=0}] as @a[predicate=custom:indimension,team=Lobby,tag=finishedParkour,tag=!cheatedParkour] run scoreboard players operation @s parkourSecs /= $100 finalParkourTime
execute if entity @s[scores={servermode=0}] as @a[predicate=custom:indimension,team=Lobby,tag=finishedParkour,tag=!cheatedParkour] run scoreboard players operation @s parkourDeci /= $10 finalParkourTime

#First time completion
execute if entity @s[scores={servermode=0}] as @a[predicate=custom:indimension,team=Lobby,tag=finishedParkour,tag=!cheatedParkour,tag=!firstParkour] run scoreboard players operation @s bestParkourTime = @s finalParkourTime
execute if entity @s[scores={servermode=0}] as @a[predicate=custom:indimension,team=Lobby,tag=finishedParkour,tag=!cheatedParkour,tag=!firstParkour] run scoreboard players operation @s bestParkourMins = @s parkourMins
execute if entity @s[scores={servermode=0}] as @a[predicate=custom:indimension,team=Lobby,tag=finishedParkour,tag=!cheatedParkour,tag=!firstParkour] run scoreboard players operation @s bestParkourSecs = @s parkourSecs
execute if entity @s[scores={servermode=0}] as @a[predicate=custom:indimension,team=Lobby,tag=finishedParkour,tag=!cheatedParkour,tag=!firstParkour] run scoreboard players operation @s bestParkourDeci = @s parkourDeci
execute if entity @s[scores={servermode=0}] as @a[predicate=custom:indimension,team=Lobby,tag=finishedParkour,tag=!cheatedParkour,tag=!firstParkour] run scoreboard players operation @s bestParkourDeci2 = @s parkourDeci2

#Repeat completion
execute if entity @s[scores={servermode=0}] as @a[predicate=custom:indimension,team=Lobby,tag=finishedParkour,tag=!cheatedParkour,tag=firstParkour] if score @s finalParkourTime < @s bestParkourTime run tellraw @s [{"text":"That's a new personal best time!","color":"green","italic":true}]
execute if entity @s[scores={servermode=0}] as @a[predicate=custom:indimension,team=Lobby,tag=finishedParkour,tag=!cheatedParkour,tag=firstParkour] if score @s finalParkourTime < @s bestParkourTime run scoreboard players operation @s bestParkourMins = @s parkourMins
execute if entity @s[scores={servermode=0}] as @a[predicate=custom:indimension,team=Lobby,tag=finishedParkour,tag=!cheatedParkour,tag=firstParkour] if score @s finalParkourTime < @s bestParkourTime run scoreboard players operation @s bestParkourSecs = @s parkourSecs
execute if entity @s[scores={servermode=0}] as @a[predicate=custom:indimension,team=Lobby,tag=finishedParkour,tag=!cheatedParkour,tag=firstParkour] if score @s finalParkourTime < @s bestParkourTime run scoreboard players operation @s bestParkourDeci = @s parkourDeci
execute if entity @s[scores={servermode=0}] as @a[predicate=custom:indimension,team=Lobby,tag=finishedParkour,tag=!cheatedParkour,tag=firstParkour] if score @s finalParkourTime < @s bestParkourTime run scoreboard players operation @s bestParkourDeci2 = @s parkourDeci2
execute if entity @s[scores={servermode=0}] as @a[predicate=custom:indimension,team=Lobby,tag=finishedParkour,tag=!cheatedParkour,tag=firstParkour] if score @s finalParkourTime < @s bestParkourTime run scoreboard players operation @s bestParkourTime = @s finalParkourTime

#Store in leaderboard
execute if entity @s[scores={servermode=0}] as @a[predicate=custom:indimension,team=Lobby,tag=finishedParkour,tag=!cheatedParkour] if score @e[type=area_effect_cloud,tag=ParkourTime,limit=1] bestParkourTime > @s finalParkourTime at @s run function lobby:parkour/updatelb

#Notify cheaters
execute as @a[predicate=custom:indimension,team=Lobby,tag=cheatedParkour] run tellraw @s ["",{"text":"You skipped a checkpoint, so your Parkour run was invalidated.","color":"red"}]
execute as @a[predicate=custom:indimension,team=Lobby,tag=cheatedParkour] at @s run playsound minecraft:block.beacon.deactivate master @s ~ ~ ~ 1 1

#Remove tags + give advancement
execute if entity @s[scores={servermode=0}] as @a[predicate=custom:indimension,team=Lobby,tag=finishedParkour,tag=!cheatedParkour] run advancement grant @s only 2811iaj1:endparkour
execute if entity @s[scores={servermode=0}] as @a[predicate=custom:indimension,team=Lobby,tag=finishedParkour,tag=!cheatedParkour] run tag @s add firstParkour
execute as @a[predicate=custom:indimension,team=Lobby,tag=finishedParkour] run tag @s remove inParkour
execute as @a[predicate=custom:indimension,team=Lobby,tag=finishedParkour] run tag @s remove cheatedParkour
execute as @a[predicate=custom:indimension,team=Lobby,tag=finishedParkour] run tag @s remove finishedParkour

##Return to checkpoint
#If you fall on the floor, you return to your last checkpoint automatically
execute as @a[predicate=custom:indimension,team=Lobby,tag=inParkour] at @s if block ~ ~-1 ~ black_concrete run tag @s[y=184,dy=16] add returnCheckpoint
execute as @a[predicate=custom:indimension,team=Lobby,tag=inParkour] at @s if block ~-0.3 ~-1 ~ black_concrete run tag @s[y=184,dy=16] add returnCheckpoint
execute as @a[predicate=custom:indimension,team=Lobby,tag=inParkour] at @s if block ~0.3 ~-1 ~ black_concrete run tag @s[y=184,dy=16] add returnCheckpoint
execute as @a[predicate=custom:indimension,team=Lobby,tag=inParkour] at @s if block ~ ~-1 ~-0.3 black_concrete run tag @s[y=184,dy=16] add returnCheckpoint
execute as @a[predicate=custom:indimension,team=Lobby,tag=inParkour] at @s if block ~ ~-1 ~0.3 black_concrete run tag @s[y=184,dy=16] add returnCheckpoint
execute as @a[predicate=custom:indimension,team=Lobby,tag=inParkour] at @s if block ~0.3 ~-1 ~0.3 black_concrete run tag @s[y=184,dy=16] add returnCheckpoint
execute as @a[predicate=custom:indimension,team=Lobby,tag=inParkour] at @s if block ~-0.3 ~-1 ~0.3 black_concrete run tag @s[y=184,dy=16] add returnCheckpoint
execute as @a[predicate=custom:indimension,team=Lobby,tag=inParkour] at @s if block ~-0.3 ~-1 ~-0.3 black_concrete run tag @s[y=184,dy=16] add returnCheckpoint
execute as @a[predicate=custom:indimension,team=Lobby,tag=inParkour] at @s if block ~0.3 ~-1 ~-0.3 black_concrete run tag @s[y=184,dy=16] add returnCheckpoint
execute as @a[predicate=custom:indimension,team=Lobby,tag=inParkour,tag=returnCheckpoint,scores={checkpoint=0}] run tp @s -31 193 17 0 0
execute as @a[predicate=custom:indimension,team=Lobby,tag=inParkour,tag=returnCheckpoint,scores={checkpoint=1}] run tp @s -28 196 68 0 0
execute as @a[predicate=custom:indimension,team=Lobby,tag=inParkour,tag=returnCheckpoint,scores={checkpoint=2}] run tp @s -13 199 58 -90 0
execute as @a[predicate=custom:indimension,team=Lobby,tag=inParkour,tag=returnCheckpoint,scores={checkpoint=3}] run tp @s -16 199 93 90 0
execute as @a[predicate=custom:indimension,team=Lobby,tag=inParkour,tag=returnCheckpoint] at @s run playsound minecraft:entity.zombie_villager.converted master @s ~ ~ ~ 1 2
execute as @a[predicate=custom:indimension,team=Lobby,tag=inParkour,tag=returnCheckpoint] run tag @s remove returnCheckpoint

##Scoreboard timer
scoreboard players add @a[predicate=custom:indimension,team=Lobby,tag=inParkour] parkourTimer 1
scoreboard players add @a[predicate=custom:indimension,team=Lobby,tag=inParkour] parkourSecs 0
scoreboard players add @a[predicate=custom:indimension,team=Lobby,tag=inParkour] parkourMins 0
scoreboard players add @a[predicate=custom:indimension,team=Lobby,tag=inParkour,scores={parkourTimer=20}] parkourSecs 1
scoreboard players set @a[predicate=custom:indimension,team=Lobby,tag=inParkour,scores={parkourTimer=20}] parkourTimer 0
scoreboard players add @a[predicate=custom:indimension,team=Lobby,tag=inParkour,scores={parkourSecs=60}] parkourMins 1
scoreboard players set @a[predicate=custom:indimension,team=Lobby,tag=inParkour,scores={parkourSecs=60}] parkourSecs 0

#Decimals
scoreboard players set $2 parkourDeci 2
execute as @a[predicate=custom:indimension,team=Lobby,tag=inParkour] run scoreboard players operation @s parkourDeci = @s parkourTimer
execute as @a[predicate=custom:indimension,team=Lobby,tag=inParkour] run scoreboard players operation @s parkourDeci /= $2 parkourDeci
scoreboard players add @a[predicate=custom:indimension,team=Lobby,tag=inParkour] parkourDeci2 5
scoreboard players set @a[predicate=custom:indimension,team=Lobby,tag=inParkour,scores={parkourDeci2=10}] parkourDeci2 0

##Reset time
tag @a[predicate=custom:indimension,team=Lobby,tag=inParkour,tag=onResetPlate] remove onResetPlate
execute as @a[predicate=custom:indimension,team=Lobby,tag=inParkour] at @s if entity @s[x=-31,y=193,z=18,dx=0,dy=0,dz=0] run tag @s add onResetPlate
scoreboard players set @a[predicate=custom:indimension,team=Lobby,tag=inParkour,tag=!timeReset,tag=onResetPlate] parkourSecs 0
scoreboard players set @a[predicate=custom:indimension,team=Lobby,tag=inParkour,tag=!timeReset,tag=onResetPlate] parkourMins 0
scoreboard players set @a[predicate=custom:indimension,team=Lobby,tag=inParkour,tag=!timeReset,tag=onResetPlate] parkourDeci 0
scoreboard players set @a[predicate=custom:indimension,team=Lobby,tag=inParkour,tag=!timeReset,tag=onResetPlate] parkourDeci2 0
scoreboard players set @a[predicate=custom:indimension,team=Lobby,tag=inParkour,tag=!timeReset,tag=onResetPlate] parkourTimer 0
scoreboard players set @a[predicate=custom:indimension,team=Lobby,tag=inParkour,tag=!timeReset,tag=onResetPlate] checkpoint 0
tag @a[predicate=custom:indimension,team=Lobby,tag=inParkour,tag=!timeReset,tag=onResetPlate] add timeReset
tag @a[predicate=custom:indimension,team=Lobby,tag=inParkour,tag=timeReset,tag=!onResetPlate] remove timeReset

##Display actionbar
execute as @a[predicate=custom:indimension,team=Lobby,tag=inParkour,scores={parkourSecs=..9,parkourMins=..9}] run title @s actionbar ["",{"text":"Checkpoint: ","color":"dark_green"},{"score":{"name":"@s","objective":"checkpoint"},"bold":true,"color":"green"},{"text":" [","color":"dark_green"},{"text":"0","bold":true,"color":"green"},{"score":{"name":"@s","objective":"parkourMins"},"bold":true,"color":"green"},{"text":":","bold":true,"color":"green"},{"text":"0","bold":true,"color":"green"},{"score":{"name":"@s","objective":"parkourSecs"},"bold":true,"color":"green"},{"text":".","bold":true,"color":"green"},{"score":{"name":"@s","objective":"parkourDeci"},"bold":true,"color":"green"},{"score":{"name":"@s","objective":"parkourDeci2"},"color":"green","bold":true},{"text":"]","color":"dark_green"}]
execute as @a[predicate=custom:indimension,team=Lobby,tag=inParkour,scores={parkourSecs=10..,parkourMins=..9}] run title @s actionbar ["",{"text":"Checkpoint: ","color":"dark_green"},{"score":{"name":"@s","objective":"checkpoint"},"bold":true,"color":"green"},{"text":" [","color":"dark_green"},{"text":"0","bold":true,"color":"green"},{"score":{"name":"@s","objective":"parkourMins"},"bold":true,"color":"green"},{"text":":","bold":true,"color":"green"},{"score":{"name":"@s","objective":"parkourSecs"},"bold":true,"color":"green"},{"text":".","bold":true,"color":"green"},{"score":{"name":"@s","objective":"parkourDeci"},"bold":true,"color":"green"},{"score":{"name":"@s","objective":"parkourDeci2"},"color":"green","bold":true},{"text":"]","color":"dark_green"}]
execute as @a[predicate=custom:indimension,team=Lobby,tag=inParkour,scores={parkourSecs=..9,parkourMins=10..}] run title @s actionbar ["",{"text":"Checkpoint: ","color":"dark_green"},{"score":{"name":"@s","objective":"checkpoint"},"bold":true,"color":"green"},{"text":" [","color":"dark_green"},{"score":{"name":"@s","objective":"parkourMins"},"bold":true,"color":"green"},{"text":":","bold":true,"color":"green"},{"text":"0","bold":true,"color":"green"},{"score":{"name":"@s","objective":"parkourSecs"},"bold":true,"color":"green"},{"text":".","bold":true,"color":"green"},{"score":{"name":"@s","objective":"parkourDeci"},"bold":true,"color":"green"},{"score":{"name":"@s","objective":"parkourDeci2"},"color":"green","bold":true},{"text":"]","color":"dark_green"}]
execute as @a[predicate=custom:indimension,team=Lobby,tag=inParkour,scores={parkourSecs=10..,parkourMins=10..}] run title @s actionbar ["",{"text":"Checkpoint: ","color":"dark_green"},{"score":{"name":"@s","objective":"checkpoint"},"bold":true,"color":"green"},{"text":" [","color":"dark_green"},{"score":{"name":"@s","objective":"parkourMins"},"bold":true,"color":"green"},{"text":":","bold":true,"color":"green"},{"score":{"name":"@s","objective":"parkourSecs"},"bold":true,"color":"green"},{"text":".","bold":true,"color":"green"},{"score":{"name":"@s","objective":"parkourDeci"},"bold":true,"color":"green"},{"score":{"name":"@s","objective":"parkourDeci2"},"color":"green","bold":true},{"text":"]","color":"dark_green"}]

##Inventory controls (offhand and drop)
#Return to last checkpoint (includes 1 second cooldown)
scoreboard players add @a[predicate=custom:indimension,team=Lobby,tag=inParkour] chkpntCooldown 0
execute as @a[predicate=custom:indimension,team=Lobby,tag=inParkour] unless entity @s[nbt={Inventory:[{Slot:3b,id:"minecraft:compass",Count:1b}]}] run item replace entity @s hotbar.3 with compass{display:{Name:'[{"translate":"Return to Checkpoint","color":"aqua","bold":true,"italic":false},{"translate":" (drop or offhand to use)","color":"white","bold":false,"italic":false}]'}} 1
execute as @a[predicate=custom:indimension,team=Lobby,tag=inParkour,scores={dropCompass=1..,chkpntCooldown=0}] run tag @s add returnCheckpoint
execute as @a[predicate=custom:indimension,team=Lobby,tag=inParkour,scores={dropCompass=1..,chkpntCooldown=0}] run scoreboard players set @s chkpntCooldown 1
scoreboard players reset @a[predicate=custom:indimension] dropCompass
execute as @a[predicate=custom:indimension,team=Lobby,tag=inParkour,scores={chkpntCooldown=0}] if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:compass"}]}] run tag @s add returnCheckpoint
execute as @a[predicate=custom:indimension,team=Lobby,tag=inParkour,scores={chkpntCooldown=0}] if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:compass"}]}] run scoreboard players set @s chkpntCooldown 1
execute as @a[predicate=custom:indimension,team=Lobby,tag=inParkour,scores={chkpntCooldown=1}] run tellraw @s ["",{"text":"Returned to Checkpoint ","color":"dark_green"},{"score":{"name":"@s","objective":"checkpoint"},"color":"green","bold":true},{"text":".","color":"dark_green"}]
scoreboard players add @a[predicate=custom:indimension,team=Lobby,tag=inParkour,scores={chkpntCooldown=1..19}] chkpntCooldown 1
scoreboard players set @a[predicate=custom:indimension,team=Lobby,tag=inParkour,scores={chkpntCooldown=20}] chkpntCooldown 0

#Quit to start
execute as @a[predicate=custom:indimension,team=Lobby,tag=inParkour] unless entity @s[nbt={Inventory:[{Slot:5b,id:"minecraft:clock",Count:1b}]}] run item replace entity @s hotbar.5 with clock{display:{Name:'[{"translate":"Quit to Start","color":"yellow","bold":true,"italic":false},{"translate":" (drop or offhand to use)","color":"white","bold":false,"italic":false}]'}} 1
execute as @a[predicate=custom:indimension,team=Lobby,tag=inParkour,scores={dropClock=1..}] run tellraw @s [{"text":"You quit the Parkour. Returning to the start.","color":"red"}]
execute as @a[predicate=custom:indimension,team=Lobby,tag=inParkour,scores={dropClock=1..}] run tag @s remove inParkour
execute as @a[predicate=custom:indimension,team=Lobby,scores={dropClock=1..}] run scoreboard players set @s LobbyWarp 7
scoreboard players reset @a[predicate=custom:indimension] dropClock
execute as @a[predicate=custom:indimension,team=Lobby,tag=inParkour] if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:clock"}]}] run tellraw @s [{"text":"You quit the Parkour. Returning to the start.","color":"red"}]
execute as @a[predicate=custom:indimension,team=Lobby,tag=inParkour] if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:clock"}]}] run tag @s remove inParkour
execute as @a[predicate=custom:indimension,team=Lobby] if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:clock"}]}] run scoreboard players set @s LobbyWarp 7

#Quit parkour
execute as @a[predicate=custom:indimension,team=Lobby,tag=inParkour] unless entity @s[nbt={Inventory:[{Slot:8b,id:"minecraft:barrier",Count:1b}]}] run item replace entity @s hotbar.8 with barrier{display:{Name:'[{"translate":"Quit Parkour","color":"red","bold":true,"italic":false},{"translate":" (drop or offhand to use)","color":"white","bold":false,"italic":false}]'}} 1
execute as @a[predicate=custom:indimension,team=Lobby,tag=inParkour,scores={dropBarrier=1..}] run tellraw @s [{"text":"You quit the Parkour. Returning to the Lobby.","color":"red"}]
execute as @a[predicate=custom:indimension,team=Lobby,tag=inParkour,scores={dropBarrier=1..}] run tag @s remove inParkour
execute as @a[predicate=custom:indimension,team=Lobby,scores={dropBarrier=1..}] run scoreboard players set @s LobbyWarp 1
scoreboard players reset @a[predicate=custom:indimension] dropBarrier
execute as @a[predicate=custom:indimension,team=Lobby,tag=inParkour] if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:barrier"}]}] run tellraw @s [{"text":"You quit the Parkour. Returning to the Lobby.","color":"red"}]
execute as @a[predicate=custom:indimension,team=Lobby,tag=inParkour] if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:barrier"}]}] run tag @s remove inParkour
execute as @a[predicate=custom:indimension,team=Lobby] if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:barrier"}]}] run scoreboard players set @s LobbyWarp 1

#Clear offhand (necessary for inventory controls)
item replace entity @a[predicate=custom:indimension,team=Lobby] weapon.offhand with air

##Invisible players within range
execute as @a[predicate=custom:indimension,team=Lobby,tag=inParkour] at @s if entity @a[predicate=custom:indimension,team=Lobby,tag=inParkour,distance=0.0001..8] run effect give @s invisibility infinite 255 true
execute as @a[predicate=custom:indimension,team=Lobby,tag=inParkour] at @s unless entity @a[predicate=custom:indimension,team=Lobby,tag=inParkour,distance=0.0001..8] run effect clear @s invisibility
effect clear @a[predicate=custom:indimension,team=Lobby,tag=!inParkour] invisibility

##Boots (non-duel mode)
execute unless entity @e[type=armor_stand,tag=rr_duel,limit=1] run item replace entity @a[predicate=custom:indimension,team=Lobby,tag=inParkour,nbt=!{Inventory:[{id:"minecraft:iron_boots",Slot:100b}]}] armor.feet with iron_boots{display:{Name:'{"text":"Parkour Boots","color":"dark_green","bold":true,"italic":false}'},Enchantments:[{id:"minecraft:binding_curse",lvl:1}],HideFlags:7}
execute if entity @s[tag=noYZELO] run item replace entity @a[predicate=custom:indimension,team=Lobby,tag=inParkour,nbt=!{Inventory:[{id:"minecraft:iron_boots",Slot:100b}]}] armor.feet with iron_boots{display:{Name:'{"text":"Parkour Boots","color":"dark_green","bold":true,"italic":false}'},Enchantments:[{id:"minecraft:binding_curse",lvl:1}],HideFlags:7}

##Safety features
#Only lobby players in Parkour mode
effect clear @a[predicate=custom:indimension,team=!Lobby,tag=inParkour] invisibility
tag @a[predicate=custom:indimension,team=!Lobby,tag=inParkour] remove inParkour
#Don't let non-Parkour players on floor (warp back to parkour start)
execute as @a[predicate=custom:indimension,team=Lobby,tag=!inParkour] at @s if block ~ ~-1 ~ black_concrete run scoreboard players set @s[y=184,dy=16] LobbyWarp 7
execute as @a[predicate=custom:indimension,team=Lobby,tag=!inParkour] at @s if block ~-0.3 ~-1 ~ black_concrete run scoreboard players set @s[y=184,dy=16] LobbyWarp 7
execute as @a[predicate=custom:indimension,team=Lobby,tag=!inParkour] at @s if block ~0.3 ~-1 ~ black_concrete run scoreboard players set @s[y=184,dy=16] LobbyWarp 7
execute as @a[predicate=custom:indimension,team=Lobby,tag=!inParkour] at @s if block ~ ~-1 ~-0.3 black_concrete run scoreboard players set @s[y=184,dy=16] LobbyWarp 7
execute as @a[predicate=custom:indimension,team=Lobby,tag=!inParkour] at @s if block ~ ~-1 ~0.3 black_concrete run scoreboard players set @s[y=184,dy=16] LobbyWarp 7
execute as @a[predicate=custom:indimension,team=Lobby,tag=!inParkour] at @s if block ~0.3 ~-1 ~0.3 black_concrete run scoreboard players set @s[y=184,dy=16] LobbyWarp 7
execute as @a[predicate=custom:indimension,team=Lobby,tag=!inParkour] at @s if block ~-0.3 ~-1 ~0.3 black_concrete run scoreboard players set @s[y=184,dy=16] LobbyWarp 7
execute as @a[predicate=custom:indimension,team=Lobby,tag=!inParkour] at @s if block ~-0.3 ~-1 ~-0.3 black_concrete run scoreboard players set @s[y=184,dy=16] LobbyWarp 7
execute as @a[predicate=custom:indimension,team=Lobby,tag=!inParkour] at @s if block ~0.3 ~-1 ~-0.3 black_concrete run scoreboard players set @s[y=184,dy=16] LobbyWarp 7

##Reset objectives/tags for non-parkour players
scoreboard players reset @a[predicate=custom:indimension,tag=!inParkour] checkpoint
scoreboard players reset @a[predicate=custom:indimension,tag=!inParkour] chkpntCooldown
scoreboard players reset @a[predicate=custom:indimension,tag=!inParkour] parkourTimer
scoreboard players reset @a[predicate=custom:indimension,tag=!inParkour] parkourMins
scoreboard players reset @a[predicate=custom:indimension,tag=!inParkour] parkourSecs
scoreboard players reset @a[predicate=custom:indimension,tag=!inParkour] parkourDeci
scoreboard players reset @a[predicate=custom:indimension,tag=!inParkour] parkourDeci2
scoreboard players reset @a[predicate=custom:indimension,tag=!inParkour] finalParkourTime
tag @a[predicate=custom:indimension,tag=!inParkour] remove onResetPlate
tag @a[predicate=custom:indimension,tag=!inParkour] remove timeReset

##Handle hide tips trigger
scoreboard players enable @a[predicate=custom:indimension,team=Lobby,tag=!hideParkourTips] hideParkourTips
execute as @a[predicate=custom:indimension,team=!Lobby] run trigger hideParkourTips set 0
execute as @a[predicate=custom:indimension,team=Lobby,tag=hideParkourTips] run trigger hideParkourTips set 0
execute as @a[predicate=custom:indimension,team=Lobby,scores={hideParkourTips=1..}] run tellraw @s [{"text":"You will no longer see Parkour instructions.","color":"red"}]
execute as @a[predicate=custom:indimension,team=Lobby,scores={hideParkourTips=1..}] run tag @s add hideParkourTips
scoreboard players set @a[predicate=custom:indimension] hideParkourTips 0

##Return to Lobby Pad
execute as @e[type=area_effect_cloud,tag=parkourReturn] at @s if score $dust CmdData matches 1 run particle falling_dust minecraft:green_concrete ~ ~2 ~ 0.5 1 0.5 0.1 5 force @a[predicate=custom:indimension,predicate=!custom:belowroof]
execute as @e[type=area_effect_cloud,tag=parkourReturn] at @s positioned ~ ~ ~ as @a[predicate=custom:indimension,team=Lobby,distance=..2] run trigger LobbyWarp set 1