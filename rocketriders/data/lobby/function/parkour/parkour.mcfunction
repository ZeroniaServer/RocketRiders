#######################################################
## PARKOUR: The system behind the Lobby Parkour Area ##
#######################################################

##Start parkour
execute as @a[x=0,predicate=custom:team/lobby,tag=!inParkour] at @s positioned ~ ~1 ~ if entity @e[type=marker,tag=parkourStart,limit=1,distance=..1.2] run tag @s add startParkour
execute as @a[x=0,predicate=custom:team/lobby,tag=startParkour] run tellraw @s [{"text":"Parkour Run Started!","color":"dark_green","bold":true}]
execute as @a[x=0,predicate=custom:team/lobby,tag=startParkour,tag=!hideParkourTips] run tellraw @s [{"text":"- Step on pressure plates to reach ","color":"green"},{"text":"Checkpoints","color":"dark_green"},{"text":".","color":"green"}]
execute as @a[x=0,predicate=custom:team/lobby,tag=startParkour,tag=!hideParkourTips] run tellraw @s [{"text":"- If you fall on the ground, you go to your last ","color":"green"},{"text":"Checkpoint","color":"dark_green"},{"text":".","color":"green"}]
execute as @a[x=0,predicate=custom:team/lobby,tag=startParkour,tag=!hideParkourTips] run tellraw @s [{"text":"- The first pressure plate resets your time.","color":"green"}]
execute as @a[x=0,predicate=custom:team/lobby,tag=startParkour,tag=!hideParkourTips] run tellraw @s [{"text":"- Use the compass to ","color":"green"},{"text":"Return to Checkpoint","color":"aqua","bold":true},{"text":".","color":"green"}]
execute as @a[x=0,predicate=custom:team/lobby,tag=startParkour,tag=!hideParkourTips] run tellraw @s [{"text":"- Use the clock to ","color":"green"},{"text":"Return to Start","color":"yellow","bold":true},{"text":".","color":"green"}]
execute as @a[x=0,predicate=custom:team/lobby,tag=startParkour,tag=!hideParkourTips] run tellraw @s [{"text":"- Use the barrier to ","color":"green"},{"text":"Quit Parkour","color":"red","bold":true},{"text":".","color":"green"}]
execute as @a[x=0,predicate=custom:team/lobby,tag=startParkour,tag=!hideParkourTips] run tellraw @s ["",{"text":"Click ","color":"dark_green","italic":true},{"text":"[HERE]","color":"green","click_event":{"action":"run_command","command":"/trigger toggle_parkour_instructions set 1"},"hover_event":{"action":"show_text","value":{"color":"green","text":"Click to stop seeing parkour instructions"}}},{"text":" to no longer see these instructions.","color":"dark_green","italic":true}]
execute as @a[x=0,predicate=custom:team/lobby,tag=startParkour] at @s run playsound minecraft:entity.firework_rocket.twinkle_far master @s ~ ~ ~ 1 1
execute as @a[x=0,predicate=custom:team/lobby,tag=startParkour] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.3
execute as @a[x=0,predicate=custom:team/lobby,tag=startParkour,tag=!hideParticles] at @s run particle firework ~ ~1 ~ 0 0 0 0.1 100 force @s
execute as @a[x=0,predicate=custom:team/lobby,tag=startParkour] run tag @s add inParkour
execute as @a[x=0,predicate=custom:team/lobby,tag=startParkour] run tag @s remove startParkour

##Checkpoints
scoreboard players add @a[x=0,predicate=custom:team/lobby,tag=inParkour] checkpoint 0

#Reach checkpoint
execute as @a[x=0,predicate=custom:team/lobby,tag=inParkour,scores={checkpoint=0}] at @s positioned ~ ~1 ~ if entity @e[type=marker,tag=parkourC1,limit=1,distance=..1.2] run tag @s add earnCheckpoint
execute as @a[x=0,predicate=custom:team/lobby,tag=inParkour,scores={checkpoint=1}] at @s positioned ~ ~1 ~ if entity @e[type=marker,tag=parkourC2,limit=1,distance=..1.2] run tag @s add earnCheckpoint
execute as @a[x=0,predicate=custom:team/lobby,tag=inParkour,scores={checkpoint=2}] at @s positioned ~ ~1 ~ if entity @e[type=marker,tag=parkourC3,limit=1,distance=..1.2] run tag @s add earnCheckpoint

