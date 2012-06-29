calling
call: aPhTelecomCustomer 
	| call |
	call := PhTelecomCall caller: self receiver: aPhTelecomCustomer.
	self addCall: call.
	^call.