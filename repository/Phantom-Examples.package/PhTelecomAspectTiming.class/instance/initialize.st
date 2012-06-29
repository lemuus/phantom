as yet unclassified
initialize
	super initialize.
	self add: (PhAdvice new
		pointcut: (PhPointcut new
			receivers: 'PhTelecomConnection';
			selectors: 'complete';
			context: #(#receiver) );
		advice: [:context | context receiver timer start.];
		type: #after).
	self add: (PhAdvice new
		pointcut: (self class endTimingPointcut);
		advice: [:context |
			| conectionTime | 
			context receiver timer stop.
			conectionTime := context receiver timer getTime.  
			context receiver caller totalConnectTime: (conectionTime + (context receiver caller totalConnectTime)).
			context receiver receiver totalConnectTime: (conectionTime + (context receiver receiver totalConnectTime))];
		type: #after).
	self addClassModifier: (PhClassModifier new
		on: (PhPointcut receivers: 'PhTelecomCustomer' selectors: #any asParser);
		addNewInstanceVar: 'totalConnectTime';
		addNewInstanceMethod: 'totalConnectTime
			^totalConnectTime ifNil: [totalConnectTime := 0]';
		addNewInstanceMethod: 'totalConnectTime: aNumber
			totalConnectTime := aNumber '  ).
	self addClassModifier: (PhClassModifier new
		on: (PhPointcut receivers: 'PhTelecomConnection' selectors: #any asParser);
		addNewInstanceVar: 'timer';
		addNewInstanceMethod: 'timer
			^timer ifNil: [timer := PhTelecomTimer new] ')    