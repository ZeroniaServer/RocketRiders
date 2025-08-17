##############################################
## VOID: How players who fall into the void ##
## are handled by a quick instadeath system ##
##############################################

# Handle Spectators
execute if entity @s[team=Spectator] run return run tp @s 12 100 0.5 90 90


# "Cry About It" achievement
execute if entity @s[tag=CheckCry] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={servermode=-1..0},tag=!realms] run advancement grant @s only achievements:rr_challenges/cryaboutit

# Handle non-crossers
execute if entity @s[team=!Spectator,tag=!crosser] run return run damage @s 100.0 out_of_world

# Handle crossers (Rocket Residers)
execute unless score $nodeathmessages CmdData matches 1 if entity @s[tag=crosser] run tellraw @a[x=0] ["",{"selector":"@s"},{"text":" tried to leave their base"}]
execute if entity @s[tag=crosser] run function custom:fake_void_death
