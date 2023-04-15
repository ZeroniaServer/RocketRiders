#updating xp values
execute store result score @s xp_level run scoreboard players get @s XP
execute store result score @s xp_progress run scoreboard players get @s XP

#setting progress bar appropriately
scoreboard players set @e[predicate=custom:indimension,type=armor_stand,tag=Selection,limit=1] xp_mod 300
# this is what you multiply xp_mod by to get 100 - 300 * 1 / 3
scoreboard players set @e[predicate=custom:indimension,type=armor_stand,tag=Selection,limit=1] xp_mult 1
scoreboard players set @e[predicate=custom:indimension,type=armor_stand,tag=Selection,limit=1] xp_div 3
scoreboard players operation @s[scores={XP=101..}] xp_progress -= $100 XP
scoreboard players operation @s xp_progress %= @e[predicate=custom:indimension,type=armor_stand,tag=Selection,limit=1] xp_mod
scoreboard players operation @s xp_progress *= @e[predicate=custom:indimension,type=armor_stand,tag=Selection,limit=1] xp_mult
scoreboard players operation @s[scores={XP=101..}] xp_progress /= @e[predicate=custom:indimension,type=armor_stand,tag=Selection,limit=1] xp_div

#original system designed by WubbiConcepts: https://www.youtube.com/watch?v=NKaNyEM4VO0
#updated to 1.14+ by Evtema3
xp add @s[scores={xp_progress=-2147483648..}] -2147483648 levels
xp add @s[scores={xp_progress=-2147483648..}] 1129 levels
xp add @s[scores={xp_progress=-2147483648..}] 11 points
execute if entity @s[scores={xp_progress=-2147483648..}] run scoreboard players operation @s xp_buffer = @s xp_progress
scoreboard players set @s[scores={xp_buffer=101..}] xp_buffer 100
xp add @s[scores={xp_buffer=64..}] 6336 points
scoreboard players remove @s[scores={xp_buffer=64..}] xp_buffer 64
xp add @s[scores={xp_buffer=32..}] 3168 points
scoreboard players remove @s[scores={xp_buffer=32..}] xp_buffer 32
xp add @s[scores={xp_buffer=16..}] 1584 points
scoreboard players remove @s[scores={xp_buffer=16..}] xp_buffer 16
xp add @s[scores={xp_buffer=8..}] 792 points
scoreboard players remove @s[scores={xp_buffer=8..}] xp_buffer 8
xp add @s[scores={xp_buffer=4..}] 396 points
scoreboard players remove @s[scores={xp_buffer=4..}] xp_buffer 4
xp add @s[scores={xp_buffer=2..}] 198 points
scoreboard players remove @s[scores={xp_buffer=2..}] xp_buffer 2
xp add @s[scores={xp_buffer=1..}] 99 points
xp add @s[scores={xp_progress=-2147483648..}] -1129 levels
execute if entity @s[scores={xp_progress=-2147483648..}] run scoreboard players operation @s xp_buffer = @s xp_level
xp add @s[scores={xp_buffer=1073741824..}] 1073741824 levels
scoreboard players remove @s[scores={xp_buffer=1073741824..}] xp_buffer 1073741824
xp add @s[scores={xp_buffer=536870912..}] 536870912 levels
scoreboard players remove @s[scores={xp_buffer=536870912..}] xp_buffer 536870912
xp add @s[scores={xp_buffer=268435456..}] 268435456 levels
scoreboard players remove @s[scores={xp_buffer=268435456..}] xp_buffer 268435456
xp add @s[scores={xp_buffer=134217728..}] 134217728 levels
scoreboard players remove @s[scores={xp_buffer=134217728..}] xp_buffer 134217728
xp add @s[scores={xp_buffer=67108864..}] 67108864 levels
scoreboard players remove @s[scores={xp_buffer=67108864..}] xp_buffer 67108864
xp add @s[scores={xp_buffer=33554432..}] 33554432 levels
scoreboard players remove @s[scores={xp_buffer=33554432..}] xp_buffer 33554432
xp add @s[scores={xp_buffer=16777216..}] 16777216 levels
scoreboard players remove @s[scores={xp_buffer=16777216..}] xp_buffer 16777216
xp add @s[scores={xp_buffer=8388608..}] 8388608 levels
scoreboard players remove @s[scores={xp_buffer=8388608..}] xp_buffer 8388608
xp add @s[scores={xp_buffer=4194304..}] 4194304 levels
scoreboard players remove @s[scores={xp_buffer=4194304..}] xp_buffer 4194304
xp add @s[scores={xp_buffer=2097152..}] 2097152 levels
scoreboard players remove @s[scores={xp_buffer=2097152..}] xp_buffer 2097152
xp add @s[scores={xp_buffer=1048576..}] 1048576 levels
scoreboard players remove @s[scores={xp_buffer=1048576..}] xp_buffer 1048576
xp add @s[scores={xp_buffer=524288..}] 524288 levels
scoreboard players remove @s[scores={xp_buffer=524288..}] xp_buffer 524288
xp add @s[scores={xp_buffer=262144..}] 262144 levels
scoreboard players remove @s[scores={xp_buffer=262144..}] xp_buffer 262144
xp add @s[scores={xp_buffer=131072..}] 131072 levels
scoreboard players remove @s[scores={xp_buffer=131072..}] xp_buffer 131072
xp add @s[scores={xp_buffer=65536..}] 65536 levels
scoreboard players remove @s[scores={xp_buffer=65536..}] xp_buffer 65536
xp add @s[scores={xp_buffer=32768..}] 32768 levels
scoreboard players remove @s[scores={xp_buffer=32768..}] xp_buffer 32768
xp add @s[scores={xp_buffer=16384..}] 16384 levels
scoreboard players remove @s[scores={xp_buffer=16384..}] xp_buffer 16384
xp add @s[scores={xp_buffer=8192..}] 8192 levels
scoreboard players remove @s[scores={xp_buffer=8192..}] xp_buffer 8192
xp add @s[scores={xp_buffer=4096..}] 4096 levels
scoreboard players remove @s[scores={xp_buffer=4096..}] xp_buffer 4096
xp add @s[scores={xp_buffer=2048..}] 2048 levels
scoreboard players remove @s[scores={xp_buffer=2048..}] xp_buffer 2048
xp add @s[scores={xp_buffer=1024..}] 1024 levels
scoreboard players remove @s[scores={xp_buffer=1024..}] xp_buffer 1024
xp add @s[scores={xp_buffer=512..}] 512 levels
scoreboard players remove @s[scores={xp_buffer=512..}] xp_buffer 512
xp add @s[scores={xp_buffer=256..}] 256 levels
scoreboard players remove @s[scores={xp_buffer=256..}] xp_buffer 256
xp add @s[scores={xp_buffer=128..}] 128 levels
scoreboard players remove @s[scores={xp_buffer=128..}] xp_buffer 128
xp add @s[scores={xp_buffer=64..}] 64 levels
scoreboard players remove @s[scores={xp_buffer=64..}] xp_buffer 64
xp add @s[scores={xp_buffer=32..}] 32 levels
scoreboard players remove @s[scores={xp_buffer=32..}] xp_buffer 32
xp add @s[scores={xp_buffer=16..}] 16 levels
scoreboard players remove @s[scores={xp_buffer=16..}] xp_buffer 16
xp add @s[scores={xp_buffer=8..}] 8 levels
scoreboard players remove @s[scores={xp_buffer=8..}] xp_buffer 8
xp add @s[scores={xp_buffer=4..}] 4 levels
scoreboard players remove @s[scores={xp_buffer=4..}] xp_buffer 4
xp add @s[scores={xp_buffer=2..}] 2 levels
scoreboard players remove @s[scores={xp_buffer=2..}] xp_buffer 2
xp add @s[scores={xp_buffer=1..}] 1 levels

#stopping sound
stopsound @s * minecraft:entity.player.levelup