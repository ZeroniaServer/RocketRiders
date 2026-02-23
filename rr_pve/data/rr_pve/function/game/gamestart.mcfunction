#Bots in Pregame Queue
execute if predicate game:phase/staging/queue/countdown unless entity @e[x=0,type=armor_stand,tag=Bot] positioned -95 202 94 run function rr_bots:bot/spawns/bot_spawn_five_yellow
execute if predicate game:phase/staging/queue/countdown run scoreboard players set @e[x=0,type=armor_stand,tag=Bot] botarrowitems 20
execute if predicate game:phase/staging/queue/countdown run scoreboard players set @e[x=0,type=armor_stand,tag=Bot] BotHP 3

#Give first item to anyone who joins within 1st second
execute if predicate game:phase/match/play if score $game_duration global matches 3..20 run function items:givefirst

#Tag Removal
tag @a[x=0] remove JoinBlue
tag @a[x=0] remove JoinYellow
