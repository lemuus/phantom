calling
hangup: aPhTelecomCall 
	aPhTelecomCall hangup: self.
	self removeCall: aPhTelecomCall.