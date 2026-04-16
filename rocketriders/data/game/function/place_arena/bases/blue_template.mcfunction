# arguments: front, middle, back

$fill -14 34 -66 38 63 -62 $(back) strict
$fill -14 34 -61 38 63 -57 $(middle) strict
$fill -14 34 -56 38 63 -52 $(front) strict

$execute if predicate game:match_components/has_flags at @e[x=0,type=marker,tag=ctf_flag] run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 $(back) strict
$execute if predicate game:match_components/has_flags at @e[x=0,type=marker,tag=ctf_flag] run fill ~-2 ~-1 ~ ~2 ~-1 ~ $(back) strict