#Visual/Sound effects
execute as @a[x=0,predicate=custom:team/lobby,tag=earnCheckpoint] run scoreboard players add @s checkpoint 1
execute as @a[x=0,predicate=custom:team/lobby,tag=earnCheckpoint] at @s run playsound minecraft:entity.firework_rocket.twinkle_far master @s ~ ~ ~ 1 1
execute as @a[x=0,predicate=custom:team/lobby,tag=earnCheckpoint] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.3
execute as @a[x=0,predicate=custom:team/lobby,tag=earnCheckpoint,tag=!hideParticles] at @s run particle firework ~ ~1 ~ 0 0 0 0.1 100 force @s

#Tellraw messages
execute as @a[x=0,predicate=custom:team/lobby,tag=earnCheckpoint,scores={parkourSecs=..9,parkourMins=..9}] run tellraw @s ["",{"text":"You've reached Checkpoint ","color":"dark_green"},{"score":{"name":"@s","objective":"checkpoint"},"color":"green","bold":true},{"text":" in ","color":"dark_green"},{"text":"0","color":"green","bold":true},{"score":{"name":"@s","objective":"parkourMins"},"color":"green","bold":true},{"text":":0","color":"green","bold":true},{"score":{"name":"@s","objective":"parkourSecs"},"color":"green","bold":true},{"text":".","color":"green","bold":true},{"score":{"name":"@s","objective":"parkourDeci"},"color":"green","bold":true},{"score":{"name":"@s","objective":"parkourDeci2"},"color":"green","bold":true},{"text":"!","color":"dark_green"}]
execute as @a[x=0,predicate=custom:team/lobby,tag=earnCheckpoint,scores={parkourSecs=10..,parkourMins=..9}] run tellraw @s ["",{"text":"You've reached Checkpoint ","color":"dark_green"},{"score":{"name":"@s","objective":"checkpoint"},"color":"green","bold":true},{"text":" in ","color":"dark_green"},{"text":"0","color":"green","bold":true},{"score":{"name":"@s","objective":"parkourMins"},"color":"green","bold":true},{"text":":","color":"green","bold":true},{"score":{"name":"@s","objective":"parkourSecs"},"color":"green","bold":true},{"text":".","color":"green","bold":true},{"score":{"name":"@s","objective":"parkourDeci"},"color":"green","bold":true},{"score":{"name":"@s","objective":"parkourDeci2"},"color":"green","bold":true},{"text":"!","color":"dark_green"}]
execute as @a[x=0,predicate=custom:team/lobby,tag=earnCheckpoint,scores={parkourSecs=..9,parkourMins=10..}] run tellraw @s ["",{"text":"You've reached Checkpoint ","color":"dark_green"},{"score":{"name":"@s","objective":"checkpoint"},"color":"green","bold":true},{"text":" in ","color":"dark_green"},{"score":{"name":"@s","objective":"parkourMins"},"color":"green","bold":true},{"text":":0","color":"green","bold":true},{"score":{"name":"@s","objective":"parkourSecs"},"color":"green","bold":true},{"text":".","color":"green","bold":true},{"score":{"name":"@s","objective":"parkourDeci"},"color":"green","bold":true},{"score":{"name":"@s","objective":"parkourDeci2"},"color":"green","bold":true},{"text":"!","color":"dark_green"}]
execute as @a[x=0,predicate=custom:team/lobby,tag=earnCheckpoint,scores={parkourSecs=10..,parkourMins=10..}] run tellraw @s ["",{"text":"You've reached Checkpoint ","color":"dark_green"},{"score":{"name":"@s","objective":"checkpoint"},"color":"green","bold":true},{"text":" in ","color":"dark_green"},{"score":{"name":"@s","objective":"parkourMins"},"color":"green","bold":true},{"text":":","color":"green","bold":true},{"score":{"name":"@s","objective":"parkourSecs"},"color":"green","bold":true},{"text":".","color":"green","bold":true},{"score":{"name":"@s","objective":"parkourDeci"},"color":"green","bold":true},{"score":{"name":"@s","objective":"parkourDeci2"},"color":"green","bold":true},{"text":"!","color":"dark_green"}]
tag @a[x=0,predicate=custom:team/lobby,tag=earnCheckpoint] remove earnCheckpoint

