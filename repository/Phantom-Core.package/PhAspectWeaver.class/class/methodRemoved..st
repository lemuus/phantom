notification
methodRemoved: anEvent
	(anEvent item isKindOf: PhMethodWrapper)
		ifTrue: [ WrapperList removeKey: (Array with: anEvent itemClass with: anEvent item selector) ].
	self updateEnabled
		ifTrue: [ 
			self flushPointcutsMemo.
			self updateMembranes ]