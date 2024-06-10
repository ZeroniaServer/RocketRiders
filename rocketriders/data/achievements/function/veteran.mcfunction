##Veteran achievement
##Checks for a player using every missile/utility in the game

#Missiles
execute if entity @s[tag=!CompletedVeteran] if score @s AuxSpawned matches 1.. run tag @s add AuxSpawned
execute if entity @s[tag=!CompletedVeteran] if score @s AntsSpawned matches 1.. run tag @s add AntsSpawned
execute if entity @s[tag=!CompletedVeteran] if score @s BladeSpawned matches 1.. run tag @s add BladeSpawned
execute if entity @s[tag=!CompletedVeteran] if score @s BroadSpawned matches 1.. run tag @s add BroadSpawned
execute if entity @s[tag=!CompletedVeteran] if score @s BulletSpawned matches 1.. run tag @s add BulletSpawned
execute if entity @s[tag=!CompletedVeteran] if score @s DuplexSpawned matches 1.. run tag @s add DuplexSpawned
execute if entity @s[tag=!CompletedVeteran] if score @s CataSpawned matches 1.. run tag @s add CataSpawned
execute if entity @s[tag=!CompletedVeteran] if score @s CitaSpawned matches 1.. run tag @s add CitaSpawned
execute if entity @s[tag=!CompletedVeteran] if score @s GemiSpawned matches 1.. run tag @s add GemiSpawned
execute if entity @s[tag=!CompletedVeteran] if score @s GuardSpawned matches 1.. run tag @s add GuardSpawned
execute if entity @s[tag=!CompletedVeteran] if score @s HurSpawned matches 1.. run tag @s add HurSpawned
execute if entity @s[tag=!CompletedVeteran] if score @s HyperSpawned matches 1.. run tag @s add HyperSpawned
execute if entity @s[tag=!CompletedVeteran] if score @s JugbSpawned matches 1.. run tag @s add JugbSpawned
execute if entity @s[tag=!CompletedVeteran] if score @s LifterSpawned matches 1.. run tag @s add LifterSpawned
execute if entity @s[tag=!CompletedVeteran] if score @s NullSpawned matches 1.. run tag @s add NullSpawned
execute if entity @s[tag=!CompletedVeteran] if score @s RifterSpawned matches 1.. run tag @s add RifterSpawned
execute if entity @s[tag=!CompletedVeteran] if score @s SlashSpawned matches 1.. run tag @s add SlashSpawned
execute if entity @s[tag=!CompletedVeteran] if score @s ThunSpawned matches 1.. run tag @s add ThunSpawned
execute if entity @s[tag=!CompletedVeteran] if score @s TomaSpawned matches 1.. run tag @s add TomaSpawned
execute if entity @s[tag=!CompletedVeteran] if score @s WarSpawned matches 1.. run tag @s add WarSpawned

#Utilities
execute if entity @s[tag=!CompletedVeteran] if score @s FireballSpawned matches 1.. run tag @s add FireballSpawned
execute if entity @s[tag=!CompletedVeteran] if score @s ObshieldSpawned matches 1.. run tag @s add ObshieldSpawned
execute if entity @s[tag=!CompletedVeteran] if score @s ThrowPlat matches 1.. run tag @s add CanopySpawned
execute if entity @s[tag=!CompletedVeteran] if score @s ThrowShield matches 1.. run tag @s add ShieldSpawned
execute if entity @s[tag=!CompletedVeteran] if score @s ThrowSplash matches 1.. run tag @s add SplashSpawned
execute if entity @s[tag=!CompletedVeteran] if score @s ThrowVortex matches 1.. run tag @s add VortexSpawned
execute if entity @s[tag=!CompletedVeteran] if score @s NovaShot matches 1.. run tag @s add NovaSpawned
execute if entity @s[tag=!CompletedVeteran] if score @s BowShot matches 1.. run tag @s add ArrowSpawned

#Final check
tag @s[tag=!CompletedVeteran,tag=AuxSpawned,tag=AntsSpawned,tag=BladeSpawned,tag=BroadSpawned,tag=BulletSpawned,tag=CataSpawned,tag=CitaSpawned,tag=DuplexSpawned,tag=GemiSpawned,tag=GuardSpawned,tag=HurSpawned,tag=HyperSpawned,tag=JugbSpawned,tag=LifterSpawned,tag=NullSpawned,tag=RifterSpawned,tag=SlashSpawned,tag=ThunSpawned,tag=TomaSpawned,tag=WarSpawned,tag=FireballSpawned,tag=ObshieldSpawned,tag=CanopySpawned,tag=ShieldSpawned,tag=SplashSpawned,tag=VortexSpawned,tag=NovaSpawned,tag=ArrowSpawned] add CompletedVeteran
advancement grant @s[tag=CompletedVeteran] only achievements:rr_challenges/veteran
execute if entity @s[tag=CompletedVeteran] run function achievements:veteranreset