##End parkour
execute as @a[x=0,predicate=custom:team/lobby,tag=inParkour] run tag @s[x=67.5,y=201.0,z=91.5,distance=..1.2] add finishedParkour
execute as @a[x=0,predicate=custom:team/lobby,tag=inParkour,scores={checkpoint=..2}] run tag @s[x=67.5,y=201.0,z=91.5,distance=..1.2] add cheatedParkour
execute as @a[x=0,predicate=custom:team/lobby,tag=finishedParkour,tag=!cheatedParkour,scores={parkourSecs=..9,parkourMins=..9}] run tellraw @a[x=0] ["",{"selector":"@s"},{"text":" completed the Parkour in ","color":"dark_green"},{"text":"0","color":"green","bold":true},{"score":{"name":"@s","objective":"parkourMins"},"color":"green","bold":true},{"text":":0","color":"green","bold":true},{"score":{"name":"@s","objective":"parkourSecs"},"color":"green","bold":true},{"text":".","color":"green","bold":true},{"score":{"name":"@s","objective":"parkourDeci"},"color":"green","bold":true},{"score":{"name":"@s","objective":"parkourDeci2"},"color":"green","bold":true},{"text":"!","color":"dark_green"}]
execute as @a[x=0,predicate=custom:team/lobby,tag=finishedParkour,tag=!cheatedParkour,scores={parkourSecs=10..,parkourMins=..9}] run tellraw @a[x=0] ["",{"selector":"@s"},{"text":" completed the Parkour in ","color":"dark_green"},{"text":"0","color":"green","bold":true},{"score":{"name":"@s","objective":"parkourMins"},"color":"green","bold":true},{"text":":","color":"green","bold":true},{"score":{"name":"@s","objective":"parkourSecs"},"color":"green","bold":true},{"text":".","color":"green","bold":true},{"score":{"name":"@s","objective":"parkourDeci"},"color":"green","bold":true},{"score":{"name":"@s","objective":"parkourDeci2"},"color":"green","bold":true},{"text":"!","color":"dark_green"}]
execute as @a[x=0,predicate=custom:team/lobby,tag=finishedParkour,tag=!cheatedParkour,scores={parkourSecs=..9,parkourMins=10..}] run tellraw @a[x=0] ["",{"selector":"@s"},{"text":" completed the Parkour in ","color":"dark_green"},{"score":{"name":"@s","objective":"parkourMins"},"color":"green","bold":true},{"text":":0","color":"green","bold":true},{"score":{"name":"@s","objective":"parkourSecs"},"color":"green","bold":true},{"text":".","color":"green","bold":true},{"score":{"name":"@s","objective":"parkourDeci"},"color":"green","bold":true},{"score":{"name":"@s","objective":"parkourDeci2"},"color":"green","bold":true},{"text":"!","color":"dark_green"}]
execute as @a[x=0,predicate=custom:team/lobby,tag=finishedParkour,tag=!cheatedParkour,scores={parkourSecs=10..,parkourMins=10..}] run tellraw @a[x=0] ["",{"selector":"@s"},{"text":" completed the Parkour in ","color":"dark_green"},{"score":{"name":"@s","objective":"parkourMins"},"color":"green","bold":true},{"text":":","color":"green","bold":true},{"score":{"name":"@s","objective":"parkourSecs"},"color":"green","bold":true},{"text":".","color":"green","bold":true},{"score":{"name":"@s","objective":"parkourDeci"},"color":"green","bold":true},{"score":{"name":"@s","objective":"parkourDeci2"},"color":"green","bold":true},{"text":"!","color":"dark_green"}]

