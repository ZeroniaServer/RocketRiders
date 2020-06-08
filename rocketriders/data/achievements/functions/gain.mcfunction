#necessary for fall distance check
execute as @a[team=Blue] at @s unless entity @s[nbt={FallDistance:0.0f}] store result score @s FallDistance run data get entity @s FallDistance 50
execute as @a[team=Yellow] at @s unless entity @s[nbt={FallDistance:0.0f}] store result score @s FallDistance run data get entity @s FallDistance 50

function achievements:firewithin
function achievements:getofflawn
function achievements:graverevenge
function achievements:underthesea
function achievements:rainingmen
function achievements:uphere
function achievements:ballet
function achievements:committed
function achievements:soulcollector
function achievements:blocksintobits
function achievements:newworld
function achievements:lockdown
function achievements:volcanichatred
function achievements:traveler
function achievements:fallaway
function achievements:gravitationalshootout
function achievements:veteran

#necessary for death check
execute as @a unless entity @s[team=!Yellow,team=!Blue] run scoreboard players operation @s PlayerDeaths = @s deaths

#necessary for fall distance check (again)
execute as @a[team=Blue] at @s if entity @s[nbt={FallDistance:0.0f}] run scoreboard players reset @s FallDistance
execute as @a[team=Yellow] at @s if entity @s[nbt={FallDistance:0.0f}] run scoreboard players reset @s FallDistance