; TypeNames indexes (see data/types/names.asm)
	const_def

DEF PHYSICAL EQU const_value
	const NORMAL       ; $00
	const MARTIAL      ; $01
	const WATER        ; $02
	const TOXIC_TYPE   ; $03
	const EARTH        ; $04
	const PLANT        ; $05
	const ICE          ; $06
	const BUG          ; $07
	const METAL        ; $08

DEF SPECIAL EQU const_value
	const FIRE         ; $14
	const WIND         ; $15
	const SPIRIT       ; $16
	const ELECTRIC     ; $17
	const PSYCHIC_TYPE ; $18
	const MYSTIC       ; $19
	const SHADOW       ; $1A
	const LIGHT        ; $1B
	const CYBER        ; $1C

DEF NUM_TYPES EQU const_value
