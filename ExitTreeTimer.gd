extends Timer

func _exit_tree():
	self.queue_free()
