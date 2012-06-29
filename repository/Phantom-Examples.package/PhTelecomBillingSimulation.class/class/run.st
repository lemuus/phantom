as yet unclassified
run
	| timerLog timing billing |
	[ 
	timerLog := PhTelecomAspectTimerLog new.
	timing := PhTelecomAspectTiming new.
	billing := PhTelecomAspectBilling new.
	timerLog install.
	timing install.
	billing install.
	Transcript open.
	Transcript
		show: 'Billing simulation';
		cr.
	self new run ]
		ensure: [ 
			timerLog uninstall.
			timing uninstall.
			billing uninstall ]