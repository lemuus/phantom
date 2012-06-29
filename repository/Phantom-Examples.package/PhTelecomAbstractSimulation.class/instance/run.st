as yet unclassified
run
	| jim mik crista c1 c2 |
	jim := PhTelecomCustomer name: 'jim' areaCode: 650.
	mik := PhTelecomCustomer name: 'mik' areaCode: 650.
	crista := PhTelecomCustomer name: 'crista' areaCode: 415.
	self say: 'jim calls mik...'.
	c1 := jim call: mik.
	self wait: 1.
	self say: 'mik accepts...'.
	mik pickup: c1.
	self wait: 2.
	self say: 'jim hangs up...'.
	jim hangup: c1.
	self report: jim.
	self report: mik.
	self report: crista.
	
	self say: 'mik calls crista...'.
	c2 := mik call: crista.
	self say: 'crista accepts...'.
	crista pickup: c2.
	self wait: 1.5.
	self say: 'crista hangs up...'.
	crista hangup: c2.
	self report: jim.
	self report: mik.
	self report: crista.
	