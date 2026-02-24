tag @e[x=0,type=armor_stand,tag=Selection,limit=1] add GameEnd
clear @a[x=0,predicate=world_updates:1_3_0-pre1/on_blue_or_yellow_team] #world_updates:1_3_0-pre1/clear
clear @a[x=0,predicate=world_updates:1_3_0-pre1/on_blue_or_yellow_team] minecraft:crossbow
effect clear @a[x=0,predicate=world_updates:1_3_0-pre1/on_blue_or_yellow_team]
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove GameStarted
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove Countdown
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove forceCountdown
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove bossbarOverride
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove gaveFirstItem
scoreboard players set @e[x=0,type=armor_stand,tag=Selection,limit=1] count 0
worldborder warning distance 0

##Set missile spawning and other statistic scores to 0
scoreboard players set @a[x=0] jumps 0
scoreboard players set @a[x=0] AuxSpawned 0
scoreboard players set @a[x=0] AntsSpawned 0
scoreboard players set @a[x=0] BladeSpawned 0
scoreboard players set @a[x=0] BSurpriseSpawned 0
scoreboard players set @a[x=0] BowShot 0
scoreboard players set @a[x=0] BroadSpawned 0
scoreboard players set @a[x=0] BulletSpawned 0
scoreboard players set @a[x=0] CataSpawned 0
scoreboard players set @a[x=0] CitaSpawned 0
scoreboard players set @a[x=0] deaths 0
scoreboard players set @a[x=0] DuplexSpawned 0
scoreboard players set @a[x=0] FireballSpawned 0
scoreboard players set @a[x=0] GemiSpawned 0
scoreboard players set @a[x=0] GuardSpawned 0
scoreboard players set @a[x=0] HurSpawned 0
scoreboard players set @a[x=0] HyperSpawned 0
scoreboard players set @a[x=0] JugbSpawned 0
scoreboard players set @a[x=0] kills 0
scoreboard players set @a[x=0] LifterSpawned 0
scoreboard players set @a[x=0] MissilesSpawned 0
scoreboard players set @a[x=0] NullSpawned 0
scoreboard players set @a[x=0] ObshieldSpawned 0
scoreboard players set @a[x=0] RifterSpawned 0
scoreboard players set @a[x=0] SlashSpawned 0
scoreboard players set @a[x=0] ThunSpawned 0
scoreboard players set @a[x=0] TomaSpawned 0
scoreboard players set @a[x=0] WarSpawned 0
scoreboard players set @a[x=0] YSurpriseSpawned 0
scoreboard players set @a[x=0] FellVoid 0

tag @e[x=0,type=armor_stand,tag=EditedSettings] remove EditedSettings
tag @e[x=0,type=marker,tag=yellowjoinpad] add CancelJoin
tag @e[x=0,type=marker,tag=bluejoinpad] add CancelJoin
tag @e[x=0,type=marker,tag=specjoinpad] add CancelJoin
bossbar set rr:startgame max 30
tag @a[x=0] remove deathchamp
tag @a[x=0] remove flagschamp
tag @a[x=0] remove killschamp
tag @a[x=0] remove spawnchamp

## Instant remaining commands
scoreboard players reset @e[x=0,type=armor_stand,tag=Selection,limit=1] SDtime
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!fireballOverride] as @e[x=0,type=fireball,tag=endFireball] run data merge entity @s {ExplosionPower:0,Motion:[0.0,0.0,0.0],acceleration_power:0}
tag @a[x=0] remove Winner
tag @a[x=0] remove Loser
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove BlueWon
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove YellowWon
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove BlueWonFirst
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove YellowWonFirst
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove SuddenDeath
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove BothWon
scoreboard players reset $highest VortexID
scoreboard players reset $count VortexID
scoreboard players reset * invCount
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove GameEnd

tag @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={RepeatSettings=0},tag=!RepeatForever] remove Repeat
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=Repeat] unless entity @s[tag=!rngNormal,tag=!rngHeavy,tag=!rngLightning,tag=!rngUtil] run function arenaclear:brute_force/start

bossbar set rr:startgame color red
bossbar set rr:startgame name ["",{"text":"A match is currently ending.","color":"red"}]

