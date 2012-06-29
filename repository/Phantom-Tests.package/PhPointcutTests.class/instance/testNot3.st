composing
testNot3
	| pc1 pc2 col1 col2 |
	pc1 := PhPointcut new
		receivers: '*Morph*';
		selectors: 'mouseEnter:';
		restrictToPackages: #('Kernel' 'Morphic').  
	pc2 := PhPointcut new
		receivers: (#word asParser star, ' class' asParser);
		selectors: (#any asParser star);
		restrictToPackages: #('Kernel' 'Morphic').
		
	col1 := ((pc1 not) & (pc2 not)) getPointcuts.
	col2 := ( (pc1 | pc2) not ) getPointcuts.
	self assert: (col1 = col2)