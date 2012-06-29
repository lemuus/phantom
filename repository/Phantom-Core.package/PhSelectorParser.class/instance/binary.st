tokens
binary
	^ ((PPPredicateObjectParser anyOf: '!%&*+,-/<=>?@\|~') ,
	  (PPPredicateObjectParser anyOf: '!%&*+,/<=>?@\|~') star) flatten token ==> [:node | node value asParser]