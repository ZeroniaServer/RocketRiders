tag @a[team=Blue,tag=YellowNovaAttach] add TNTNear
tag @a[team=Yellow,tag=BlueNovaAttach] add TNTNear
execute as @a[tag=TNTNear] run advancement grant @s only achievements:rr_challenges/uphere
tag @a[tag=TNTNear] remove TNTNear