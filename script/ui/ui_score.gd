# @copyright Rug Pull Games
# @see Rug Pull Games: https://rug-pull.games/
# @see RPG 404: https://rpg404.com/
# @author endaye.eth, Fried Egg Fendi

extends Label


func _ready():
	__update_score()


func _process(_dt):
	if G.game_state == K.GameState.READY:
		self.text = "0"
	elif G.game_state == K.GameState.RUNNING:
		__update_score()


func __update_score():
	self.text = str(G.score)