#Visual/Sound effects
execute as @a[x=0,predicate=custom:team/lobby,tag=finishedParkour,tag=!cheatedParkour] at @s run playsound minecraft:entity.firework_rocket.twinkle_far master @s ~ ~ ~ 1 1
execute as @a[x=0,predicate=custom:team/lobby,tag=finishedParkour,tag=!cheatedParkour] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.1
execute as @a[x=0,predicate=custom:team/lobby,tag=finishedParkour,tag=!cheatedParkour] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1.3
execute as @a[x=0,predicate=custom:team/lobby,tag=finishedParkour,tag=!cheatedParkour,tag=!hideParticles] at @s run particle firework ~ ~1 ~ 0 0 0 0.1 100 force @s

#Calculate final time
execute if predicate rr:has_parkour as @a[x=0,predicate=custom:team/lobby,tag=finishedParkour,tag=!cheatedParkour] run scoreboard players operation @s parkourMins *= $60 constant
execute if predicate rr:has_parkour as @a[x=0,predicate=custom:team/lobby,tag=finishedParkour,tag=!cheatedParkour] run scoreboard players operation @s parkourMins *= $100 constant
execute if predicate rr:has_parkour as @a[x=0,predicate=custom:team/lobby,tag=finishedParkour,tag=!cheatedParkour] run scoreboard players operation @s parkourSecs *= $100 constant
execute if predicate rr:has_parkour as @a[x=0,predicate=custom:team/lobby,tag=finishedParkour,tag=!cheatedParkour] run scoreboard players operation @s parkourDeci *= $10 constant
execute if predicate rr:has_parkour as @a[x=0,predicate=custom:team/lobby,tag=finishedParkour,tag=!cheatedParkour] run scoreboard players operation @s finalParkourTime = @s parkourDeci2
execute if predicate rr:has_parkour as @a[x=0,predicate=custom:team/lobby,tag=finishedParkour,tag=!cheatedParkour] run scoreboard players operation @s finalParkourTime += @s parkourDeci
execute if predicate rr:has_parkour as @a[x=0,predicate=custom:team/lobby,tag=finishedParkour,tag=!cheatedParkour] run scoreboard players operation @s finalParkourTime += @s parkourSecs
execute if predicate rr:has_parkour as @a[x=0,predicate=custom:team/lobby,tag=finishedParkour,tag=!cheatedParkour] run scoreboard players operation @s finalParkourTime += @s parkourMins
execute if predicate rr:has_parkour as @a[x=0,predicate=custom:team/lobby,tag=finishedParkour,tag=!cheatedParkour] run scoreboard players operation @s parkourMins /= $60 constant
execute if predicate rr:has_parkour as @a[x=0,predicate=custom:team/lobby,tag=finishedParkour,tag=!cheatedParkour] run scoreboard players operation @s parkourMins /= $100 constant
execute if predicate rr:has_parkour as @a[x=0,predicate=custom:team/lobby,tag=finishedParkour,tag=!cheatedParkour] run scoreboard players operation @s parkourSecs /= $100 constant
execute if predicate rr:has_parkour as @a[x=0,predicate=custom:team/lobby,tag=finishedParkour,tag=!cheatedParkour] run scoreboard players operation @s parkourDeci /= $10 constant

#First time completion
execute if predicate rr:has_parkour as @a[x=0,predicate=custom:team/lobby,tag=finishedParkour,tag=!cheatedParkour,tag=!firstParkour] run scoreboard players operation @s bestParkourTime = @s finalParkourTime
execute if predicate rr:has_parkour as @a[x=0,predicate=custom:team/lobby,tag=finishedParkour,tag=!cheatedParkour,tag=!firstParkour] run scoreboard players operation @s bestParkourMins = @s parkourMins
execute if predicate rr:has_parkour as @a[x=0,predicate=custom:team/lobby,tag=finishedParkour,tag=!cheatedParkour,tag=!firstParkour] run scoreboard players operation @s bestParkourSecs = @s parkourSecs
execute if predicate rr:has_parkour as @a[x=0,predicate=custom:team/lobby,tag=finishedParkour,tag=!cheatedParkour,tag=!firstParkour] run scoreboard players operation @s bestParkourDeci = @s parkourDeci
execute if predicate rr:has_parkour as @a[x=0,predicate=custom:team/lobby,tag=finishedParkour,tag=!cheatedParkour,tag=!firstParkour] run scoreboard players operation @s bestParkourDeci2 = @s parkourDeci2

