extends Label

#export (int) var abc=8
#var value=0
#func _ready():
#	update() 
#func reset():
#	value=0
#	update()
#
#func adjust(score):
#	value+=.score
#	update()	
func _ready():
	self.text=str(Gamestate.score)
