as yet unclassified
caller: caller receiver: receiver
	Transcript show: ('[new long distance connection from ', caller asString, ' to ', receiver asString, ']'); cr.
	^super caller: caller receiver: receiver