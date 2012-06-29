notification
verifyNewClass: anEvent
	self updateEnabled ifTrue: [self flushPointcutsParser].
	(self mayInclude: anEvent item)
		ifTrue: [ 
			self update ]