Class {
	#name : #ImdbApp,
	#superclass : #SpApplication,
	#category : #'Spec2-TutorialOne-Domain'
}

{ #category : #initialization }
ImdbApp >> initialize [ 
	super initialize.
	"self useBackend: #Gtk"
]
