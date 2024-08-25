This datapack uses an item constructor to automatically build item lores, etc.

# Get an item initialized
To get an item being reconized by the system, you will have to add a `custom_lore` field:
```mcfunction
{ request_lore: 1b }
```
An item modifier also does this for you: `potty.items:request_lore`.

# Gear fields
## Gear type
Gear type field `gear_type` is a **byte** type (to code better). Each weapon category (swords, bows) has its own gear type range, or you can explicitly specify a weapon category.

Note that if you do not specify a weapon category like `is_sword: 1b`, you must specify the gear type, in order that the item will be given the required corresponding item stack components for working properly.

### Swords
Range: `100` to `199` (`1xx`)

| Gear Type ID | Sword Type |
| ------------ | ---------- |
| `100`        | Sword      |
| `103`        | Dagger     |
| `104`        | Katana     |
| `105`        | Claymore   |

Specify explicitly: `is_sword: 1b`.