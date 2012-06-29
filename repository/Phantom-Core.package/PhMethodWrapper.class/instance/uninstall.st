install-uninstall
uninstall
	self wrappedClass ifNil: [^self].
	super uninstall.
	self needCleanUp ifTrue: [
		SystemChangeNotifier uniqueInstance doSilently: [self wrappedClass removeSelector: self selector]]