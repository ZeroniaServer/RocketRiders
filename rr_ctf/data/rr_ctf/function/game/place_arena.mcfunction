execute unless entity @e[x=0,type=armor_stand,tag=Selection,tag=ctfEnabled] run return fail

##Concrete bases
#Yellow Base
fill -14 34 52 38 63 56 yellow_concrete replace yellow_stained_glass
fill 38 63 57 -14 34 61 orange_concrete replace orange_stained_glass
fill -14 34 66 38 63 62 end_stone replace white_stained_glass

#Yellow Decorations
fill -14 84 66 38 63 48 yellow_concrete replace yellow_stained_glass
fill -14 84 66 38 63 48 orange_concrete replace orange_stained_glass
fill -14 84 66 38 63 48 end_stone replace white_stained_glass
fill -14 84 66 38 63 48 black_concrete replace black_stained_glass

fill -14 63 55 38 34 40 yellow_concrete replace yellow_stained_glass
fill -14 63 55 38 34 40 orange_concrete replace orange_stained_glass
fill -14 63 55 38 34 40 end_stone replace white_stained_glass
fill -14 63 55 38 34 40 black_concrete replace black_stained_glass

fill -14 63 39 38 34 29 yellow_concrete replace yellow_stained_glass
fill -14 63 39 38 34 29 orange_concrete replace orange_stained_glass
fill -14 63 39 38 34 29 end_stone replace white_stained_glass
fill -14 63 39 38 34 29 black_concrete replace black_stained_glass

fill -14 63 73 38 34 75 yellow_concrete replace yellow_stained_glass
fill -14 63 73 38 34 75 orange_concrete replace orange_stained_glass
fill -14 63 73 38 34 75 end_stone replace white_stained_glass
fill -14 63 73 38 34 75 black_concrete replace black_stained_glass

#Blue Base
execute unless predicate game:match_components/red_for_blue run fill -14 34 -52 38 63 -56 blue_concrete replace blue_stained_glass
execute unless predicate game:match_components/red_for_blue run fill 38 63 -61 -14 34 -57 cyan_concrete replace cyan_stained_glass
execute if predicate game:match_components/red_for_blue run fill -14 34 -52 38 63 -56 red_concrete replace red_stained_glass
execute if predicate game:match_components/red_for_blue run fill 38 63 -61 -14 34 -57 pink_concrete replace pink_stained_glass
fill -14 34 -62 38 63 -66 end_stone replace white_stained_glass

#Blue Decorations
execute unless predicate game:match_components/red_for_blue run fill -14 84 -66 38 63 -48 blue_concrete replace blue_stained_glass
execute unless predicate game:match_components/red_for_blue run fill -14 84 -66 38 63 -48 cyan_concrete replace cyan_stained_glass
execute if predicate game:match_components/red_for_blue run fill -14 84 -66 38 63 -48 red_concrete replace red_stained_glass
execute if predicate game:match_components/red_for_blue run fill -14 84 -66 38 63 -48 pink_concrete replace pink_stained_glass
fill -14 84 -66 38 63 -48 end_stone replace white_stained_glass
fill -14 84 -66 38 63 -48 black_concrete replace black_stained_glass

execute unless predicate game:match_components/red_for_blue run fill 38 63 -55 -14 34 -40 blue_concrete replace blue_stained_glass
execute unless predicate game:match_components/red_for_blue run fill 38 63 -55 -14 34 -40 cyan_concrete replace cyan_stained_glass
execute if predicate game:match_components/red_for_blue run fill 38 63 -55 -14 34 -40 red_concrete replace red_stained_glass
execute if predicate game:match_components/red_for_blue run fill 38 63 -55 -14 34 -40 pink_concrete replace pink_stained_glass
fill 38 63 -55 -14 34 -40 end_stone replace white_stained_glass
fill 38 63 -55 -14 34 -40 black_concrete replace black_stained_glass

execute unless predicate game:match_components/red_for_blue run fill 38 63 -39 -14 34 -29 blue_concrete replace blue_stained_glass
execute unless predicate game:match_components/red_for_blue run fill 38 63 -39 -14 34 -29 cyan_concrete replace cyan_stained_glass
execute if predicate game:match_components/red_for_blue run fill 38 63 -39 -14 34 -29 red_concrete replace red_stained_glass
execute if predicate game:match_components/red_for_blue run fill 38 63 -39 -14 34 -29 pink_concrete replace pink_stained_glass
fill 38 63 -39 -14 34 -29 end_stone replace white_stained_glass
fill 38 63 -39 -14 34 -29 black_concrete replace black_stained_glass

execute unless predicate game:match_components/red_for_blue run fill -14 63 -73 38 34 -75 blue_concrete replace blue_stained_glass
execute unless predicate game:match_components/red_for_blue run fill -14 63 -73 38 34 -75 cyan_concrete replace cyan_stained_glass
execute if predicate game:match_components/red_for_blue run fill -14 63 -73 38 34 -75 red_concrete replace red_stained_glass
execute if predicate game:match_components/red_for_blue run fill -14 63 -73 38 34 -75 pink_concrete replace pink_stained_glass
fill -14 63 -73 38 34 -75 end_stone replace white_stained_glass
fill -14 63 -73 38 34 -75 black_concrete replace black_stained_glass

#Flag placement
function rr_ctf:arenaclear/flagplacement