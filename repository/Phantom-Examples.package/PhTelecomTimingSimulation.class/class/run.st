as yet unclassified
run
	| timerLog timing |
	[ 
	timerLog := PhTelecomAspectTimerLog new.
	timing := PhTelecomAspectTiming new.
	timerLog install.
	timing install.
	Transcript open.
	Transcript
		show: 'Timing simulation';
		cr.
	self new run ]
		ensure: [ 
			timerLog uninstall.
			timing uninstall ]