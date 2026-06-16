#Item RNG
scoreboard players add @s RandomItem 1
execute unless predicate game:modifiers/minute_mix/on if score @s RandomItem = @s MaxItemTime run function items:giverandom
execute unless predicate game:modifiers/minute_mix/on if score @s RandomItem > @s MaxItemTime run scoreboard players set @s RandomItem 1
execute if predicate game:modifiers/minute_mix/on run function items:minutemix

#win
execute unless predicate game:outcome/both_won unless predicate game:outcome/blue_won_only unless predicate game:outcome/yellow_won_only if function game:check/blue_portal_broken if function game:check/yellow_portal_broken run function game:winbothcheck
execute unless predicate game:outcome/both_won unless predicate game:outcome/blue_won_only if function game:check/yellow_portal_broken run function game:winblue
execute unless predicate game:outcome/both_won unless predicate game:outcome/yellow_won_only if function game:check/blue_portal_broken run function game:winyellow
