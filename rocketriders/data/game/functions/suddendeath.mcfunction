execute as @s[scores={SDtime=1}] as @a run stopsound @s master minecraft:ui.toast.challenge_complete
execute as @s[scores={SDtime=1}] as @a run stopsound @s master minecraft:entity.wither.spawn

execute as @s[scores={SDtime=1..15}] run kill @e[type=tnt]

scoreboard players reset @s endtimer

scoreboard players add @s SDtime 1
execute as @s[scores={SDtime=1}] run bossbar set rr:startgame name ["",{"text":"A match is currently in Sudden Death. Feel free to join in!","color":"dark_red"}]
execute as @s[scores={SDtime=1..2}] at @s run tp @a[team=Blue] 12 64 -66 0 0
execute as @s[scores={SDtime=1..2}] at @s run tp @a[team=Yellow] 12 64 66 180 0
execute as @s[scores={SDtime=1}] at @s run scoreboard players set 2 MaxItemSec 2
execute as @s[scores={SDtime=1},tag=!NoFall] run gamerule fallDamage true
execute as @s[scores={SDtime=1}] at @s run replaceitem entity @a armor.head air
execute as @s[scores={SDtime=1}] at @s run clear @a firework_rocket
execute as @s[scores={SDtime=1}] at @s run effect clear @a resistance
execute as @s[scores={SDtime=1}] at @s run effect give @a blindness 1 100 true
execute as @s[scores={SDtime=4}] at @s run effect clear @a blindness
execute as @s[scores={SDtime=1}] at @s run tag @s remove GameEnd
execute as @s[scores={SDtime=1}] run gamemode survival @a[team=Blue]
execute as @s[scores={SDtime=1}] run gamemode survival @a[team=Yellow]
execute as @s[scores={SDtime=10}] as @a[team=!Lobby] at @s run playsound minecraft:entity.zombie.attack_iron_door player @s ~ ~ ~ 100 1.3
execute as @s[scores={SDtime=1}] run tag @s add GameStarted
execute as @s[scores={SDtime=1}] run worldborder warning distance 1000000
execute as @s[scores={SDtime=1}] run tag @s remove BlueWon
execute as @s[scores={SDtime=1}] run tag @s remove YellowWon
execute as @s[scores={SDtime=1},tag=BlueWonFirst] run advancement grant @a[team=Blue] only achievements:rr_challenges/premature
execute as @s[scores={SDtime=1},tag=BlueWonFirst] run replaceitem entity @a[team=Blue] armor.chest leather_chestplate{display:{Name:'[{"text":"Blue Chestplate","color":"blue","bold":true,"italic":false}]',color:1247871},HideFlags:39,Unbreakable:1,Enchantments:[{id:binding_curse,lvl:1}]}
execute as @s[scores={SDtime=1},tag=BlueWonFirst] run replaceitem entity @a[team=Yellow] armor.head air
execute as @s[scores={SDtime=1}] run tag @s remove BlueWonFirst
execute as @s[scores={SDtime=1},tag=YellowWonFirst] run advancement grant @a[team=Yellow] only achievements:rr_challenges/premature
execute as @s[scores={SDtime=1},tag=YellowWonFirst] run replaceitem entity @a[team=Yellow] armor.chest leather_chestplate{display:{Name:'[{"text":"Yellow Chestplate","color":"yellow","bold":true,"italic":false}]',color:16768000},HideFlags:7,Unbreakable:1,Enchantments:[{id:binding_curse,lvl:1}]}
execute as @s[scores={SDtime=1},tag=YellowWonFirst] run replaceitem entity @a[team=Blue] armor.head air
execute as @s[scores={SDtime=1}] run tag @s remove YellowWonFirst
scoreboard players operation @s[scores={SDtime=1,MaxItemTime=2..}] MaxItemTime /= 2 MaxItemSec
execute as @s[scores={SDtime=1}] run scoreboard players set @s RandomItem -3
execute as @s[scores={SDtime=1}] run scoreboard players operation @s RandomItem += @s MaxItemTime
execute as @s[scores={SDtime=1}] run scoreboard players set @s[tag=Minute] RandomItem 1197

