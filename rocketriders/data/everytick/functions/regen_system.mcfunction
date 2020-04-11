#regen timer
scoreboard players add @e[tag=Selection,type=armor_stand,scores={regenTimer=0..59}] regenTimer 1
execute as @e[tag=Selection,type=armor_stand,scores={regenTimer=10}] run gamerule naturalRegeneration true
execute as @e[tag=Selection,type=armor_stand,scores={regenTimer=20}] run gamerule naturalRegeneration false
execute as @e[tag=Selection,type=armor_stand,scores={regenTimer=40}] run gamerule naturalRegeneration true
execute as @e[tag=Selection,type=armor_stand,scores={regenTimer=50}] run gamerule naturalRegeneration false
scoreboard players set @e[tag=Selection,type=armor_stand,scores={regenTimer=60..}] regenTimer 0