ride @s mount @e[tag=processing,limit=1,dy=0,dx=0,dz=0]

data merge entity @s {text:'""',billboard:"vertical",Tags:[combat.health_bar],alignment:"center",shadow:1b,transformation:[0f,0f,0f,0f, 0f,0f,0f,.25f, 0f,0f,0f,0f, 0f,0f,0f,1f],CustomName:'"N/A"',background:0,view_range:.075f}
data modify entity @s CustomName set from entity @e[tag=processing,limit=1,dy=1,dx=0,dz=0] CustomName

tag @s add combat.tick