private
getMembranePointcuts: aMembrane
	aMembrane pointcut
		ifNotNilDo: [ :pc | ^ pc getPointcuts ]
		ifNil: [ 
			| pcSet |
			pcSet := Set new.
			aMembrane registeredAspects
				do: [ :asp | asp adviceCollection do: [ :adv | pcSet addAll: adv pointcut getPointcuts ] ].
			^ pcSet ]
		"aMembrane pointcut
		ifNotNilDo: [ :pc | ^ pc getPointcuts ]
		ifNil: [ 
			aMembrane advisedMembranes
				ifNil: [ ^ #() ]
				ifNotNil: [ 
					| pcSet |
					pcSet := Set new.
					aMembrane registeredAspects
						do: [ :asp | asp adviceCollection do: [ :adv | pcSet addAll: adv pointcut getPointcuts ] ].
					^ pcSet ] ]"