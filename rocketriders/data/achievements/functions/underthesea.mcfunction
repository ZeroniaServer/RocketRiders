#under the sea
execute as @a at @s if entity @s[scores={PlayerKills=1..},predicate=custom:is_swimming] if block ~ ~ ~ water run advancement grant @s only achievements:rr_challenges/under_the_sea