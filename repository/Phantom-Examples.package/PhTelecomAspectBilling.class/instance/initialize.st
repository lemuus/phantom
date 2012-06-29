as yet unclassified
initialize
	super initialize.
	localChargeRate := 3.
	longDistanceChargeRate := 10.
	self precedence: #('PhTelecomAspectBilling' 'PhTelecomAspectTiming').
	self add: (PhAdvice new
		pointcut: PhTelecomAspectTiming endTimingPointcut;
		advice: [:context |
			| time rate cost |
			time := context receiver timer getTime.
			rate := context receiver callRate.
			cost := rate * time.
			context receiver caller addCharge: cost];
		type: #after).
	self addClassModifier: (PhClassModifier new
		on: (PhPointcut receivers: 'PhTelecomCustomer' selectors: #any asParser);
		addNewInstanceVar: 'totalCharge';
		addNewInstanceMethod: 'totalCharge
			^totalCharge ifNil: [totalCharge := 0] ';
		addNewInstanceMethod: 'addCharge: aNumber
			totalCharge := self totalCharge + aNumber').
	self addClassModifier: (PhClassModifier new
		on: (PhPointcut receivers: 'PhTelecomLocal' selectors: #any asParser);
		addNewInstanceMethod: 'callRate
			^', localChargeRate asString).
	self addClassModifier: (PhClassModifier new
		on: (PhPointcut receivers: 'PhTelecomLongDistance' selectors: #any asParser);
		addNewInstanceMethod: 'callRate
			^', longDistanceChargeRate asString).   