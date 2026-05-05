##Set missile spawning and other statistic scores to 0
scoreboard players set @s jumps 0
scoreboard players set @s AuxSpawned 0
scoreboard players set @s AntsSpawned 0
scoreboard players set @s BladeSpawned 0
scoreboard players set @s BSurpriseSpawned 0
scoreboard players set @s BowShot 0
scoreboard players set @s BroadSpawned 0
scoreboard players set @s BulletSpawned 0
scoreboard players set @s CataSpawned 0
scoreboard players set @s CitaSpawned 0
scoreboard players set @s DuplexSpawned 0
scoreboard players set @s GemiSpawned 0
scoreboard players set @s GuardSpawned 0
scoreboard players set @s HurSpawned 0
scoreboard players set @s HyperSpawned 0
scoreboard players set @s JugbSpawned 0
scoreboard players set @s LifterSpawned 0
scoreboard players set @s MissilesSpawned 0
scoreboard players set @s NullSpawned 0
scoreboard players set @s RifterSpawned 0
scoreboard players set @s SlashSpawned 0
scoreboard players set @s ThunSpawned 0
scoreboard players set @s TomaSpawned 0
scoreboard players set @s WarSpawned 0
scoreboard players set @s YSurpriseSpawned 0
scoreboard players set @s FellVoid 0
scoreboard players set @s prevFellVoid 0
scoreboard players set @s gravShot 0
scoreboard players set @s regifts 0
scoreboard players reset @s match_statistic.deaths
scoreboard players reset @s match_statistic.kills
scoreboard players reset @s effects.infinity_saber.time
scoreboard players reset @s effects.multishot_saber.time
scoreboard players reset @s effects.elytra.state

#Reset advancement criteria progress for the temp trackables also
function everytick:score_reset_advancements