##
scoreboard players reset * FlagScore
fill 13 74 68 7 64 61 moving_piston replace air
bossbar set rr_chase:lead players none
bossbar set rr_chase:lead name ["",{"text":"No one is in the lead!","color":"red"}]
bossbar set rr_chase:lead value 0
tag @a[x=0] remove InLead

##
kill @e[x=0,type=marker,tag=airDetectBlue]
kill @e[x=0,type=marker,tag=airDetectYellow]
fill -9 74 68 -15 64 61 moving_piston replace air
fill 35 74 68 29 64 61 moving_piston replace air
fill -9 74 -68 -15 64 -61 moving_piston replace air
fill 35 74 -68 29 64 -61 moving_piston replace air

##
tag @a[x=0] remove FlipMissile
tag @a[x=0] remove CarryFlag
tag @a[x=0] remove CarryFY1
tag @a[x=0] remove CarryFY2
tag @a[x=0] remove CarryFB1
tag @a[x=0] remove CarryFB2
kill @e[x=0,type=marker,tag=FlagParticle]
scoreboard players reset * FlagScore
scoreboard players reset * FlagDeliver
bossbar set rr_ctf:fy1 players none
bossbar set rr_ctf:fy1 name ["",{"text":" is carrying a ","color":"dark_aqua"},{"text":"Yellow","color":"gold"},{"text":" flag!","color":"dark_aqua"}]
bossbar set rr_ctf:fy1 value 0
bossbar set rr_ctf:fy2 players none
bossbar set rr_ctf:fy2 name ["",{"text":" is carrying a ","color":"dark_aqua"},{"text":"Yellow","color":"gold"},{"text":" flag!","color":"dark_aqua"}]
bossbar set rr_ctf:fy2 value 0
bossbar set rr_ctf:fb1 players none
execute unless predicate game:gamemode_components/red_for_blue run bossbar set rr_ctf:fb1 name ["",{"text":" is carrying a ","color":"yellow"},{"text":"Blue","color":"blue"},{"text":" flag!","color":"yellow"}]
execute if predicate game:gamemode_components/red_for_blue run bossbar set rr_ctf:fb1 name ["",{"text":" is carrying a ","color":"yellow"},{"text":"Red","color":"dark_red"},{"text":" flag!","color":"yellow"}]
bossbar set rr_ctf:fb1 value 0
bossbar set rr_ctf:fb2 players none
bossbar set rr_ctf:fb2 name ["",{"text":" is carrying a ","color":"yellow"},{"text":"Blue","color":"blue"},{"text":" flag!","color":"yellow"}]
execute unless predicate game:gamemode_components/red_for_blue run bossbar set rr_ctf:fb2 name ["",{"text":" is carrying a ","color":"yellow"},{"text":"Blue","color":"blue"},{"text":" flag!","color":"yellow"}]
execute if predicate game:gamemode_components/red_for_blue run bossbar set rr_ctf:fb2 name ["",{"text":" is carrying a ","color":"yellow"},{"text":"Red","color":"dark_red"},{"text":" flag!","color":"yellow"}]
bossbar set rr_ctf:fb2 value 0
scoreboard players reset * FlagDisp

scoreboard objectives setdisplay sidebar.team.gold
scoreboard objectives setdisplay sidebar.team.blue
scoreboard objectives setdisplay sidebar.team.dark_gray
scoreboard players reset Blue: RoundsWon
scoreboard players reset Yellow: RoundsWon
tag @a[x=0] remove InRanked

bossbar set rr_powerups:capture_progress players none
scoreboard players set @e[x=0,type=marker,tag=captureMiddle] capturePoint 0
kill @e[x=0,type=bee]
kill @e[x=0,type=armor_stand,tag=BeeShieldDisplay]
kill @e[x=0,type=marker,tag=animBshield]

execute as @e[x=0,type=fireball,tag=endFireball] run data merge entity @s {ExplosionPower:0,Motion:[0.0,0.0,0.0],acceleration_power:0}

##
scoreboard players set @e[x=0,type=armor_stand,tag=Selection,limit=1] endtimer 568


## Brute Force Arena Clear
function arenaclear:brute_force/start
