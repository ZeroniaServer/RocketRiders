scoreboard players add @e[x=0,type=fireball,tag=Cluster,predicate=custom:is_moving,tag=!endFireball,tag=!cluster_fireball.child] cluster_fireball.time 1
execute as @e[x=0,type=fireball,tag=!cluster_fireball.child,scores={cluster_fireball.time=7}] at @s run function everytick:cluster/split

#Proper explosive cluster fireballs
execute if predicate game:modifiers/explosive/on unless predicate game:modifiers/clutter_collector/on as @e[x=0,type=fireball,tag=ClusterFireball] run data merge entity @s {ExplosionPower:3}
execute if predicate game:modifiers/explosive/on if predicate game:modifiers/clutter_collector/on as @e[x=0,type=fireball,tag=ClusterFireball] run data merge entity @s {ExplosionPower:-3}

#Disable cluster fireballs near portals (depends on Fireball Portals option) - thanks @Cubehamster!!!
execute unless predicate game:modifiers/explosive/on unless predicate game:modifiers/clutter_collector/on as @e[x=0,type=fireball,tag=ClusterFireball] at @s unless entity @s[x=-11,y=36,z=73,dx=46,dy=23,dz=2] unless entity @s[x=-11,y=36,z=-75,dx=46,dy=23,dz=2] run data merge entity @s {ExplosionPower:1}
execute unless predicate game:modifiers/explosive/on if predicate game:modifiers/clutter_collector/on as @e[x=0,type=fireball,tag=ClusterFireball] at @s unless entity @s[x=-11,y=36,z=73,dx=46,dy=23,dz=2] unless entity @s[x=-11,y=36,z=-75,dx=46,dy=23,dz=2] run data merge entity @s {ExplosionPower:0}
execute unless predicate game:game_rules/snipe_portals/on as @e[x=0,type=fireball,tag=ClusterFireball] at @s if entity @s[x=-11,y=36,z=73,dx=46,dy=23,dz=2] run data merge entity @s {ExplosionPower:0}
execute unless predicate game:game_rules/snipe_portals/on as @e[x=0,type=fireball,tag=ClusterFireball] at @s if entity @s[x=-11,y=36,z=-75,dx=46,dy=23,dz=2] run data merge entity @s {ExplosionPower:0}