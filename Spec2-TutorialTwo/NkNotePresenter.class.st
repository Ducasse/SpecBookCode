"
NkNotePresenter new openWithSpec
"
Class {
	#name : #NkNotePresenter,
	#superclass : #SpPresenter,
	#instVars : [
		'filter',
		'notes',
		'contents'
	],
	#category : #'Spec2-TutorialTwo'
}

{ #category : #specs }
NkNotePresenter class >> defaultLayout [
	<spec>
	^ SpBoxLayout newVertical
			add: #filter expand: false;
			add: (SpPanedLayout newVertical 
				position: 30 percent;
				add: #notes;
				add: #contents;
				yourself);
			yourself
]

{ #category : #specs }
NkNotePresenter class >> defaultSpec [ 
	<spec>
	^ self defaultLayout 
]

{ #category : #initialization }
NkNotePresenter >> initializePresenters [

	filter := self newTextInput.
	notes := self newList.
	notes beSingleSelection.
	
	notes items: self class environment allClasses.
	"self class environment allClasses 
		do: [ :each | notes add: each ]."
	contents := self newText
]

{ #category : #initialization }
NkNotePresenter >> initializeWindow: aWindowPresenter [
	aWindowPresenter
		title: 'NoteTaker';
		initialExtent: 800 @ 600
]
