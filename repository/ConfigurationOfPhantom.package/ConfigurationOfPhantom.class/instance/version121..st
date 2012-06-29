versions
version121: spec
	<version: '1.2.1' imports: #('1.0-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'release'.
		spec description: '1.2.1: devel
1.2.1 ():'.
		spec author: 'dgg'.
		spec timestamp: '9/18/2011 17:14'.
		spec 
			package: 'PetitParser' with: 'PetitParser-lr.211';
			package: 'AST-Core' with: 'AST-Core-lr.87';
			package: 'MethodWrappers' with: 'MethodWrappers-MarianoMartinezPeck.6';
			package: 'Phantom-Core' with: 'Phantom-Core-dgg.59';
			package: 'Phantom-Tests' with: 'Phantom-Tests-dgg.38';
			package: 'Phantom-Examples' with: 'Phantom-Examples-dgg.12';
			package: 'Phantom-PrecedenceGraph' with: 'Phantom-PrecedenceGraph-dgg.3';
			package: 'Phantom-PrecedenceGraphTests' with: 'Phantom-PrecedenceGraphTests-dgg.2'. ].
