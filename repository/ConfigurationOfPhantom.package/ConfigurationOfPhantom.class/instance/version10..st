as yet unclassified
version10: spec
	<version: '1.0' imports: #('1.0-baseline')>
	spec for: #common do: [
		spec blessing: #release.
		spec package: 'PetitParser' with: 'PetitParser-lr.211'.
		spec package: 'AST-Core' with: 'AST-Core-lr.87'.
		spec package: 'MethodWrappers' with: 'MethodWrappers-MarianoMartinezPeck.6'.
		spec package: 'Phantom-Core' with: 'Phantom-Core-DanielGaldames.1'.
		spec package: 'Phantom-Tests' with: 'Phantom-Tests-DanielGaldames.6'.
		spec package: 'Phantom-Examples' with: 'Phantom-Examples-DanielGaldames.5'.
		spec package: 'Phantom-PrecedenceGraph' with: 'Phantom-PrecedenceGraph-DanielGaldames.1'.
		spec package: 'Phantom-PrecedenceGraphTests' with: 'Phantom-PrecedenceGraphTests-DanielGaldames.1'.]