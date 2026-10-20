GreensHouse_Script:
	call EnableAutoTextBoxDrawing
	ld hl, GreensHouse_ScriptPointers
	ld a, [wGreensHouseCurScript]
	jp CallFunctionInTable

GreensHouse_ScriptPointers:
	def_script_pointers
	dw_const GreensHouseDefaultScript, SCRIPT_GREENSHOUSE_DEFAULT
	dw_const GreensHouseNoopScript,    SCRIPT_GREENSHOUSE_NOOP

GreensHouseDefaultScript:
	SetEvent EVENT_ENTERED_GREENS_HOUSE
	ld a, SCRIPT_GREENSHOUSE_NOOP
	ld [wGreensHouseCurScript], a
	ret

GreensHouseNoopScript:
	ret

GreensHouse_TextPointers:
	def_text_pointers
	dw_const GreensHouseDaisySittingText, TEXT_GREENSHOUSE_DAISY_SITTING
	dw_const GreensHouseDaisyWalkingText, TEXT_GREENSHOUSE_DAISY_WALKING
	dw_const GreensHouseTownMapText,      TEXT_GREENSHOUSE_TOWN_MAP

GreensHouseDaisySittingText:
	text_asm
	CheckEvent EVENT_GOT_TOWN_MAP
	jr nz, .got_town_map
	CheckEvent EVENT_GOT_POKEDEX
	jr nz, .give_town_map
	ld hl, GreensHouseDaisyRivalAtLabText
	call PrintText
	jr .done

.give_town_map
	ld hl, GreensHouseDaisyOfferMapText
	call PrintText
	lb bc, TOWN_MAP, 1
	call GiveItem
	jr nc, .bag_full
	ld a, TOGGLE_TOWN_MAP
	ld [wToggleableObjectIndex], a
	predef HideObject
	ld hl, GotMapText
	call PrintText
	SetEvent EVENT_GOT_TOWN_MAP
	jr .done

.got_town_map
	ld hl, GreensHouseDaisyUseMapText
	call PrintText
	jr .done

.bag_full
	ld hl, GreensHouseDaisyBagFullText
	call PrintText
.done
	jp TextScriptEnd

GreensHouseDaisyRivalAtLabText:
	text_far _GreensHouseDaisyRivalAtLabText
	text_end

GreensHouseDaisyOfferMapText:
	text_far _GreensHouseDaisyOfferMapText
	text_end

GotMapText:
	text_far _GotMapText
	sound_get_key_item
	text_end

GreensHouseDaisyBagFullText:
	text_far _GreensHouseDaisyBagFullText
	text_end

GreensHouseDaisyUseMapText:
	text_far _GreensHouseDaisyUseMapText
	text_end

GreensHouseDaisyWalkingText:
	text_far _GreensHouseDaisyWalkingText
	text_end

GreensHouseTownMapText:
	text_far _GreensHouseTownMapText
	text_end
