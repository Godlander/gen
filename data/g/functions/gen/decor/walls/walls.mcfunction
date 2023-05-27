fill ~-0.5 5 ~-0.5 ~0.5 9 ~0.5 sandstone

#execute if entity @s[tag=north] run fill ~-0.5 5 ~-0.5 ~0.5 9 ~-0.5 sandstone
#execute if entity @s[tag=south] run fill ~-0.5 5 ~0.5 ~0.5 9 ~0.5 sandstone
#execute if entity @s[tag=east] run fill ~0.5 5 ~-0.5 ~0.5 9 ~0.5 sandstone
#execute if entity @s[tag=west] run fill ~-0.5 5 ~-0.5 ~-0.5 9 ~0.5 sandstone

#execute if block ~0.5 ~1 ~0.5 sandstone if block ~-0.5 ~1 ~0.5 sandstone if block ~0.5 ~1 ~-0.5 sandstone if block ~-0.5 ~1 ~-0.5 sandstone run function g:gen/decor/walls/pillars