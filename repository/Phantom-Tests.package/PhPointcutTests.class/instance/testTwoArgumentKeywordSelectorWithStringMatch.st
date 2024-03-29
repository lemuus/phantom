matching
testTwoArgumentKeywordSelectorWithStringMatch
	| set pc |
	pc := (PhPointcut new)
		receivers: 'LinkedList';
		localSelectors: 'add:_:'.
	set := Set new.
	LinkedList localSelectors
		do: [ :sel | 
			((sel isKeyword) and: [((sel findBetweenSubStrs: ':') size = 2) and: [(((sel findBetweenSubStrs: ':') at: 1) = 'add')]])
				ifTrue: [ set add: (Array with: LinkedList with: sel) ] ].
	self deny: (set isEmpty).
	self assert: pc getPointcuts = set