fill -10 58 74 34 58 74 minecraft:obsidian replace #custom:basereplace
fill 34 58 74 34 37 74 minecraft:obsidian replace #custom:basereplace
fill 34 37 74 -10 37 74 minecraft:obsidian replace #custom:basereplace
fill 12 37 74 12 58 74 minecraft:obsidian replace #custom:basereplace
fill -10 37 74 -10 58 74 minecraft:obsidian replace #custom:basereplace
fill 34 58 -74 -10 58 -74 minecraft:obsidian replace #custom:basereplace
fill -10 58 -74 -10 37 -74 minecraft:obsidian replace #custom:basereplace
fill -10 37 -74 34 37 -74 minecraft:obsidian replace #custom:basereplace
fill 12 37 -74 12 58 -74 minecraft:obsidian replace #custom:basereplace
fill 34 37 -74 34 58 -74 minecraft:obsidian replace #custom:basereplace
fill -9 38 -74 11 57 -74 minecraft:nether_portal
fill 13 38 -74 33 57 -74 minecraft:nether_portal
fill -9 38 74 11 57 74 minecraft:nether_portal
fill 13 57 74 33 38 74 minecraft:nether_portal

execute as @s[scores={SDtime=1}] run title @a title ["",{"text":"It's a Tie!","color":"gray","bold":true}]
execute as @s[scores={SDtime=1..5}] run title @a subtitle ["",{"text":"","bold":true,"color":"red"},{"text":"SUDDEN DEATH","bold":true,"color":"white"}]
execute as @s[scores={SDtime=6}] run title @a subtitle ["",{"text":"S","bold":true,"color":"red"},{"text":"UDDEN DEATH","bold":true,"color":"white"}]
execute as @s[scores={SDtime=7}] run title @a subtitle ["",{"text":"SU","bold":true,"color":"red"},{"text":"DDEN DEATH","bold":true,"color":"white"}]
execute as @s[scores={SDtime=8}] run title @a subtitle ["",{"text":"SUD","bold":true,"color":"red"},{"text":"DEN DEATH","bold":true,"color":"white"}]
execute as @s[scores={SDtime=9}] run title @a subtitle ["",{"text":"SUDD","bold":true,"color":"red"},{"text":"EN DEATH","bold":true,"color":"white"}]
execute as @s[scores={SDtime=10}] run title @a subtitle ["",{"text":"SUDDE","bold":true,"color":"red"},{"text":"N DEATH","bold":true,"color":"white"}]
execute as @s[scores={SDtime=11}] run title @a subtitle ["",{"text":"SUDDEN","bold":true,"color":"red"},{"text":" DEATH","bold":true,"color":"white"}]
execute as @s[scores={SDtime=12}] run title @a subtitle ["",{"text":"SUDDEN D","bold":true,"color":"red"},{"text":"EATH","bold":true,"color":"white"}]
execute as @s[scores={SDtime=13}] run title @a subtitle ["",{"text":"SUDDEN DE","bold":true,"color":"red"},{"text":"ATH","bold":true,"color":"white"}]
execute as @s[scores={SDtime=14}] run title @a subtitle ["",{"text":"SUDDEN DEA","bold":true,"color":"red"},{"text":"TH","bold":true,"color":"white"}]
execute as @s[scores={SDtime=15}] run title @a subtitle ["",{"text":"SUDDEN DEAT","bold":true,"color":"red"},{"text":"H","bold":true,"color":"white"}]
execute as @s[scores={SDtime=16}] run title @a subtitle ["",{"text":"SUDDEN DEATH","bold":true,"color":"red"}]

execute as @s[scores={SDtime=16..}] run tag @s remove SuddenDeath
execute as @s[scores={SDtime=16..}] run scoreboard players reset 2 MaxItemSec
execute as @s[scores={SDtime=16..}] run scoreboard players reset @s SDtime