##Veteran achievement
##Checks for a player using every missile/utility in the game

#Missiles
execute as @a[tag=!CompletedVeteran] if score @s AuxSpawned matches 1.. run tag @s add AuxSpawned
execute as @a[tag=!CompletedVeteran] if score @s AntsSpawned matches 1.. run tag @s add AntsSpawned
execute as @a[tag=!CompletedVeteran] if score @s BladeSpawned matches 1.. run tag @s add BladeSpawned
execute as @a[tag=!CompletedVeteran] if score @s BroadSpawned matches 1.. run tag @s add BroadSpawned
execute as @a[tag=!CompletedVeteran] if score @s BulletSpawned matches 1.. run tag @s add BulletSpawned
execute as @a[tag=!CompletedVeteran] if score @s DuplexSpawned matches 1.. run tag @s add DuplexSpawned
execute as @a[tag=!CompletedVeteran] if score @s CataSpawned matches 1.. run tag @s add CataSpawned
execute as @a[tag=!CompletedVeteran] if score @s CitaSpawned matches 1.. run tag @s add CitaSpawned
execute as @a[tag=!CompletedVeteran] if score @s GemiSpawned matches 1.. run tag @s add GemiSpawned
execute as @a[tag=!CompletedVeteran] if score @s GuardSpawned matches 1.. run tag @s add GuardSpawned
execute as @a[tag=!CompletedVeteran] if score @s HurSpawned matches 1.. run tag @s add HurSpawned
execute as @a[tag=!CompletedVeteran] if score @s HyperSpawned matches 1.. run tag @s add HyperSpawned
execute as @a[tag=!CompletedVeteran] if score @s JugbSpawned matches 1.. run tag @s add JugbSpawned
execute as @a[tag=!CompletedVeteran] if score @s LifterSpawned matches 1.. run tag @s add LifterSpawned
execute as @a[tag=!CompletedVeteran] if score @s NullSpawned matches 1.. run tag @s add NullSpawned
execute as @a[tag=!CompletedVeteran] if score @s RifterSpawned matches 1.. run tag @s add RifterSpawned
execute as @a[tag=!CompletedVeteran] if score @s SlashSpawned matches 1.. run tag @s add SlashSpawned
execute as @a[tag=!CompletedVeteran] if score @s ThunSpawned matches 1.. run tag @s add ThunSpawned
execute as @a[tag=!CompletedVeteran] if score @s TomaSpawned matches 1.. run tag @s add TomaSpawned
execute as @a[tag=!CompletedVeteran] if score @s WarSpawned matches 1.. run tag @s add WarSpawned

#Utilities
execute as @a[tag=!CompletedVeteran] if score @s FireballSpawned matches 1.. run tag @s add FireballSpawned
execute as @a[tag=!CompletedVeteran] if score @s ObshieldSpawned matches 1.. run tag @s add ObshieldSpawned
execute as @a[tag=!CompletedVeteran] if score @s ThrowPlat matches 1.. run tag @s add CanopySpawned
execute as @a[tag=!CompletedVeteran] if score @s ThrowShield matches 1.. run tag @s add ShieldSpawned
execute as @a[tag=!CompletedVeteran] if score @s ThrowSplash matches 1.. run tag @s add SplashSpawned
execute as @a[tag=!CompletedVeteran] if score @s ThrowVortex matches 1.. run tag @s add VortexSpawned
execute as @a[tag=!CompletedVeteran] if score @s NovaShot matches 1.. run tag @s add NovaSpawned
execute as @a[tag=!CompletedVeteran] if score @s BowShot matches 1.. run tag @s add ArrowSpawned

#Final check
tag @a[tag=!CompletedVeteran,tag=AuxSpawned,tag=AntsSpawned,tag=BladeSpawned,tag=BroadSpawned,tag=BulletSpawned,tag=CataSpawned,tag=CitaSpawned,tag=DuplexSpawned,tag=GemiSpawned,tag=GuardSpawned,tag=HurSpawned,tag=HyperSpawned,tag=JugbSpawned,tag=LifterSpawned,tag=NullSpawned,tag=RifterSpawned,tag=SlashSpawned,tag=ThunSpawned,tag=TomaSpawned,tag=WarSpawned,tag=FireballSpawned,tag=ObshieldSpawned,tag=CanopySpawned,tag=ShieldSpawned,tag=SplashSpawned,tag=VortexSpawned,tag=NovaSpawned,tag=ArrowSpawned] add CompletedVeteran
advancement grant @a[tag=CompletedVeteran] only achievements:rr_challenges/veteran
execute as @a[tag=CompletedVeteran] run function achievements:veteranreset