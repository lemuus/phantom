notification
methodModification: anEvent
	(anEvent oldItem isKindOf: PhMethodWrapper)
		ifTrue: [ 
			anEvent oldItem oldMethod: anEvent item.
			anEvent oldItem needCleanUp: false.
			anEvent oldItem install ]