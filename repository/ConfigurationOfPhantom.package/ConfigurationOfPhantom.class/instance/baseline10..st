as yet unclassified
baseline10: spec
	<version: '1.0-baseline'>
		spec for: #common do: [
		spec blessing: #baseline.
		spec repository: 'http://www.squeaksource.com/Phantom'.

		spec
			package: 'Phantom-Core' with: [spec requires: #('PetitParser' 'Phantom-PrecedenceGraph' 'MethodWrappers')];
			package: 'PetitParser' with: [spec repository: 'http://source.lukas-renggli.ch/petit'];
			package: 'MethodWrappers' with: [spec repository: 'http://www.squeaksource.com/ObjectMetaTools'];
			package: 'Phantom-PrecedenceGraph';
			package: 'Phantom-Tests' with: [ spec requires: #('Phantom-Core')];
			package: 'Phantom-Examples' with: [ spec requires: #('Phantom-Core')];
			package: 'Phantom-PrecedenceGraphTests' with: [ spec requires: #('Phantom-PrecedenceGraph')].
		
		spec
			group: 'default' with: #('Phantom-Core' 'Phantom-Examples');
			group: 'Core' with: #('Phantom-Core');
			group: 'Tests' with: #('Phantom-Tests' 'Phantom-PrecedenceGraphTests').
		].
	
	spec for: #'pharo1.3.x' do: [
		spec blessing: #baseline.

		spec
			package: 'Phantom-Core' with: [spec requires: #('AST-Core')];
			package: 'AST-Core' with: [spec repository: 'http://www.squeaksource.com/rb']].
	
	spec for: #'pharo1.4.x' do: [
		spec blessing: #baseline.
		
		spec
			package: 'MethodWrappers' with: [spec repository: 'http://www.squeaksource.com/Phantom']]
