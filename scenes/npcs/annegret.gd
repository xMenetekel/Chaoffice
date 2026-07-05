extends BaseNPC
class_name Annegret


func _on_interact() -> void:
	super._on_interact()
	RaetselManager.naechstes_raetsel = RaetselManager.refactoring_raetsel_1
	RaetselManager.naechste_puzzle_id = RaetselManager.puzzle_id_01
	print(RaetselManager.naechstes_raetsel)
	print("Raetsel 1 gesetzt!")
