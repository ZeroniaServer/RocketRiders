## Repositioning
execute at @s unless block ~ ~ ~ #custom:nonsolid if block ~ ~1 ~ #custom:nonsolid run tp @s ~ ~1 ~
execute at @s unless block ~ ~ ~ #custom:nonsolid if block ~ ~-1 ~ #custom:nonsolid run tp @s ~ ~-1 ~
execute at @s if block ~ ~ ~ #custom:nonsolid unless block ~ ~1 ~ #custom:nonsolid run tp @s ~ ~-1 ~
execute at @s run tp @s ~ ~1.2 ~

## Checks
execute at @s if predicate custom:near_void if function items:spawn_egg/give_back/obsidian_shield run return run title @a[limit=1,tag=spawn_egg.placer] actionbar {color:"red",text:"You cannot spawn obsidian shields at this height"}

execute at @s if predicate custom:near_or_above_roof if function items:spawn_egg/give_back/obsidian_shield run return run title @a[limit=1,tag=spawn_egg.placer] actionbar {color:"red",text:"You cannot spawn obsidian shields at this height"}

## Summon
execute if predicate game:achievements_can_be_awarded run advancement grant @a[limit=1,tag=spawn_egg.placer] only achievements:rr_challenges/veteran ObshieldSpawned

execute at @s run playsound minecraft:item.flintandsteel.use master @a[distance=..6] ~ ~ ~ 1 1
execute at @s run playsound minecraft:block.respawn_anchor.charge master @a[distance=..6] ~ ~ ~ 0.5 1

execute unless score $spawn_egg.placer_team var matches 1 at @s run summon minecraft:dragon_fireball ~ ~ ~ {Tags:["blueobfireball","obfireball"],Motion:[0.0d,0.0d,0.0d],HasVisualFire:true,Passengers:[{id:"minecraft:marker",Tags:["blueobtracker"]}],acceleration_power:0}
execute if score $spawn_egg.placer_team var matches 1 at @s run summon minecraft:dragon_fireball ~ ~ ~ {Tags:["yellowobfireball","obfireball"],Motion:[0.0d,0.0d,0.0d],HasVisualFire:true,Passengers:[{id:"minecraft:marker",Tags:["yellowobtracker"]}],acceleration_power:0}
