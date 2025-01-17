##############################################
## GAIN: The main function for achievements ##
## to be granted when a game is in progress ##
##############################################

#Necessary for fall distance check
execute as @a[x=0,team=Blue,predicate=!custom:not_falling] store result score @s FallDistance run data get entity @s FallDistance 50
execute as @a[x=0,team=Yellow,predicate=!custom:not_falling] store result score @s FallDistance run data get entity @s FallDistance 50

#Necessary for death check
scoreboard players add @a[x=0] PlayerDeaths 0
execute as @a[x=0] unless entity @s[team=!Yellow,team=!Blue] if score @s PlayerDeaths < @s deaths run tag @s add probablyDied
execute as @a[x=0] unless entity @s[team=!Yellow,team=!Blue] if score @s respawn matches 1.. run tag @s add probablyDied
scoreboard players add @a[x=0,tag=probablyDied] deathCooldown 1
execute as @a[x=0,tag=probablyDied,predicate=custom:is_on_fire] at @s run function game:putoutfire
execute as @a[x=0,tag=probablyDied] run effect clear @s levitation

#Removes Nova Rocket tags for dead players
tag @a[x=0,tag=probablyDied] remove YellowNovaNear
tag @a[x=0,tag=probablyDied] remove YellowNovaAttach
tag @a[x=0,tag=probablyDied] remove BlueNovaNear
tag @a[x=0,tag=probablyDied] remove BlueNovaAttach
scoreboard players reset @a[x=0,tag=probablyDied] novattach

#All achievements
execute if entity @s[scores={servermode=0,gametime=3..},tag=!realms] as @a[x=0] unless entity @s[team=!Yellow,team=!Blue] run function achievements:firewithin
execute if entity @s[scores={servermode=0},tag=!realms] as @a[x=0] unless entity @s[team=!Yellow,team=!Blue] run function achievements:getofflawn
execute if entity @s[scores={servermode=0,gametime=3..},tag=!realms] as @a[x=0] unless entity @s[team=!Yellow,team=!Blue] run function achievements:graverevenge
execute if entity @s[scores={servermode=0,gametime=3..},tag=!realms] as @a[x=0] unless entity @s[team=!Yellow,team=!Blue] run function achievements:underthesea
execute if entity @s[scores={servermode=0},tag=!realms] as @a[x=0] unless entity @s[team=!Yellow,team=!Blue] run function achievements:rainingmen
execute if entity @s[scores={servermode=0},tag=!realms] as @a[x=0] unless entity @s[team=!Yellow,team=!Blue] run function achievements:uphere
execute if entity @s[scores={servermode=0},tag=!realms] as @a[x=0] unless entity @s[team=!Yellow,team=!Blue] run function achievements:ballet
execute if entity @s[scores={servermode=0},tag=!realms] as @a[x=0] unless entity @s[team=!Yellow,team=!Blue] run function achievements:committed
execute if entity @s[scores={servermode=0},tag=!realms] as @a[x=0] unless entity @s[team=!Yellow,team=!Blue] run function achievements:soulcollector
execute if entity @s[scores={servermode=0},tag=!realms] as @a[x=0] unless entity @s[team=!Yellow,team=!Blue] run function achievements:blocksintobits
execute if entity @s[scores={servermode=0},tag=!realms] as @a[x=0] unless entity @s[team=!Yellow,team=!Blue] run function achievements:newworld
execute if entity @s[scores={servermode=0},tag=!realms] as @a[x=0] unless entity @s[team=!Yellow,team=!Blue] run function achievements:lockdown
execute if entity @s[scores={servermode=0},tag=!realms] as @a[x=0] unless entity @s[team=!Yellow,team=!Blue] run function achievements:volcanichatred
execute if entity @s[scores={gametime=5..,servermode=0},tag=!realms,tag=!TimeOut] as @a[x=0] unless entity @s[team=!Yellow,team=!Blue] run function achievements:traveler
execute if entity @s[scores={servermode=0},tag=!noPortal,tag=!realms] as @a[x=0] unless entity @s[team=!Yellow,team=!Blue] run function achievements:fallaway
execute if entity @s[scores={servermode=0},tag=!realms] as @a[x=0] unless entity @s[team=!Yellow,team=!Blue] run function achievements:gravitationalshootout
execute if entity @s[scores={servermode=0},tag=!realms] as @a[x=0] unless entity @s[team=!Yellow,team=!Blue] run function achievements:veteran
execute if entity @s[scores={servermode=0},tag=!realms] as @a[x=0] unless entity @s[team=!Yellow,team=!Blue] at @s run function achievements:useful
execute if entity @s[scores={servermode=0},tag=!realms] as @a[x=0] unless entity @s[team=!Yellow,team=!Blue] run function achievements:moonwalker
execute if entity @s[scores={servermode=0},tag=!realms] as @a[x=0] unless entity @s[team=!Yellow,team=!Blue] run function achievements:sabotage

