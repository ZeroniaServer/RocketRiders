##############################################
## GAIN: The main function for achievements ##
## to be granted when a game is in progress ##
##############################################

#Necessary for fall distance check
execute as @a[team=Blue] at @s unless entity @s[nbt={FallDistance:0.0f}] store result score @s FallDistance run data get entity @s FallDistance 50
execute as @a[team=Yellow] at @s unless entity @s[nbt={FallDistance:0.0f}] store result score @s FallDistance run data get entity @s FallDistance 50

#Necessary for death check
scoreboard players add @a PlayerDeaths 0
execute as @a unless entity @s[team=!Yellow,team=!Blue] if score @s PlayerDeaths < @s deaths run tag @s add probablyDied
execute as @a unless entity @s[team=!Yellow,team=!Blue] if score @s respawn matches 1.. run tag @s add probablyDied
scoreboard players add @a[tag=probablyDied] deathCooldown 1
execute as @a[tag=probablyDied,predicate=custom:is_on_fire] at @s run function game:putoutfire
execute as @a[tag=probablyDied] run effect clear @s levitation

#Removes Nova Rocket tags for dead players
tag @a[tag=probablyDied] remove YellowNovaNear
tag @a[tag=probablyDied] remove YellowNovaAttach
tag @a[tag=probablyDied] remove BlueNovaNear
tag @a[tag=probablyDied] remove BlueNovaAttach
scoreboard players reset @a[tag=probablyDied] novattach

#All achievements
execute if entity @s[scores={servermode=0},tag=!realms,tag=!SMCustom] as @a unless entity @s[team=!Yellow,team=!Blue] run function achievements:firewithin
execute if entity @s[scores={servermode=0},tag=!realms,tag=!SMCustom] as @a unless entity @s[team=!Yellow,team=!Blue] run function achievements:getofflawn
execute if entity @s[scores={servermode=0,gametime=3..},tag=!realms,tag=!SMCustom] as @a unless entity @s[team=!Yellow,team=!Blue] run function achievements:graverevenge
execute if entity @s[scores={servermode=0},tag=!realms,tag=!SMCustom] as @a unless entity @s[team=!Yellow,team=!Blue] run function achievements:underthesea
execute if entity @s[scores={servermode=0},tag=!realms,tag=!SMCustom] as @a unless entity @s[team=!Yellow,team=!Blue] run function achievements:rainingmen
execute if entity @s[scores={servermode=0},tag=!realms,tag=!SMCustom] as @a unless entity @s[team=!Yellow,team=!Blue] run function achievements:uphere
execute if entity @s[scores={servermode=0},tag=!realms,tag=!SMCustom] as @a unless entity @s[team=!Yellow,team=!Blue] run function achievements:ballet
execute if entity @s[scores={servermode=0},tag=!realms,tag=!SMCustom] as @a unless entity @s[team=!Yellow,team=!Blue] run function achievements:committed
execute if entity @s[scores={servermode=0},tag=!realms,tag=!SMCustom] as @a unless entity @s[team=!Yellow,team=!Blue] run function achievements:soulcollector
execute if entity @s[scores={servermode=0},tag=!realms,tag=!SMCustom] as @a unless entity @s[team=!Yellow,team=!Blue] run function achievements:blocksintobits
execute if entity @s[scores={servermode=0},tag=!realms,tag=!SMCustom] as @a unless entity @s[team=!Yellow,team=!Blue] run function achievements:newworld
execute if entity @s[scores={servermode=0},tag=!realms,tag=!SMCustom] as @a unless entity @s[team=!Yellow,team=!Blue] run function achievements:lockdown
execute if entity @s[scores={servermode=0},tag=!realms,tag=!SMCustom] as @a unless entity @s[team=!Yellow,team=!Blue] run function achievements:volcanichatred
execute if entity @s[scores={gametime=5..,servermode=0},tag=!realms,tag=!SMCustom] as @a unless entity @s[team=!Yellow,team=!Blue] run function achievements:traveler
execute if entity @s[scores={servermode=0},tag=!noPortal,tag=!realms,tag=!SMCustom] as @a unless entity @s[team=!Yellow,team=!Blue] run function achievements:fallaway
execute if entity @s[scores={servermode=0},tag=!realms,tag=!SMCustom] as @a unless entity @s[team=!Yellow,team=!Blue] run function achievements:gravitationalshootout
execute if entity @s[scores={servermode=0},tag=!realms,tag=!SMCustom] as @a unless entity @s[team=!Yellow,team=!Blue] run function achievements:veteran
execute if entity @s[scores={servermode=0},tag=!realms,tag=!SMCustom] as @a unless entity @s[team=!Yellow,team=!Blue] at @s run function achievements:useful
execute if entity @s[scores={servermode=0},tag=!realms,tag=!SMCustom] as @a unless entity @s[team=!Yellow,team=!Blue] run function achievements:moonwalker
execute if entity @s[scores={servermode=0},tag=!realms,tag=!SMCustom] as @a unless entity @s[team=!Yellow,team=!Blue] run function achievements:sabotage

