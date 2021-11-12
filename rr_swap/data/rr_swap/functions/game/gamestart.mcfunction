#Items
execute if entity @s[scores={servermode=0},tag=!SMCustom] as @a[tag=JoinBlue] run function rr_swap:baseswap/gear
execute unless entity @s[scores={servermode=0},tag=!SMCustom] as @a[tag=JoinBlue] run function servermode:giveswapgear

execute if entity @s[scores={servermode=0},tag=!SMCustom] as @a[tag=JoinYellow] run function rr_swap:baseswap/gear
execute unless entity @s[scores={servermode=0},tag=!SMCustom] as @a[tag=JoinYellow] run function servermode:giveswapgear

#Spawnpoints
execute if entity @s[tag=GameStarted] as @a[team=Blue,nbt=!{SpawnX:12,SpawnY:64,SpawnZ:-66}] run spawnpoint @s 12 64 -66 0
execute if entity @s[tag=GameStarted] as @a[team=Yellow,nbt=!{SpawnX:12,SpawnY:64,SpawnZ:66}] run spawnpoint @s 12 64 66 -180

#Hardcore compatibility
execute if entity @s[tag=GameStarted,tag=Hardcore] run function modifiers:hardcorekill

#Tag Removal
tag @a remove JoinBlue
tag @a remove JoinYellow

#Countdown
execute if entity @s[tag=EditedSettings] if entity @a[team=Blue] if entity @a[team=Yellow] run tag @s[tag=!GameStarted] add Countdown
execute if entity @s[tag=EditedSettings,tag=Countdown] unless entity @a[team=Blue] run function game:restartcountdown
execute if entity @s[tag=EditedSettings,tag=Countdown] unless entity @a[team=Yellow] run function game:restartcountdown
execute if entity @s[scores={count=600},tag=!GameEnd] run scoreboard players set QuickSwap swapside 0
execute if entity @s[scores={count=600},tag=!GameEnd] run scoreboard players set SwapPlatformSec swapside 60
execute if entity @s[scores={count=600},tag=!GameEnd] run scoreboard players set SwapPlatformTick swapside 0
execute if entity @s[scores={count=600},tag=!GameEnd] run function rr_swap:items/darktetrisreset
execute if entity @s[scores={count=600},tag=!GameEnd] run function rr_swap:items/lighttetrisreset
execute if entity @s[scores={count=600},tag=!GameEnd] run tag @s add GameStarted