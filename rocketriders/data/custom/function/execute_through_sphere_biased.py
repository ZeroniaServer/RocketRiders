import math

def generate(name: str, radius: float) -> None:
    inverse_radius = 1/radius
    squared_radius = radius*radius

    with open(f"{name}.mcfunction","w") as file:
        file.write("# arguments: p, run\n\n")

        for x in range(-math.ceil(radius),math.ceil(radius)+1):
            for y in range(-math.ceil(radius),math.ceil(radius)+1):
                for z in range(-math.ceil(radius),math.ceil(radius)+1):
                    squared_distance = (x*x + y*y + z*z)

                    n = squared_radius - squared_distance

                    if n <= 0:
                        continue

                    file.write(
                        "$execute positioned ~%s ~%s ~%s if predicate {condition:\"minecraft:random_chance\",chance:{type:\"minecraft:binomial\",n:%s,p:$(p)}} run $(run)\n" % (
                            "" if x == 0 else str(x),
                            "" if y == 0 else str(y),
                            "" if z == 0 else str(z),
                            n
                        )
                    )

generate("execute_through_sphere_biased_radius_2",2)
generate("execute_through_sphere_biased_radius_5",5)
generate("execute_through_sphere_biased_radius_8",8)
