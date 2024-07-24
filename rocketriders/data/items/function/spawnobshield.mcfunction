#Void spawn prevention
execute at @s[tag=BlueObshield,tag=!UnableSpawn] if predicate custom:nearvoid run tag @s add void
execute at @s[tag=BlueObshield,tag=!UnableSpawn] if predicate custom:nearvoid run tag @s add UnableSpawn
execute at @s[tag=YellowObshield,tag=!UnableSpawn] if predicate custom:nearvoid run tag @s add void
execute at @s[tag=YellowObshield,tag=!UnableSpawn] if predicate custom:nearvoid run tag @s add UnableSpawn

#Roof spawn prevention
execute at @s[tag=BlueObshield,tag=!UnableSpawn] if predicate custom:verynearroof run tag @s add roof
execute at @s[tag=BlueObshield,tag=!UnableSpawn] if predicate custom:verynearroof run tag @s add UnableSpawn
execute at @s[tag=YellowObshield,tag=!UnableSpawn] if predicate custom:verynearroof run tag @s add roof
execute at @s[tag=YellowObshield,tag=!UnableSpawn] if predicate custom:verynearroof run tag @s add UnableSpawn

#Give back if prevented
execute at @s[tag=UnableSpawn] run function items:prevention/unablefx
execute at @s[tag=UnableSpawn] run return run function items:prevention/giveback

#Spawning in Blue entities
execute at @s[tag=BlueObshield] unless block ~ ~ ~ #custom:nonsolid run tp @s ~ ~1 ~
execute at @s[tag=BlueObshield] run summon dragon_fireball ~ ~1.2 ~ {Tags:["blueobfireball","obfireball"],Motion:[0.0d,0.0d,0.0d],HasVisualFire:true,Passengers:[{id:"minecraft:marker",Tags:["blueobtracker"]}]}
execute at @s[tag=BlueObshield] as @a[distance=..6] run playsound minecraft:item.flintandsteel.use master @s ~ ~ ~ 1 1
execute at @s[tag=BlueObshield] as @a[distance=..6] run playsound minecraft:block.respawn_anchor.charge master @s ~ ~ ~ 0.5 1

#Spawning in Yellow entities
execute at @s[tag=YellowObshield] unless block ~ ~ ~ #custom:nonsolid run tp @s ~ ~1 ~
execute at @s[tag=YellowObshield] run summon dragon_fireball ~ ~1.2 ~ {Tags:["yellowobfireball","obfireball"],Motion:[0.0d,0.0d,0.0d],HasVisualFire:true,Passengers:[{id:"minecraft:marker",Tags:["yellowobtracker"]}]}
execute at @s[tag=YellowObshield] as @a[distance=..6] run playsound minecraft:item.flintandsteel.use master @s ~ ~ ~ 1 1
execute at @s[tag=YellowObshield] as @a[distance=..6] run playsound minecraft:block.respawn_anchor.charge master @s ~ ~ ~ 0.5 1

kill @s