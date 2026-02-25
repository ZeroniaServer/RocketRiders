scoreboard players set @s ForfeitTimeout 1200

execute unless predicate rr:is_cubekrowd as @e[limit=2,x=-0.5,y=-0.5,z=-0.5,dx=0,dy=0,dz=0,type=area_effect_cloud,tag=1v1_duel_player_tracker] run function rr_duel:forfeit/giveloss

execute unless predicate game:phase/match/closing if entity @a[limit=1,x=0,predicate=custom:team/blue] unless entity @a[limit=1,x=0,predicate=custom:team/yellow] run scoreboard players set Blue: RoundsWon 2
execute unless predicate game:phase/match/closing if entity @a[limit=1,x=0,predicate=custom:team/blue] unless entity @a[limit=1,x=0,predicate=custom:team/yellow] as @e[limit=1,x=0,type=armor_stand,tag=Selection] run return run function rr_duel:game/winblue
execute unless predicate game:phase/match/closing unless entity @a[limit=1,x=0,predicate=custom:team/blue] if entity @a[limit=1,x=0,predicate=custom:team/yellow] run scoreboard players set Yellow: RoundsWon 2
execute unless predicate game:phase/match/closing unless entity @a[limit=1,x=0,predicate=custom:team/blue] if entity @a[limit=1,x=0,predicate=custom:team/yellow] as @e[limit=1,x=0,type=armor_stand,tag=Selection] run return run function rr_duel:game/winyellow
