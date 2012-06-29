as yet unclassified
endTimingPointcut
	^EndTimingPointcut ifNil: [
		EndTimingPointcut := PhPointcut new
			receivers: 'PhTelecomConnection';
			selectors: 'drop';
			context: #(receiver)]  