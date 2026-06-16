execute unless predicate game:match_components/has_flags run return fail
return run execute if entity @e[limit=1,distance=..6,type=marker,tag=ctf_flag]