#Repeat completion
execute if predicate rr:has_parkour as @a[x=0,predicate=custom:team/lobby,tag=finishedParkour,tag=!cheatedParkour,tag=firstParkour] if score @s finalParkourTime < @s bestParkourTime run tellraw @s [{"text":"That's a new personal best time!","color":"green","italic":true}]
execute if predicate rr:has_parkour as @a[x=0,predicate=custom:team/lobby,tag=finishedParkour,tag=!cheatedParkour,tag=firstParkour] if score @s finalParkourTime < @s bestParkourTime run scoreboard players operation @s bestParkourMins = @s parkourMins
execute if predicate rr:has_parkour as @a[x=0,predicate=custom:team/lobby,tag=finishedParkour,tag=!cheatedParkour,tag=firstParkour] if score @s finalParkourTime < @s bestParkourTime run scoreboard players operation @s bestParkourSecs = @s parkourSecs
execute if predicate rr:has_parkour as @a[x=0,predicate=custom:team/lobby,tag=finishedParkour,tag=!cheatedParkour,tag=firstParkour] if score @s finalParkourTime < @s bestParkourTime run scoreboard players operation @s bestParkourDeci = @s parkourDeci
execute if predicate rr:has_parkour as @a[x=0,predicate=custom:team/lobby,tag=finishedParkour,tag=!cheatedParkour,tag=firstParkour] if score @s finalParkourTime < @s bestParkourTime run scoreboard players operation @s bestParkourDeci2 = @s parkourDeci2
execute if predicate rr:has_parkour as @a[x=0,predicate=custom:team/lobby,tag=finishedParkour,tag=!cheatedParkour,tag=firstParkour] if score @s finalParkourTime < @s bestParkourTime run scoreboard players operation @s bestParkourTime = @s finalParkourTime

#Store in leaderboard
execute if predicate rr:has_parkour as @a[x=0,predicate=custom:team/lobby,tag=finishedParkour,tag=!cheatedParkour] if score @s finalParkourTime < $best_parkour_time global at @s run function lobby:parkour/updatelb

#Notify cheaters
execute as @a[x=0,predicate=custom:team/lobby,tag=cheatedParkour] run tellraw @s ["",{"text":"You skipped a checkpoint, so your Parkour run was invalidated.","color":"red"}]
execute as @a[x=0,predicate=custom:team/lobby,tag=cheatedParkour] at @s run playsound minecraft:block.beacon.deactivate master @s ~ ~ ~ 1 1

#Remove tags + give advancement
execute if predicate rr:has_parkour as @a[x=0,predicate=custom:team/lobby,tag=finishedParkour,tag=!cheatedParkour] run advancement grant @s only 2811iaj1:endparkour
execute if predicate rr:has_parkour as @a[x=0,predicate=custom:team/lobby,tag=finishedParkour,tag=!cheatedParkour] run tag @s add firstParkour
execute as @a[x=0,predicate=custom:team/lobby,tag=finishedParkour] run title @s actionbar ""
execute as @a[x=0,predicate=custom:team/lobby,tag=finishedParkour] run tag @s remove inParkour
execute as @a[x=0,predicate=custom:team/lobby,tag=finishedParkour] run tag @s remove cheatedParkour
execute as @a[x=0,predicate=custom:team/lobby,tag=finishedParkour] run tag @s remove finishedParkour

