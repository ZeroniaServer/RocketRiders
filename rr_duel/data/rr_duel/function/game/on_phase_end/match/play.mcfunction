scoreboard players reset @s fakeendtimer
tag @s remove FakeGameEnd

scoreboard players reset @s Rounds

bossbar remove rr_duel:resetting_arena
bossbar remove rr_duel:forfeit_timer

scoreboard players reset @s ForfeitTimeout
scoreboard players reset $1v1_duel_time_out_period global
tag @a[x=0] remove Forfeiter
