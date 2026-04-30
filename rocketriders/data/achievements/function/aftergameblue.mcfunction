##Any achievements/conditions to be given if Blue wins
# Count air blocks in the base
execute unless predicate game:modifiers/hardcore/on run fill 38 34 -52 -14 63 -66 void_air replace #custom:air strict
execute unless predicate game:modifiers/hardcore/on store result score $total_air_blocks var run fill 38 34 -52 -14 63 -66 air replace void_air strict
execute if predicate game:modifiers/hardcore/on run fill 38 34 -66 -14 63 -64 void_air replace #custom:air strict
execute if predicate game:modifiers/hardcore/on store result score $total_air_blocks var run fill 38 34 -66 -14 63 -64 air replace void_air strict
execute if predicate game:arena_details/top/castle run scoreboard players remove $total_air_blocks var 808

#Swiss Cheese (part 1)
execute unless predicate game:modifiers/hardcore/on if score $total_air_blocks var matches 11500.. run tag @a[x=0,predicate=custom:team/blue] add GrantSwissCheeseAchievement
execute if predicate game:modifiers/hardcore/on if score $total_air_blocks var matches 2298.. run tag @a[x=0,predicate=custom:team/blue] add GrantSwissCheeseAchievement

#Simple and Clean (part 1)
execute if score $total_air_blocks var matches 0 if score $match_play_time global matches ..2400 run tag @a[x=0,predicate=custom:team/blue] add SimpleAndClean

#Deus Ex Machina (part 1)
execute if predicate game:portal_type/default if function achievements:machina_check/blue run tag @a[x=0,predicate=custom:team/blue] add DeusExMachina

#One is the Loneliest Number (part 1)
execute if score $blue_team_count global matches 1 if score $yellow_team_count global matches 2.. run tag @a[x=0,predicate=custom:team/blue] add Loneliest

#Forsaken (part 1)
execute if score $blue_team_count global < $initial_blue_team_count global run tag @a[x=0,predicate=custom:team/blue] add Forsaken

#Ground Bound (part 1) - necessary because players can jump after game end
tag @a[x=0,predicate=custom:team/blue,scores={jumps=..0}] add GroundBound

#I Swear I Had It (part 1)
execute if predicate game:portal_type/default as @a[x=0,predicate=custom:team/yellow] store result score @s HasMissiles run clear @s #custom:missile 0
execute as @a[x=0,predicate=custom:team/yellow,scores={HasMissiles=1..}] at @s if entity @s[z=-74,dz=28] run tag @s add HadIt
