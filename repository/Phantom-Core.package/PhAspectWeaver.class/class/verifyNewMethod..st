notification
verifyNewMethod: anEvent
	self updateEnabled ifTrue: [self flushPointcutsParser].
	(self includes: anEvent item selector on: anEvent item methodClass)
		ifTrue: [ 
			self update ]