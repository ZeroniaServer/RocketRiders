##############################################
## GAIN: The main function for achievements ##
## to be granted when a game is in progress ##
##############################################

#Necessary for fall distance check
execute as @a[team=Blue] at @s unless entity @s[nbt={FallDistance:0.0f}] store result score @s FallDistance run data get entity @s FallDistance 50
execute as @a[team=Yellow] at @s unless entity @s[nbt={FallDistance:0.0f}] store result score @s FallDistance run data get entity @s FallDistance 50

#All achievements
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
execute unless entity @s[tag=noPortal] run function achievements:fallaway
function achievements:gravitationalshootout
function achievements:veteran
function achievements:useful
function achievements:moonwalker
function achievements:sabotage

#Necessary for death check
scoreboard players add @a PlayerDeaths 0
execute as @a unless entity @s[team=!Yellow,team=!Blue] if score @s PlayerDeaths < @s deaths run scoreboard players add @s deathCooldown 1

#Necessary for on base check
execute as @a unless entity @s[team=!Yellow,team=!Blue] unless score @s PlayerDeaths < @s deaths unless score @s deathCooldown matches 1.. at @s if entity @s[x=-15,dx=54,y=33,dy=40,z=-74,dz=28] run tag @s add onBlue
execute as @a unless entity @s[team=!Yellow,team=!Blue] unless score @s PlayerDeaths < @s deaths unless score @s deathCooldown matches 1.. at @s if entity @s[x=-15,dx=54,y=33,dy=40,z=46,dz=28] run tag @s add onYellow
execute as @a[tag=onBlue] unless score @s deathCooldown matches 1.. at @s unless entity @s[x=-15,dx=54,y=33,dy=40,z=-74,dz=28] run tag @s remove onBlue
execute as @a[tag=onYellow] unless score @s deathCooldown matches 1.. at @s unless entity @s[x=-15,dx=54,y=33,dy=40,z=46,dz=28] run tag @s remove onYellow

#Necessary for death check (again)
execute as @a[scores={deathCooldown=4..}] run scoreboard players operation @s PlayerDeaths = @s deaths
execute as @a[scores={deathCooldown=4..}] if score @s PlayerDeaths = @s deaths run scoreboard players reset @s deathCooldown

#Necessary for fall distance check (again)
execute as @a[team=Blue] at @s if entity @s[nbt={FallDistance:0.0f}] run scoreboard players reset @s FallDistance
execute as @a[team=Yellow] at @s if entity @s[nbt={FallDistance:0.0f}] run scoreboard players reset @s FallDistance