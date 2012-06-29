as yet unclassified
report: aPhTelecomCustomer
	Transcript show: aPhTelecomCustomer asString,
		' has been conected for ', aPhTelecomCustomer totalConnectTime asString,
		' milliseconds and has a bill of ',
		aPhTelecomCustomer totalCharge asString.
	Transcript cr.