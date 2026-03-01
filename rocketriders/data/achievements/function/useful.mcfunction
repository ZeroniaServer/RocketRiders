##They're Useful achievement
execute if entity @s[advancements={achievements:rr_challenges/useful=true}] run return 1
execute if score @s useful matches 20.. run return run advancement grant @s only achievements:rr_challenges/useful
execute if score @s prevUseful = @s useful run return fail
execute unless score @s useful matches 1.. run return fail

# update count
tag @s add matchOrigin
execute as @e[x=0,type=area_effect_cloud,tag=splash_alone] if function custom:match_origin at @s run tag @e[type=tnt,distance=..7,tag=!useful,predicate=custom:in_water_fluid,nbt={fuse:1s}] add useful
tag @s remove matchOrigin
execute at @e[x=0,type=tnt,tag=useful] run scoreboard players add @s useful 1
tag @e[x=0,type=tnt,tag=useful] remove useful

# update advancement progress
execute if score @s useful matches 1.. run advancement grant @s only achievements:rr_challenges/useful 1
execute if score @s useful matches 2.. run advancement grant @s only achievements:rr_challenges/useful 2
execute if score @s useful matches 3.. run advancement grant @s only achievements:rr_challenges/useful 3
execute if score @s useful matches 4.. run advancement grant @s only achievements:rr_challenges/useful 4
execute if score @s useful matches 5.. run advancement grant @s only achievements:rr_challenges/useful 5
execute if score @s useful matches 6.. run advancement grant @s only achievements:rr_challenges/useful 6
execute if score @s useful matches 7.. run advancement grant @s only achievements:rr_challenges/useful 7
execute if score @s useful matches 8.. run advancement grant @s only achievements:rr_challenges/useful 8
execute if score @s useful matches 9.. run advancement grant @s only achievements:rr_challenges/useful 9
execute if score @s useful matches 10.. run advancement grant @s only achievements:rr_challenges/useful 10
execute if score @s useful matches 11.. run advancement grant @s only achievements:rr_challenges/useful 11
execute if score @s useful matches 12.. run advancement grant @s only achievements:rr_challenges/useful 12
execute if score @s useful matches 13.. run advancement grant @s only achievements:rr_challenges/useful 13
execute if score @s useful matches 14.. run advancement grant @s only achievements:rr_challenges/useful 14
execute if score @s useful matches 15.. run advancement grant @s only achievements:rr_challenges/useful 15
execute if score @s useful matches 16.. run advancement grant @s only achievements:rr_challenges/useful 16
execute if score @s useful matches 17.. run advancement grant @s only achievements:rr_challenges/useful 17
execute if score @s useful matches 18.. run advancement grant @s only achievements:rr_challenges/useful 18
execute if score @s useful matches 19.. run advancement grant @s only achievements:rr_challenges/useful 19
execute if score @s useful matches 20.. run advancement grant @s only achievements:rr_challenges/useful 20

# save progress
function custom:player_action/playerdata/save
scoreboard players operation @s prevUseful = @s useful
