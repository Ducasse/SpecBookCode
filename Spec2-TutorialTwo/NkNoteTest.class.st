Class {
	#name : #NkNoteTest,
	#superclass : #TestCase,
	#category : #'Spec2-TutorialTwo'
}

{ #category : #tests }
NkNoteTest >> classNode [

	^ NkNote
]

{ #category : #tests }
NkNoteTest >> testCreateNewNote [

	| note |
	note := self classNode new.
	note title: 'foobar'.
	note creationDate: (Date readFromString: '7 February 2020'). 
	note contents: 'Pharo est super cool
	Pharo is super cool'.
	self assert: note title equals: 'foobar'.
	self assert: note creationDate printString equals: '7 February 2020'.
	self assert: note contents equals: 'Pharo est super cool
	Pharo is super cool'
	
]
