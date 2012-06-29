package-restriction
testPackageRestriction
	| pc target |
	pc := PhPointcut new
		receivers: (#any asParser starGreedy: ('class:' asParser)), 'class:' asParser, #any asParser star;
		selectors: 'hash';
		restrictToPackages: #('Kernel').
	
	target := Set new.
	(PackageOrganizer default packageNamed: 'Kernel' ifAbsent: nil) ifNotNilDo: [:package |
		package classes do: [:class |
			(class isKindOf: Trait) ifFalse: [
				(class allSelectors includes: #hash) ifTrue: [
					target add: (Array with: class with: #hash)]]]].
	self assert: (target = pc getPointcuts)