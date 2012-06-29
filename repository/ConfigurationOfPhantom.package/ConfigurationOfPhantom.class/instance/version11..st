versions
version11: spec
	<version: '1.1' imports: #('1.0-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'release'.
		spec description: 'advices are build on install for the method wrapper
1.1 (): advice manipulation
1.1 (): recategorization adviceIndex on context
1.1 (): 
	- change advices to advice.
	- fix bug in change order of an advice in other advice
- added inheritance precedence
- added tests'.
		spec author: 'DanielGaldames'.
		spec timestamp: '4/19/2011 16:42'.
		spec 
			package: 'PetitParser' with: 'PetitParser-lr.211';
			package: 'AST-Core' with: 'AST-Core-lr.87';
			package: 'MethodWrappers' with: 'MethodWrappers-MarianoMartinezPeck.6';
			package: 'Phantom-Core' with: 'Phantom-Core-dgg.24';
			package: 'Phantom-Tests' with: 'Phantom-Tests-dgg.19';
			package: 'Phantom-Examples' with: 'Phantom-Examples-DanielGaldames.5';
			package: 'Phantom-PrecedenceGraph' with: 'Phantom-PrecedenceGraph-DanielGaldames.1';
			package: 'Phantom-PrecedenceGraphTests' with: 'Phantom-PrecedenceGraphTests-DanielGaldames.1'. ].
