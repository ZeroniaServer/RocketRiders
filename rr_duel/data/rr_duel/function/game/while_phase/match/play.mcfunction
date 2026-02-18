execute if score $game_duration global matches 2 as @a[x=0,predicate=custom:team/any_playing_team] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 0

#Item RNG
scoreboard players add @s RandomItem 1
execute unless predicate game:modifiers/minute_mix/on if score @s RandomItem = @s MaxItemTime run function items:giverandom
execute unless predicate game:modifiers/minute_mix/on if score @s RandomItem > @s MaxItemTime run scoreboard players set @s RandomItem 1
execute if predicate game:modifiers/minute_mix/on run function items:minutemix

#win
execute unless entity @s[tag=CriteriaTrue] if entity @s[tag=!BothWon,tag=!BlueWon,tag=!YellowWon] if function game:check/blue_portal_broken if function game:check/yellow_portal_broken run function rr_duel:game/winboth
execute unless entity @s[tag=CriteriaTrue] if entity @s[tag=!BothWon,tag=!BlueWon] if function game:check/blue_portal_broken run function rr_duel:game/winyellow
execute unless entity @s[tag=CriteriaTrue] if entity @s[tag=!BothWon,tag=!YellowWon] if function game:check/yellow_portal_broken run function rr_duel:game/winblue
