# arguments: front, middle, back

$fill -101 195 95 -89 201 96 $(back) strict
$fill -101 195 93 -89 201 94 $(middle) strict
$execute unless predicate game:match_components/arena/checkered_yellow_base_front run fill -101 195 91 -89 201 92 $(front) strict
