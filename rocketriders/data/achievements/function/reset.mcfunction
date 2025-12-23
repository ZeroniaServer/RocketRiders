##Operator function - resets all advancement progress for the executor
advancement revoke @s everything
tag @s remove CompletedVeteran
function achievements:veteranreset
scoreboard players reset @s useful
scoreboard players reset @s prevUseful
scoreboard players reset @s WinStreak
scoreboard players reset @s minedTNT
scoreboard players reset @s prevMinedTNT
scoreboard players reset @s fireballkill
scoreboard players reset @s HolyLand
scoreboard players reset @s gravShot
scoreboard players reset @s soulKills
scoreboard players reset @s prevKills
scoreboard players reset @s regifts
tag @s remove HolyLand
tag @s remove RainingMen
tag @s remove Regifting
tag @s remove SoulCollector
tag @s remove GravShootout