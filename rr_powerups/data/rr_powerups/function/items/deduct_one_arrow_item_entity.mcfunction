##Reduces dropped arrow's count (for Infinity)

tag @s add matchOrigin
execute as @e[x=0,type=item] if items entity @s contents arrow if function custom:match_origin run tag @s add deduct_arrow_candidate
tag @s remove matchOrigin

execute unless entity @e[limit=1,x=0,tag=deduct_arrow_candidate] run return fail
execute at @s as @n[type=item,tag=deduct_arrow_candidate] run item modify entity @s contents {function:"set_count","count":-1,add:true}
tag @e[x=0,type=item,tag=deduct_arrow_candidate] remove deduct_arrow_candidate
