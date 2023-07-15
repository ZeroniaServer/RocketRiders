#Items
execute if entity @s[scores={servermode=0},tag=!SMCustom] as @a[tag=JoinBlue] run function rr_swap:baseswap/gear
execute unless entity @s[scores={servermode=0},tag=!SMCustom] as @a[tag=JoinBlue] run function servermode:giveswapgear

execute if entity @s[scores={servermode=0},tag=!SMCustom] as @a[tag=JoinYellow] run function rr_swap:baseswap/gear
execute unless entity @s[scores={servermode=0},tag=!SMCustom] as @a[tag=JoinYellow] run function servermode:giveswapgear

#Spawnpoints
execute if entity @s[tag=GameStarted] as @a[team=Blue,nbt=!{SpawnX:12,SpawnY:64,SpawnZ:-66}] run spawnpoint @s 12 64 -66 0
execute if entity @s[tag=GameStarted] as @a[team=Yellow,nbt=!{SpawnX:12,SpawnY:64,SpawnZ:66}] run spawnpoint @s 12 64 66 -180

#Give first item to anyone who joins within 1st second
execute if entity @s[tag=GameStarted,scores={gametime=3..20}] if score SwapSide swapside matches 1 run function rr_swap:items/givefirstdarkblue
execute if entity @s[tag=GameStarted,scores={gametime=3..20}] if score SwapSide swapside matches 0 run function rr_swap:items/givefirstlightblue

#Tag Removal
tag @a remove JoinBlue
tag @a remove JoinYellow

#Countdown
execute if entity @s[tag=EditedSettings,tag=!SMCustom] if entity @a[team=Blue] if entity @a[team=Yellow] run tag @s[tag=!GameStarted] add Countdown
execute if entity @s[tag=EditedSettings,tag=Countdown,tag=!SMCustom] unless entity @a[team=Blue] run function game:restartcountdown
execute if entity @s[tag=EditedSettings,tag=Countdown,tag=!SMCustom] unless entity @a[team=Yellow] run function game:restartcountdown

execute if entity @s[tag=EditedSettings,tag=SMCustom] if entity @a[team=Blue] run tag @s[tag=!GameStarted] add Countdown
execute if entity @s[tag=EditedSettings,tag=SMCustom] if entity @a[team=Yellow] run tag @s[tag=!GameStarted] add Countdown
execute if entity @s[tag=EditedSettings,tag=Countdown,tag=SMCustom] unless entity @a[team=Blue] unless entity @a[team=Yellow] run function game:restartcountdown

execute if entity @s[scores={count=600},tag=!GameEnd] run scoreboard players set QuickSwap swapside 0
execute if entity @s[scores={count=600},tag=!GameEnd] run scoreboard players set SwapPlatformSec swapside 60
execute if entity @s[scores={count=600},tag=!GameEnd] run scoreboard players set SwapPlatformTick swapside 0
execute if entity @s[scores={count=600},tag=!GameEnd] run function rr_swap:items/tetrisreset
execute if entity @s[scores={count=600},tag=!GameEnd] run tag @s add GameStarted