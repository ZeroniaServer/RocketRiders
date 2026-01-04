# arguments: value

$execute if entity @s[advancements={achievements:rr_challenges/sabotage={$(value)=true}}] run return 1
$advancement grant @s only achievements:rr_challenges/sabotage $(value)

execute store result storage rocketriders:main sabotage.value int 1 run scoreboard players remove $value var 1
execute if score $value var matches 1..1000 run function achievements:sabotage_loop with storage rocketriders:main sabotage
