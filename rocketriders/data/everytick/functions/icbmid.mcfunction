##Gives each ICBM egg a unique ID + corresponding tracker marker
scoreboard players add $highest ICBMID 1
scoreboard players operation @s ICBMID = $highest ICBMID
summon marker ~ ~ ~ {Tags:["ICBMtracker","trackerspawn"]}
scoreboard players operation @e[type=marker,tag=trackerspawn,limit=1] ICBMID = @s ICBMID
scoreboard players operation @e[type=marker,tag=trackerspawn,limit=1] UUIDTracker = @s UUIDTracker
tag @e[type=marker,tag=trackerspawn] remove trackerspawn