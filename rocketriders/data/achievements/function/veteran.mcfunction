##Veteran achievement
##Checks for a player using every missile/utility in the game

# add tag
tag @a[x=0,advancements={achievements:rr_challenges/veteran=false}] add had_veteran_achievement

# Missiles
advancement grant @a[scores={AuxSpawned=1..},tag=!had_veteran_achievement] only achievements:rr_challenges/veteran AuxSpawned
advancement grant @a[scores={AntsSpawned=1..},tag=!had_veteran_achievement] only achievements:rr_challenges/veteran AntsSpawned
advancement grant @a[scores={BladeSpawned=1..},tag=!had_veteran_achievement] only achievements:rr_challenges/veteran BladeSpawned
advancement grant @a[scores={BroadSpawned=1..},tag=!had_veteran_achievement] only achievements:rr_challenges/veteran BroadSpawned
advancement grant @a[scores={BulletSpawned=1..},tag=!had_veteran_achievement] only achievements:rr_challenges/veteran BulletSpawned
advancement grant @a[scores={DuplexSpawned=1..},tag=!had_veteran_achievement] only achievements:rr_challenges/veteran DuplexSpawned
advancement grant @a[scores={CataSpawned=1..},tag=!had_veteran_achievement] only achievements:rr_challenges/veteran CataSpawned
advancement grant @a[scores={CitaSpawned=1..},tag=!had_veteran_achievement] only achievements:rr_challenges/veteran CitaSpawned
advancement grant @a[scores={GemiSpawned=1..},tag=!had_veteran_achievement] only achievements:rr_challenges/veteran GemiSpawned
advancement grant @a[scores={GuardSpawned=1..},tag=!had_veteran_achievement] only achievements:rr_challenges/veteran GuardSpawned
advancement grant @a[scores={HurSpawned=1..},tag=!had_veteran_achievement] only achievements:rr_challenges/veteran HurSpawned
advancement grant @a[scores={HyperSpawned=1..},tag=!had_veteran_achievement] only achievements:rr_challenges/veteran HyperSpawned
advancement grant @a[scores={JugbSpawned=1..},tag=!had_veteran_achievement] only achievements:rr_challenges/veteran JugbSpawned
advancement grant @a[scores={LifterSpawned=1..},tag=!had_veteran_achievement] only achievements:rr_challenges/veteran LifterSpawned
advancement grant @a[scores={NullSpawned=1..},tag=!had_veteran_achievement] only achievements:rr_challenges/veteran NullSpawned
advancement grant @a[scores={RifterSpawned=1..},tag=!had_veteran_achievement] only achievements:rr_challenges/veteran RifterSpawned
advancement grant @a[scores={SlashSpawned=1..},tag=!had_veteran_achievement] only achievements:rr_challenges/veteran SlashSpawned
advancement grant @a[scores={ThunSpawned=1..},tag=!had_veteran_achievement] only achievements:rr_challenges/veteran ThunSpawned
advancement grant @a[scores={TomaSpawned=1..},tag=!had_veteran_achievement] only achievements:rr_challenges/veteran TomaSpawned
advancement grant @a[scores={WarSpawned=1..},tag=!had_veteran_achievement] only achievements:rr_challenges/veteran WarSpawned

# Utilities
advancement grant @a[scores={FireballSpawned=1..},tag=!had_veteran_achievement] only achievements:rr_challenges/veteran FireballSpawned
advancement grant @a[scores={ObshieldSpawned=1..},tag=!had_veteran_achievement] only achievements:rr_challenges/veteran ObshieldSpawned
advancement grant @a[scores={ThrowSplash=1..},tag=!had_veteran_achievement] only achievements:rr_challenges/veteran SplashSpawned
advancement grant @a[scores={BowShot=1..},tag=!had_veteran_achievement] only achievements:rr_challenges/veteran ArrowSpawned

# remove tag
tag @a[x=0] remove had_veteran_achievement
