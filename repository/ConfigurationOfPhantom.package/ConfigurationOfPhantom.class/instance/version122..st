versions
version122: spec
	<version: '1.2.2' imports: #('1.0-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'development'.
		spec description: '1.2.2 ():
1.2.2 (): - Changed pand: and por: selectors on PhPointcut to & and |
1.2.2 (): - fix a por: in membrane visibility test
1.2.2 (): - changed PhClassModifier to receive a pointcut instead of a class
1.2.2 (): New advice instantiation syntax
1.2.2 (): updated PhAdvice adice: and send:to: to always recive a context 
1.2.2 (): fix strange corruption on some tests
- Pointcut memoization
- Pointcut memoization
- Update the system aspects only if new class or method should be captured
- Added ClassModifiers to new pointcut verification
- fix a bug on receiverParser (* class not working)
- simplify receiverParser parser generation
- added a test for sender exposure on send:to: advice
- fix out of bounds on PhAdviceRunner runNextAdvice
- fix bug on combined ifblock
- notInCflowOf:  
* need more tests
- fix a bug getting the current sender
- added methods to disable automatic update
- fix bug on UpdateEnabled variable not initialized
- added a test for sender exposure on send:to: advice
- fix on PhAspectWeaver UpdateEnabled initialization
- modification of PhAroundAdviceRunner behavior
- fix bug on message send to superclass, captured on superclass
- added an accessor to the aspectMembrane of the Aspect
- clean up
- more clean up
- fix parenthesis bug
- bug fix on activeOnCflow assignment
- fix missing ifFalse'.
		spec author: 'dgg'.
		spec timestamp: '3/25/2012 12:23'.
		spec 
			package: 'PetitParser' with: 'PetitParser-lr.211';
			package: 'MethodWrappers' with: 'MethodWrappers-MarianoMartinezPeck.6';
			package: 'Phantom-Core' with: 'Phantom-Core-dgg.88';
			package: 'Phantom-Tests' with: 'Phantom-Tests-dgg.58';
			package: 'Phantom-Examples' with: 'Phantom-Examples-dgg.13';
			package: 'Phantom-PrecedenceGraph' with: 'Phantom-PrecedenceGraph-dgg.3';
			package: 'Phantom-PrecedenceGraphTests' with: 'Phantom-PrecedenceGraphTests-dgg.2'. ].

	spec for: #'pharo1.3.x' do: [
		spec blessing: #'development'.
		spec author: 'dgg'.
		spec timestamp: '1/25/2012 23:32'.
		spec package: 'AST-Core' with: 'AST-Core-lr.87'. ].

	spec for: #'pharo1.4.x' do: [
		spec blessing: #'development'.
		spec author: 'dgg'.
		spec timestamp: '1/25/2012 23:32'.
		spec package: 'MethodWrappers' with: 'MethodWrappers-dgg.7'. ].
