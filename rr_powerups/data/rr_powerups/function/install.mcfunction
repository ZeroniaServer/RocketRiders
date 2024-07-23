execute unless entity @e[x=0,type=armor_stand,tag=rr_powerups,limit=1] run summon armor_stand 25 184 -6 {Tags:["rr_powerups","gamemodeAS"],Marker:1b,Invisible:1b,Invulnerable:1b,CustomNameVisible:0b,CustomName:'{"text":"Powerups Mode"}'}
bossbar add rr_powerups:capture_progress {"text":"Capture Progress","color":"white","bold":true}
scoreboard objectives add beeShieldCount dummy
scoreboard objectives add capturePoint dummy
scoreboard objectives add captureYellow dummy
scoreboard objectives add captureBlue dummy
scoreboard objectives add PowerupCrystal dummy
scoreboard objectives add PowerupDisplay dummy
scoreboard objectives add powerupcount dummy
scoreboard objectives add DrinkHoney minecraft.used:minecraft.honey_bottle
scoreboard objectives add HasTrident dummy
scoreboard objectives add bCapturedTime dummy
scoreboard objectives add yCapturedTime dummy
scoreboard objectives add HasLavaSplash dummy
scoreboard objectives add HasSlapFish dummy
scoreboard objectives add HasTotem dummy
scoreboard objectives add HasBeeShield dummy
scoreboard objectives add HasTippedArrows dummy
execute if entity @e[x=0,type=armor_stand,tag=rr_powerups,limit=1] run tellraw @s {"text":"Powerups Mode installed.","color":"green","bold":true}
scoreboard players add @e[x=0,type=armor_stand,tag=rr_powerups,limit=1] CmdData 1
execute unless entity @e[x=0,type=marker,tag=PlacerClear] run function game:forcestop