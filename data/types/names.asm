TypeNames:
	table_width 2

	dw .Normal
	dw .Martial
	dw .Water
	dw .Toxic
	dw .Earth
	dw .Plant
	dw .Ice
	dw .Bug
	dw .Metal
	dw .Fire
	dw .Wind
	dw .Spirit
	dw .Electric
	dw .Psychic
	dw .Mystic
	dw .Shadow
	dw .Light
	dw .Cyber

	assert_table_length NUM_TYPES

.Normal:   db "NORMAL@"
.Martial:  db "MARTIAL@"
.Water:    db "WATER@"
.Toxic:    db "TOXIC@"
.Earth:    db "EARTH@"
.Plant:    db "PLANT@"
.Ice:      db "ICE@"
.Bug:      db "BUG@"
.Metal:    db "METAL@"
.Fire:     db "FIRE@"
.Wind:     db "WIND@"
.Spirit:   db "SPIRIT@"
.Electric: db "ELECTRIC@"
.Psychic:  db "PSYCHIC@"
.Mystic:   db "MYSTIC@"
.Shadow:   db "SHADOW@"
.Light:    db "LIGHT@"
.Cyber:    db "CYBER@"
