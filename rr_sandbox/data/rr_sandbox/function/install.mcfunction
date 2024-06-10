execute unless entity @e[x=0,type=armor_stand,tag=rr_sandbox,limit=1] run summon armor_stand 25 184 -6 {Tags:["rr_sandbox","gamemodeAS"],Marker:1b,Invisible:1b,Invulnerable:1b,CustomNameVisible:0b,CustomName:'{"text":"Sandbox Mode"}'}
scoreboard objectives add dropPickaxe minecraft.dropped:minecraft.netherite_pickaxe
execute if entity @e[x=0,type=armor_stand,tag=rr_sandbox,limit=1] run tellraw @s {"text":"Sandbox Mode installed.","color":"green","bold":true}
scoreboard objectives add nomicon trigger
scoreboard objectives add dropBook minecraft.dropped:minecraft.written_book
scoreboard players add @e[x=0,type=armor_stand,tag=rr_sandbox,limit=1] CmdData 1
execute unless entity @e[x=0,type=marker,tag=PlacerClear] run function game:forcestop