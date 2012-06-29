notification
classRename: anEvent
	anEvent item methodDict do: [:each |
		(each isKindOf: PhMethodWrapper)
			ifTrue: [
				each reference setClass: (anEvent item) methodSymbol: (each reference methodSymbol)]].
	self update.