#Necessary for on base check
execute if entity @s[tag=!Hardcore] as @a unless entity @s[team=!Yellow,team=!Blue,tag=!probablyDied] at @s if entity @s[x=-15,dx=54,y=33,dy=40,z=-74,dz=28] run tag @s add onBlue
execute if entity @s[tag=!Hardcore] as @a unless entity @s[team=!Yellow,team=!Blue,tag=!probablyDied] at @s if entity @s[x=-15,dx=54,y=33,dy=40,z=46,dz=28] run tag @s add onYellow
execute if entity @s[tag=!Hardcore] as @a[tag=onBlue] at @s unless entity @s[x=-15,dx=54,y=33,dy=40,z=-74,dz=28] run tag @s remove onBlue
execute if entity @s[tag=!Hardcore] as @a[tag=onYellow] at @s unless entity @s[x=-15,dx=54,y=33,dy=40,z=46,dz=28] run tag @s remove onYellow
execute if entity @s[tag=Hardcore] as @a unless entity @s[team=!Yellow,team=!Blue,tag=!probablyDied] at @s if entity @s[x=-15,dx=54,y=33,dy=40,z=-74,dz=10] run tag @s add onBlue
execute if entity @s[tag=Hardcore] as @a unless entity @s[team=!Yellow,team=!Blue,tag=!probablyDied] at @s if entity @s[x=-15,dx=54,y=33,dy=40,z=64,dz=10] run tag @s add onYellow
execute if entity @s[tag=Hardcore] as @a[tag=onBlue] at @s unless entity @s[x=-15,dx=54,y=33,dy=40,z=-74,dz=10] run tag @s remove onBlue
execute if entity @s[tag=Hardcore] as @a[tag=onYellow] at @s unless entity @s[x=-15,dx=54,y=33,dy=40,z=64,dz=10] run tag @s remove onYellow
tag @a[tag=onBlue,tag=probablyDied] remove onBlue
tag @a[tag=onYellow,tag=probablyDied] remove onYellow

#Necessary for death check (again)
execute as @a[scores={deathCooldown=20..}] run scoreboard players operation @s PlayerDeaths = @s deaths
execute as @a[scores={deathCooldown=20..}] run tag @s remove probablyDied
execute as @a[scores={deathCooldown=20..}] run tag @s remove stopCheckingDeath
execute as @a[scores={deathCooldown=20..}] if score @s PlayerDeaths = @s deaths run scoreboard players set @s deathCooldown 0

#Necessary for fall distance check (again)
execute as @a[team=Blue] at @s if entity @s[nbt={FallDistance:0.0f}] run scoreboard players reset @s FallDistance
execute as @a[team=Yellow] at @s if entity @s[nbt={FallDistance:0.0f}] run scoreboard players reset @s FallDistance