#Necessary for on base check
execute if entity @s[tag=!Hardcore] as @a[x=0] unless entity @s[team=!Yellow,team=!Blue,tag=!probablyDied] at @s if entity @s[x=-15,dx=54,y=33,dy=40,z=-74,dz=28] run tag @s add onBlue
execute if entity @s[tag=!Hardcore] as @a[x=0] unless entity @s[team=!Yellow,team=!Blue,tag=!probablyDied] at @s if entity @s[x=-15,dx=54,y=33,dy=40,z=46,dz=28] run tag @s add onYellow
execute if entity @s[tag=!Hardcore] as @a[x=0,tag=onBlue] at @s unless entity @s[x=-15,dx=54,y=33,dy=40,z=-74,dz=28] run tag @s remove onBlue
execute if entity @s[tag=!Hardcore] as @a[x=0,tag=onYellow] at @s unless entity @s[x=-15,dx=54,y=33,dy=40,z=46,dz=28] run tag @s remove onYellow
execute if entity @s[tag=Hardcore] as @a[x=0] unless entity @s[team=!Yellow,team=!Blue,tag=!probablyDied] at @s if entity @s[x=-15,dx=54,y=33,dy=40,z=-74,dz=10] run tag @s add onBlue
execute if entity @s[tag=Hardcore] as @a[x=0] unless entity @s[team=!Yellow,team=!Blue,tag=!probablyDied] at @s if entity @s[x=-15,dx=54,y=33,dy=40,z=64,dz=10] run tag @s add onYellow
execute if entity @s[tag=Hardcore] as @a[x=0,tag=onBlue] at @s unless entity @s[x=-15,dx=54,y=33,dy=40,z=-74,dz=10] run tag @s remove onBlue
execute if entity @s[tag=Hardcore] as @a[x=0,tag=onYellow] at @s unless entity @s[x=-15,dx=54,y=33,dy=40,z=64,dz=10] run tag @s remove onYellow
tag @a[x=0,tag=onBlue,tag=probablyDied] remove onBlue
tag @a[x=0,tag=onYellow,tag=probablyDied] remove onYellow

#Necessary for death check (again)
execute as @a[x=0,scores={deathCooldown=20..}] run scoreboard players operation @s PlayerDeaths = @s deaths
execute as @a[x=0,scores={deathCooldown=20..}] run tag @s remove probablyDied
execute as @a[x=0,scores={deathCooldown=20..}] run tag @s remove stopCheckingDeath
execute as @a[x=0,scores={deathCooldown=20..}] if score @s PlayerDeaths = @s deaths run scoreboard players set @s deathCooldown 0

#Necessary for fall distance check (again)
execute as @a[x=0,team=Blue] at @s if predicate custom:not_falling run scoreboard players reset @s FallDistance
execute as @a[x=0,team=Yellow] at @s if predicate custom:not_falling run scoreboard players reset @s FallDistance