##Return to checkpoint
#If you fall on the floor, you return to your last checkpoint automatically
execute as @a[x=0,predicate=custom:team/lobby,tag=inParkour] run tag @a[x=0,predicate=custom:standing_on_parkour_floor] add returnCheckpoint
execute as @a[x=0,predicate=custom:team/lobby,tag=inParkour,tag=returnCheckpoint,scores={checkpoint=0}] run tp @s 65 205 -2 0 0
execute as @a[x=0,predicate=custom:team/lobby,tag=inParkour,tag=returnCheckpoint,scores={checkpoint=1}] run tp @s 68 208 49 0 0
execute as @a[x=0,predicate=custom:team/lobby,tag=inParkour,tag=returnCheckpoint,scores={checkpoint=2}] run tp @s 83 211 39 -90 0
execute as @a[x=0,predicate=custom:team/lobby,tag=inParkour,tag=returnCheckpoint,scores={checkpoint=3}] run tp @s 80 211 74 90 0
execute as @a[x=0,predicate=custom:team/lobby,tag=inParkour,tag=returnCheckpoint] at @s run playsound minecraft:entity.zombie_villager.converted master @s ~ ~ ~ 1 2
execute as @a[x=0,predicate=custom:team/lobby,tag=inParkour,tag=returnCheckpoint] run tag @s remove returnCheckpoint

##Scoreboard timer
scoreboard players add @a[x=0,predicate=custom:team/lobby,tag=inParkour] parkourTimer 1
scoreboard players add @a[x=0,predicate=custom:team/lobby,tag=inParkour] parkourSecs 0
scoreboard players add @a[x=0,predicate=custom:team/lobby,tag=inParkour] parkourMins 0
scoreboard players add @a[x=0,predicate=custom:team/lobby,tag=inParkour,scores={parkourTimer=20}] parkourSecs 1
scoreboard players set @a[x=0,predicate=custom:team/lobby,tag=inParkour,scores={parkourTimer=20}] parkourTimer 0
scoreboard players add @a[x=0,predicate=custom:team/lobby,tag=inParkour,scores={parkourSecs=60}] parkourMins 1
scoreboard players set @a[x=0,predicate=custom:team/lobby,tag=inParkour,scores={parkourSecs=60}] parkourSecs 0

#Decimals
execute as @a[x=0,predicate=custom:team/lobby,tag=inParkour] run scoreboard players operation @s parkourDeci = @s parkourTimer
execute as @a[x=0,predicate=custom:team/lobby,tag=inParkour] run scoreboard players operation @s parkourDeci /= $2 constant
scoreboard players add @a[x=0,predicate=custom:team/lobby,tag=inParkour] parkourDeci2 5
scoreboard players set @a[x=0,predicate=custom:team/lobby,tag=inParkour,scores={parkourDeci2=10}] parkourDeci2 0

##Reset time
tag @a[x=0,predicate=custom:team/lobby,tag=inParkour,tag=onResetPlate] remove onResetPlate
execute as @a[x=0,predicate=custom:team/lobby,tag=inParkour] at @s if entity @s[x=-31,y=193,z=18,dx=0,dy=0,dz=0] run tag @s add onResetPlate
scoreboard players set @a[x=0,predicate=custom:team/lobby,tag=inParkour,tag=!timeReset,tag=onResetPlate] parkourSecs 0
scoreboard players set @a[x=0,predicate=custom:team/lobby,tag=inParkour,tag=!timeReset,tag=onResetPlate] parkourMins 0
scoreboard players set @a[x=0,predicate=custom:team/lobby,tag=inParkour,tag=!timeReset,tag=onResetPlate] parkourDeci 0
scoreboard players set @a[x=0,predicate=custom:team/lobby,tag=inParkour,tag=!timeReset,tag=onResetPlate] parkourDeci2 0
scoreboard players set @a[x=0,predicate=custom:team/lobby,tag=inParkour,tag=!timeReset,tag=onResetPlate] parkourTimer 0
scoreboard players set @a[x=0,predicate=custom:team/lobby,tag=inParkour,tag=!timeReset,tag=onResetPlate] checkpoint 0
tag @a[x=0,predicate=custom:team/lobby,tag=inParkour,tag=!timeReset,tag=onResetPlate] add timeReset
tag @a[x=0,predicate=custom:team/lobby,tag=inParkour,tag=timeReset,tag=!onResetPlate] remove timeReset

