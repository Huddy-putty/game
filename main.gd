extends Node2D

var card_scene = preload("res://card.tscn")

var amount = 2000
var cards = [] # [{n = 1, f = "spades"},{n = 2, f = "spades"},{n = 3, f = "spades"}]

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for n in range(1, 14):
		for f in ["clubs","diamonds","hearts","spades"]:
			cards.append({n = str(n), f = f})
	cards.shuffle()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass



func _on_dealing_screen_cards_dealt() -> void:
	# This is like autoloading the scene, only
	# it happens after already loading the main scene.
	$DealingScreen/VBoxContainer/GridContainer.visible = false
	$DealingScreen/DealButton.visible = false
	$GaemScreen.visible = true
	#$DealingScreen/PlayersCards.add_child(card_scene.instantiate())
	#var dealers_cards = card_scene.instantiate()
	var last_card = null
	var playercard01 = $GaemScreen/PlayerHand/CenterContainer/HBoxContainer/Card01
	last_card = cards.pop_back()
	playercard01.set_front(last_card.n, last_card.f)
	var playercard02 = $GaemScreen/PlayerHand/CenterContainer/HBoxContainer/Card02
	last_card = cards.pop_back()
	playercard02.set_front(last_card.n, last_card.f)
	var dealercard01 = $GaemScreen/DealerHand/CenterContainer/HBoxContainer/Card01
	last_card = cards.pop_back()
	dealercard01.set_front(last_card.n, last_card.f)
	
	#card01.set_front("1", "clubs")
	
	print(cards)
	#var ace_of_spades = {n = 1, f = "spades"}
	#print(ace_of_spades.n)
	#ace_of_spades["something weird"] = "1"
	#ace_of_spades["something weird"]
	#dealers_cards.set_front("3", "clubs")
	#dealers_cards.set_front("6", "diamonds")
	#dealers_cards.set_front("7", "hearts")
	#dealers_cards.set_front("13", "spades")
	#$DealingScreen/DealersCards.add_child(dealers_cards)
	#str(randi_range(1, 13))
	#["clubs", "diamonds", "hearts", "spades"].pick_random()
	# 1. create cards
	#   1. How many cards?
	#      - 52
	#   2. Which cards?
	#      -  13 clubs, 13 diamonds, 13 spades, 13 hearts. 50
	#      -2 jokemen each joke is 10
	# 2. shuffle
	# 3. deal
	pass # Replace with function body.



func _on_value_1_pressed() -> void:
	if amount >= 1:
		amount -= 1
	$DealingScreen/VBoxContainer/MOOLAH.text = "Bank\n" + str(amount)

func _on_value_5_pressed() -> void:
	if amount >= 5:
		amount -= 5
	
	$DealingScreen/VBoxContainer/MOOLAH.text = "Bank\n" + str(amount)

func _on_value_10_pressed() -> void:
	if amount >= 10:
		amount -= 10
	$DealingScreen/VBoxContainer/MOOLAH.text = "Bank\n" + str(amount)

func _on_value_50_pressed() -> void:
	if amount >= 50:
		amount -= 50
	$DealingScreen/VBoxContainer/MOOLAH.text = "Bank\n" + str(amount)

func _on_value_100_pressed() -> void:
	if amount >= 100:
		amount -= 100
	$DealingScreen/VBoxContainer/MOOLAH.text = "Bank\n" + str(amount)

func _on_value_500_pressed() -> void:
	if amount >= 500:
		amount -= 500
	$DealingScreen/VBoxContainer/MOOLAH.text = "Bank\n" + str(amount)

func _on_value_1000_pressed() -> void:
	print("Clicked on the 1000 button")
	if amount >= 1000:
		amount -= 1000
	$DealingScreen/VBoxContainer/MOOLAH.text = "Bank\n" + str(amount)
