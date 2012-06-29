initialization
initialize
	| pcStart pcStop |
	super initialize.
	self add: (PhAdvice new
		pointcut: (PhPointcut new
			receivers: 'PhTelecomTimer';
			selectors: 'start';
			context: #(#receiver));
		advice: [:context | Transcript show: ('Timer started: ', (context receiver startTime asString)); cr.];
		type: #after).
	self add: (PhAdvice new
		pointcut: (PhPointcut new
			receivers: 'PhTelecomTimer';
			selectors: 'stop';
			context: #(#receiver));
		advice: [:context | Transcript show: ('Timer stoped: ', (context receiver stopTime asString)); cr.];
		type: #after).