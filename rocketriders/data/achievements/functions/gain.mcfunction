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
scoreboard players add @a PlayerDeaths 0
execute as @a unless entity @s[team=!Yellow,team=!Blue] if score @s PlayerDeaths < @s deaths run scoreboard players add @s deathCooldown 1
execute as @a[scores={deathCooldown=2..}] run scoreboard players operation @s PlayerDeaths = @s deaths
execute as @a[scores={deathCooldown=2..}] if score @s PlayerDeaths = @s deaths run scoreboard players reset @s deathCooldown

#necessary for fall distance check (again)
execute as @a[team=Blue] at @s if entity @s[nbt={FallDistance:0.0f}] run scoreboard players reset @s FallDistance
execute as @a[team=Yellow] at @s if entity @s[nbt={FallDistance:0.0f}] run scoreboard players reset @s FallDistance