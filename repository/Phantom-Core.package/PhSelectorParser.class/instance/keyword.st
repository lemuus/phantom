tokens
keyword
	^ (identifier , $: asParser) token ==> [:node | node value asParser].