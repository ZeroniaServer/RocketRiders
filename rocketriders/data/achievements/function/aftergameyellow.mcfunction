##Any achievements/conditions to be given if Yellow wins
#Swiss Cheese (part 1)
execute unless predicate game:modifiers/hardcore/on run scoreboard players set SwissCheese SwissCheese 11500
execute unless predicate game:modifiers/hardcore/on store result score Yellow SwissCheese run clone 38 34 52 -14 63 66 -48 46 -1 filtered air
#reduce minimum blocks for Hardcore modifier
execute if predicate game:modifiers/hardcore/on run scoreboard players set SwissCheese SwissCheese 2298
execute if predicate game:modifiers/hardcore/on store result score Yellow SwissCheese run clone 38 34 66 -14 63 64 -48 46 -1 filtered air
execute if score Yellow SwissCheese >= SwissCheese SwissCheese run tag @a[x=0,predicate=custom:team/yellow] add SwissCheese
scoreboard players reset SwissCheese SwissCheese

#Simple and Clean (part 1)
execute if score Yellow SwissCheese matches 0 if score $match_play_time global matches ..2400 run tag @a[x=0,predicate=custom:team/yellow] add SimpleAndClean
scoreboard players reset Yellow SwissCheese

#Deus Ex Machina (part 1)
execute if predicate game:portal_type/default if function achievements:machina_check/yellow run tag @a[x=0,predicate=custom:team/yellow] add DeusExMachina

#One is the Loneliest Number (part 1)
execute if score $yellow_team_count global matches 1 if score $blue_team_count global matches 2.. run tag @a[x=0,predicate=custom:team/yellow] add Loneliest

#Forsaken (part 1)
execute if score $yellow_team_count global < $initial_yellow_team_count global run tag @a[x=0,predicate=custom:team/yellow] add Forsaken

#Ground Bound (part 1) - necessary because players can jump after game end
tag @a[x=0,predicate=custom:team/yellow,scores={jumps=..0}] add GroundBound

#I Swear I Had It (part 1) - necessary because players can die after game end
execute if predicate game:portal_type/default as @a[x=0,predicate=custom:team/blue] store result score @s HasMissiles run clear @s #custom:missile 0
execute as @a[x=0,predicate=custom:team/blue,scores={HasMissiles=1..}] at @s if entity @s[z=46,dz=28] run tag @s add HadIt

#All end-game achievements (delay for tiebreakers)
execute unless predicate game:game_rules/disable_tying/on if predicate game:portal_type/default run schedule function achievements:aftergame_indimension 100t replace
execute if predicate game:game_rules/disable_tying/on run function achievements:aftergame
