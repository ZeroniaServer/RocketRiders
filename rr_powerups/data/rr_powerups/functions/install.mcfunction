execute unless entity @e[predicate=custom:indimension,type=armor_stand,tag=rr_powerups,limit=1] run summon armor_stand 25 184 -6 {Tags:["rr_powerups","gamemodeAS"],Marker:1b,Invisible:1b,Invulnerable:1b,CustomNameVisible:0b,CustomName:'{"text":"Powerups Mode"}'}
bossbar add rr_powerups:capture_progress {"text":"Capture Progress","color":"white","bold":true}
scoreboard objectives add beeShieldCount dummy
execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=rr_powerups,limit=1] run tellraw @s {"text":"Powerups Mode installed.","color":"green","bold":true}
scoreboard players add @e[predicate=custom:indimension,type=armor_stand,tag=rr_powerups,limit=1] CmdData 1
execute unless entity @e[predicate=custom:indimension,type=marker,tag=PlacerClear] run function game:forcestop