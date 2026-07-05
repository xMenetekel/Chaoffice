extends BaseNPC
class_name Cornelia


func _on_interact() -> void:
	super._on_interact()
	RaetselManager.naechstes_raetsel = RaetselManager.refactoring_raetsel_2
	RaetselManager.naechste_puzzle_id = RaetselManager.puzzle_id_02
	print(RaetselManager.naechstes_raetsel)
	print("Raetsel 2 gesetzt!")
