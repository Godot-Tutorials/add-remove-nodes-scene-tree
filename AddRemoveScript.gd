extends Node


func _process(_delta):
	addRemoveTimerWithScript()
	pass


# Just creates a timer Node onto the scene
func addTimerNode():
	var timerNode = Timer.new() # create a Timer Object, variable acts as pointer
	self.add_child(timerNode) # add Timer Object to Scene Tree


func addRemoveTimerNode():
	var timerNode = Timer.new() # create a Timer Object, variable acts as pointer
	self.add_child(timerNode) # add Timer Object to Scene Tree
	self.remove_child(timerNode) # remove Timer Object from Scene Tree


func addRemoveDeleteTimerNode():
	var timerNode = Timer.new() # create a Timer Object, variable acts as pointer
	self.add_child(timerNode) # add Timer Object to Scene Tree
	self.remove_child(timerNode) # remove Timer Object from Scene Tree
	timerNode.queue_free()


func addRemoveTimerWithScript():
	var timerNode = Timer.new() # create a Timer Object, variable acts as pointer
	var script = load("res://ExitTreeTimer.gd")
	timerNode.set_script(script)
	self.add_child(timerNode) # add Timer Object to Scene Tree
	self.remove_child(timerNode) # remove Timer Object from Scene Tree
