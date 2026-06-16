# arguments: front, middle, back

$fill -14 34 -66 38 63 -66 $(back) strict
$fill -14 34 -65 38 63 -65 $(middle) strict
$fill -14 34 -64 38 63 -64 $(front) strict

$execute if predicate game:match_components/has_flags at @e[x=0,type=marker,tag=ctf_flag] run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 $(back) strict
$execute if predicate game:match_components/has_flags at @e[x=0,type=marker,tag=ctf_flag] run fill ~-2 ~-1 ~ ~2 ~-1 ~ $(back) strict