##Display actionbar
execute as @a[x=0,predicate=custom:team/lobby,tag=inParkour,scores={parkourSecs=..9,parkourMins=..9}] run title @s actionbar ["",{"text":"Checkpoint: ","color":"dark_green"},{"score":{"name":"@s","objective":"checkpoint"},"bold":true,"color":"green"},{"text":" [","color":"dark_green"},{"text":"0","bold":true,"color":"green"},{"score":{"name":"@s","objective":"parkourMins"},"bold":true,"color":"green"},{"text":":","bold":true,"color":"green"},{"text":"0","bold":true,"color":"green"},{"score":{"name":"@s","objective":"parkourSecs"},"bold":true,"color":"green"},{"text":".","bold":true,"color":"green"},{"score":{"name":"@s","objective":"parkourDeci"},"bold":true,"color":"green"},{"score":{"name":"@s","objective":"parkourDeci2"},"color":"green","bold":true},{"text":"]","color":"dark_green"}]
execute as @a[x=0,predicate=custom:team/lobby,tag=inParkour,scores={parkourSecs=10..,parkourMins=..9}] run title @s actionbar ["",{"text":"Checkpoint: ","color":"dark_green"},{"score":{"name":"@s","objective":"checkpoint"},"bold":true,"color":"green"},{"text":" [","color":"dark_green"},{"text":"0","bold":true,"color":"green"},{"score":{"name":"@s","objective":"parkourMins"},"bold":true,"color":"green"},{"text":":","bold":true,"color":"green"},{"score":{"name":"@s","objective":"parkourSecs"},"bold":true,"color":"green"},{"text":".","bold":true,"color":"green"},{"score":{"name":"@s","objective":"parkourDeci"},"bold":true,"color":"green"},{"score":{"name":"@s","objective":"parkourDeci2"},"color":"green","bold":true},{"text":"]","color":"dark_green"}]
execute as @a[x=0,predicate=custom:team/lobby,tag=inParkour,scores={parkourSecs=..9,parkourMins=10..}] run title @s actionbar ["",{"text":"Checkpoint: ","color":"dark_green"},{"score":{"name":"@s","objective":"checkpoint"},"bold":true,"color":"green"},{"text":" [","color":"dark_green"},{"score":{"name":"@s","objective":"parkourMins"},"bold":true,"color":"green"},{"text":":","bold":true,"color":"green"},{"text":"0","bold":true,"color":"green"},{"score":{"name":"@s","objective":"parkourSecs"},"bold":true,"color":"green"},{"text":".","bold":true,"color":"green"},{"score":{"name":"@s","objective":"parkourDeci"},"bold":true,"color":"green"},{"score":{"name":"@s","objective":"parkourDeci2"},"color":"green","bold":true},{"text":"]","color":"dark_green"}]
execute as @a[x=0,predicate=custom:team/lobby,tag=inParkour,scores={parkourSecs=10..,parkourMins=10..}] run title @s actionbar ["",{"text":"Checkpoint: ","color":"dark_green"},{"score":{"name":"@s","objective":"checkpoint"},"bold":true,"color":"green"},{"text":" [","color":"dark_green"},{"score":{"name":"@s","objective":"parkourMins"},"bold":true,"color":"green"},{"text":":","bold":true,"color":"green"},{"score":{"name":"@s","objective":"parkourSecs"},"bold":true,"color":"green"},{"text":".","bold":true,"color":"green"},{"score":{"name":"@s","objective":"parkourDeci"},"bold":true,"color":"green"},{"score":{"name":"@s","objective":"parkourDeci2"},"color":"green","bold":true},{"text":"]","color":"dark_green"}]

