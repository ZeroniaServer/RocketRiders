##Gives any players who join Blue team a Shooting Saber (and arrows if in the Waiting Area)
loot replace entity @s hotbar.0 loot items:misc/shooting_saber
execute unless predicate game:game_started unless predicate game:game_ended if score @e[limit=1,x=0,type=armor_stand,tag=Selection] count matches ..599 run loot replace entity @s weapon.offhand loot {pools:[{rolls:1,entries:[{type:"loot_table",value:"items:misc/arrow_lobby"}],functions:[{function:"set_count",count:20}]}]}
