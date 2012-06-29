tokens
unary
	^ (identifier, $: asParser not) token ==> [:node | node value asParser]