##Inventory controls
#Return to last checkpoint (includes 1 second cooldown)
scoreboard players add @a[x=0,predicate=custom:team/lobby,tag=inParkour] chkpntCooldown 0
scoreboard players add @a[x=0,predicate=custom:team/lobby,tag=inParkour,scores={chkpntCooldown=1..19}] chkpntCooldown 1
scoreboard players set @a[x=0,predicate=custom:team/lobby,tag=inParkour,scores={chkpntCooldown=20}] chkpntCooldown 0

#Clear offhand (necessary for inventory controls)
item replace entity @a[x=0,predicate=custom:team/lobby] weapon.offhand with air

##Invisible players within range
execute as @a[x=0,predicate=custom:team/lobby,tag=inParkour] at @s if entity @a[predicate=custom:team/lobby,tag=inParkour,distance=0.0001..8] run effect give @s invisibility infinite 100 true
execute as @a[x=0,predicate=custom:team/lobby,tag=inParkour] at @s unless entity @a[predicate=custom:team/lobby,tag=inParkour,distance=0.0001..8] run effect clear @s invisibility
effect clear @a[x=0,predicate=custom:team/lobby,tag=!inParkour] invisibility

##Boots (excluding rank)
execute as @a[x=0,predicate=custom:team/lobby,tag=inParkour] run function custom:player/update_armor

##Safety features
#Only lobby players in Parkour mode
effect clear @a[x=0,predicate=!custom:team/lobby,tag=inParkour] invisibility
title @a[x=0,predicate=!custom:team/lobby,tag=inParkour] actionbar ""
tag @a[x=0,predicate=!custom:team/lobby,tag=inParkour] remove inParkour
#Don't let non-Parkour players on floor (warp back to parkour start)
scoreboard players set @a[x=0,predicate=custom:team/lobby,tag=!inParkour,predicate=custom:standing_on_parkour_floor] LobbyWarp 7

##Reset objectives/tags for non-parkour players
scoreboard players reset @a[x=0,tag=!inParkour] checkpoint
scoreboard players reset @a[x=0,tag=!inParkour] chkpntCooldown
scoreboard players reset @a[x=0,tag=!inParkour] parkourTimer
scoreboard players reset @a[x=0,tag=!inParkour] parkourMins
scoreboard players reset @a[x=0,tag=!inParkour] parkourSecs
scoreboard players reset @a[x=0,tag=!inParkour] parkourDeci
scoreboard players reset @a[x=0,tag=!inParkour] parkourDeci2
scoreboard players reset @a[x=0,tag=!inParkour] finalParkourTime
tag @a[x=0,tag=!inParkour] remove onResetPlate
tag @a[x=0,tag=!inParkour] remove timeReset

##Toggle Parkour tips
scoreboard players enable @a[x=0] toggle_parkour_instructions
tellraw @a[x=0,scores={toggle_parkour_instructions=1..},tag=!hideParkourTips] [{"text":"You will no longer see Parkour instructions.","color":"red"}]
tellraw @a[x=0,scores={toggle_parkour_instructions=1..},tag=hideParkourTips] [{"text":"You will now see Parkour instructions.","color":"green"}]
tag @a[x=0,scores={toggle_parkour_instructions=1..},tag=hideParkourTips] add hidParkourTips
tag @a[x=0,scores={toggle_parkour_instructions=1..},tag=hideParkourTips] remove hideParkourTips
tag @a[x=0,scores={toggle_parkour_instructions=1..},tag=!hideParkourTips,tag=!hidParkourTips] add hideParkourTips
tag @a[x=0,scores={toggle_parkour_instructions=1..},tag=hidParkourTips] remove hidParkourTips
execute as @a[x=0,scores={toggle_parkour_instructions=1..}] run function custom:player_action/playerdata/save
scoreboard players set @a[x=0] toggle_parkour_instructions 0

##Return to Lobby Pad
execute if predicate custom:periodic_tick/3 run particle minecraft:falling_dust{block_state:"minecraft:green_concrete"} 67.5 203.0 118.5 0.5 1 0.5 0.1 5 force @a[x=0,tag=!hideParticles,predicate=!custom:in_arena]
execute as @a[x=67.5,y=201.0,z=118.5,distance=..2,predicate=custom:team/lobby] run trigger LobbyWarp set 1
