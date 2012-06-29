versions
version12: spec
	<version: '1.2' imports: #('1.0-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'development'.
		spec description: '1.2: devel'.
		spec author: 'dgg'.
		spec timestamp: '5/12/2011 13:32'.
		spec 
			package: 'PetitParser' with: 'PetitParser-lr.211';
			package: 'AST-Core' with: 'AST-Core-lr.87';
			package: 'MethodWrappers' with: 'MethodWrappers-MarianoMartinezPeck.6';
			package: 'Phantom-Core' with: 'Phantom-Core-dgg.34';
			package: 'Phantom-Tests' with: 'Phantom-Tests-dgg.22';
			package: 'Phantom-Examples' with: 'Phantom-Examples-dgg.9';
			package: 'Phantom-PrecedenceGraph' with: 'Phantom-PrecedenceGraph-DanielGaldames.1';
			package: 'Phantom-PrecedenceGraphTests' with: 'Phantom-PrecedenceGraphTests-DanielGaldames.1'. ].
