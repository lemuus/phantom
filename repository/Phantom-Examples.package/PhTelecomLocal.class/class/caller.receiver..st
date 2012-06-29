as yet unclassified
caller: caller receiver: receiver
	Transcript show: ('[new local connection from ', caller asString, ' to ', receiver asString, ']'); cr.
	^super caller: caller receiver: receiver