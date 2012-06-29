instance creation
caller: caller receiver: receiver
	| call |
	call := (self new)
		caller: caller;
		receiver: receiver;
		yourself.
	(receiver localTo: caller)
		ifTrue: [call connections add: (PhTelecomLocal caller: caller receiver: receiver)]
		ifFalse: [call connections add: (PhTelecomLongDistance caller: caller receiver: receiver)].
	^call