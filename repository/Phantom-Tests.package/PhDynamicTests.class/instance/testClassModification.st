as yet unclassified
testClassModification
	| asp |
	[
	asp := PhAspect new add: (PhAdvice new
		pointcut: (PhPointcut new
			receivers: self aPhMockClassParserWithPPPInstanceVar;
			selectors: 'foo');
		advice: [:ctx | 'foo'];
		type: #around).
	
	asp install.
	self deny: (PhMockClass new foo = 'foo').  
	PhMockClass addInstVarNamed: 'ppp'.
	self checkPhMockClassFoo.
	] ensure: [
	asp uninstall.
	PhMockClass removeInstVarNamed: 'ppp'.]