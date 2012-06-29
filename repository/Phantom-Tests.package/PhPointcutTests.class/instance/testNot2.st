composing
testNot2
	| pc pc2 regex pcCol targetSet |
	pc := PhPointcut new
		receivers: '*Morph*';
		selectors: 'mouseEnter:'.
	
	pc2 := PhPointcut new
		receivers: (#word asParser star, ' class' asParser);
		selectors: (#any asParser star).
	     
	regex := '\w*Morph\w*' asRegex.
	targetSet := Set new.
	(SmalltalkImage current allClasses) do: [:each | 
		(regex matches: each name asString) not
			ifTrue: [each allSelectors do: [:sel |
					targetSet add: (Array with: each with: sel)]] 
			ifFalse: [each allSelectors do: [:sel |
					(sel = #mouseEnter:) not
						ifTrue: [targetSet add: (Array with: each with: sel)]]]].
	pcCol := ((pc not) & (pc2 not)) getPointcuts.
	self assert: (pcCol = targetSet).