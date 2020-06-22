#binary search algorithm to subtract daytime
execute if entity @s[scores={daytime=16384..}] run time add 16384
execute if entity @s[scores={daytime=16384..}] run scoreboard players remove @s daytime 16384

execute if entity @s[scores={daytime=8192..}] run time add 8192
execute if entity @s[scores={daytime=8192..}] run scoreboard players remove @s daytime 8192

execute if entity @s[scores={daytime=4096..}] run time add 4096
execute if entity @s[scores={daytime=4096..}] run scoreboard players remove @s daytime 4096

execute if entity @s[scores={daytime=2048..}] run time add 2048
execute if entity @s[scores={daytime=2048..}] run scoreboard players remove @s daytime 2048

execute if entity @s[scores={daytime=1024..}] run time add 1024
execute if entity @s[scores={daytime=1024..}] run scoreboard players remove @s daytime 1024

execute if entity @s[scores={daytime=512..}] run time add 512
execute if entity @s[scores={daytime=512..}] run scoreboard players remove @s daytime 512

execute if entity @s[scores={daytime=256..}] run time add 256
execute if entity @s[scores={daytime=256..}] run scoreboard players remove @s daytime 256

execute if entity @s[scores={daytime=128..}] run time add 128
execute if entity @s[scores={daytime=128..}] run scoreboard players remove @s daytime 128

execute if entity @s[scores={daytime=64..}] run time add 64
execute if entity @s[scores={daytime=64..}] run scoreboard players remove @s daytime 64

execute if entity @s[scores={daytime=32..}] run time add 32
execute if entity @s[scores={daytime=32..}] run scoreboard players remove @s daytime 32

execute if entity @s[scores={daytime=16..}] run time add 16
execute if entity @s[scores={daytime=16..}] run scoreboard players remove @s daytime 16

execute if entity @s[scores={daytime=8..}] run time add 8
execute if entity @s[scores={daytime=8..}] run scoreboard players remove @s daytime 8

execute if entity @s[scores={daytime=4..}] run time add 4
execute if entity @s[scores={daytime=4..}] run scoreboard players remove @s daytime 4

execute if entity @s[scores={daytime=2..}] run time add 2
execute if entity @s[scores={daytime=2..}] run scoreboard players remove @s daytime 2

execute if entity @s[scores={daytime=1..}] run time add 1
execute if entity @s[scores={daytime=1..}] run scoreboard players remove @s daytime 1

#recurs if daytime still > 1
execute if entity @s[scores={daytime=1..}] run function arenaclear:daytimeadd