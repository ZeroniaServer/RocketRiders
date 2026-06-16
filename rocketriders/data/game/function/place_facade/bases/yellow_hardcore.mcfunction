# arguments: front, middle, back

$fill -101 195 96 -89 201 96 $(back) strict
$fill -101 195 95 -89 201 95 $(middle) strict
$execute unless predicate game:match_components/checkered_yellow_base run fill -101 195 94 -89 201 94 $(front) strict
