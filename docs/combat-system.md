# Combat system
## Stats
The stat system is highly similar to Hypixel SkyBlock. This is because of our first purpose (of course it was changed.)

Your final damage (or *uncrit* damage) is calculated by:

$$
\text{Uncrit} = (\text{Base})\left(1+\frac{\text{Strength}}{100}\right)\ \cdot \text{Post Modifiers}
$$

And your crit damage:

$$
\text{Crit} = \text{Uncrit} \cdot \left(1+\frac{\text{Crit Damage}}{100}\right)
$$

When your received an amount of damage, it is reduced by your defense, given by:

$$
\text{Final Damage}=\frac{100}{\text{Defense} + 100} \cdot \text{Incoming Damage}
$$

The mechanism also applies on mobs, but damage caused by mobs is gauranteed not to be critical.

## Attack Speed
Your attack cooldown starts at 6t (0.3 secs). With attack cooldown stats, your attack cooldown is given by:

$$
\text{Cooldown} = \left\lfloor\frac{600}{1+\text{Attack Speed}}\right\rfloor
$$

Note that the floor function is due to Minecraft itself.

Technically, if you have a attack speed of over 500, you have no attack cooldown.

Your attack cooldown can be found in the table.

| Atk. Speed      | Atk. Cooldown |
| --------------- | ------------- |
| 0               | 6t = 0.3s     |
| 0..20           | 5t = 0.25s    |
| 20..50          | 4t = 0.2s     |
| 50..100         | 3t = 0.15s    |
| 100..200        | 2t = 0.1s     |
| 200..500        | 1t = 0.05s    |
| > 500           | No CD         |

## Combo Skills, Class & Faction
WIP
