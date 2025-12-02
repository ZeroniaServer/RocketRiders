##Selects map based on the set that won

#New Dawn map (default)
execute if entity @s[tag=DefaultMap] run scoreboard players set $arena_details/top config 1
execute if entity @s[tag=DefaultMap] run scoreboard players set $arena_details/top_sides config 1
execute if entity @s[tag=DefaultMap] run scoreboard players set $arena_details/middle config 1
execute if entity @s[tag=DefaultMap] run scoreboard players set $arena_details/bottom config 1
execute if entity @s[tag=DefaultMap] run scoreboard players set $arena_details/portal config 1

#Spikes map
execute if entity @s[tag=SpikesMap] run scoreboard players set $arena_details/top config 3
execute if entity @s[tag=SpikesMap] run scoreboard players set $arena_details/top_sides config 2
execute if entity @s[tag=SpikesMap] run scoreboard players set $arena_details/middle config 2
execute if entity @s[tag=SpikesMap] run scoreboard players set $arena_details/bottom config 2
execute if entity @s[tag=SpikesMap] run scoreboard players set $arena_details/portal config 1

#Empty map
execute if entity @s[tag=EmptyMap] run scoreboard players set $arena_details/top config 0
execute if entity @s[tag=EmptyMap] run scoreboard players set $arena_details/top_sides config 0
execute if entity @s[tag=EmptyMap] run scoreboard players set $arena_details/middle config 0
execute if entity @s[tag=EmptyMap] run scoreboard players set $arena_details/bottom config 0
execute if entity @s[tag=EmptyMap] run scoreboard players set $arena_details/portal config 0

#The Castle crusade map (Empty. Base design is forced.)
execute if entity @s[tag=TheCastle] run scoreboard players set $arena_details/top config 0
execute if entity @s[tag=TheCastle] run scoreboard players set $arena_details/top_sides config 0
execute if entity @s[tag=TheCastle] run scoreboard players set $arena_details/middle config 0
execute if entity @s[tag=TheCastle] run scoreboard players set $arena_details/bottom config 0
execute if entity @s[tag=TheCastle] run scoreboard players set $arena_details/portal config 0

#Randomized map
execute if entity @s[tag=RandomMap] store result score $arena_details/top config run random value 1..3
execute if entity @s[tag=RandomMap] store result score $arena_details/top_sides config run random value 1..3
execute if entity @s[tag=RandomMap] store result score $arena_details/middle config run random value 1..3
execute if entity @s[tag=RandomMap] store result score $arena_details/bottom config run random value 1..3

#Extra precaution - no bottom deco if layered is on
execute if predicate game:arena_details/middle/layered run scoreboard players reset $arena_details/bottom config

#Always use glass rim portals
scoreboard players set $arena_details/portal config 1
