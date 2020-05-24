"
| app |
app := ImdbApp new. 
(app newPresenter: ImdbFilmPresenter) openWithSpec.


| app |
app := ImdbApp new. 
(app newPresenter: ImdbFilmPresenter) openDialogWithSpec.
""I do not understand the purpose of a dialog""

| app |
app := ImdbApp new. 
(app newPresenter: ImdbFilmPresenter) openModalWithSpec.

"
Class {
	#name : #ImdbFilmPresenter,
	#superclass : #SpPresenter,
	#instVars : [
		'nameText',
		'directorText',
		'yearNumber'
	],
	#category : #'Spec2-TutorialOne-Presenters'
}

{ #category : #specs }
ImdbFilmPresenter class >> defaultLayout [
	^ SpGridLayout new
		beRowNotHomogeneous;
		beColumnNotHomogeneous;
		add: 'Name' at: 1 @ 1; add: #nameText at: 2 @ 1;
		add: 'Director' at: 1 @ 2; add: #directorText at: 2 @ 2;
		add: 'Year' at: 1 @ 3; add: #yearNumber at: 2 @ 3;
		yourself
	
]

{ #category : #specs }
ImdbFilmPresenter class >> defaultSpec [

	^ self defaultLayout
]

{ #category : #specs }
ImdbFilmPresenter class >> example [

	<sampleInstance>
	^ self new openWithSpec
]

{ #category : #initialization }
ImdbFilmPresenter >> defineInputPorts [ 

	^ { SpModelPort new }
]

{ #category : #accessing }
ImdbFilmPresenter >> directorText [
	^ directorText
]

{ #category : #initialization }
ImdbFilmPresenter >> initializeDialogWindow: aDialogPresenter [
	"super initializeDialogWindow: aDialogPresenter."
	aDialogPresenter centered.
	aDialogPresenter 
		addButton: 'Cancel' do: [ :presenter | presenter close ];
		addButton: 'Save a Film in the DB' do: [ :presenter | presenter beOk; close ].

]

{ #category : #initialization }
ImdbFilmPresenter >> initializePresenters [
	nameText := self newTextInput autoAccept: true.
	directorText := self newTextInput autoAccept: true.
	yearNumber := self newNumberInput autoAccept: true;
		rangeMinimum: 1900 maximum: Year current year;
		yourself
]

{ #category : #initialization }
ImdbFilmPresenter >> initializeWindow: aWindowPresenter [
	aWindowPresenter
		title: 'Film';
		initialExtent: 400 @ 250
]

{ #category : #accessing }
ImdbFilmPresenter >> nameText [
	^ nameText
]

{ #category : #initialization }
ImdbFilmPresenter >> setModel: aFilm [

	nameText text: aFilm name.
	directorText text: aFilm director.
	yearNumber number: aFilm year.
]

{ #category : #accessing }
ImdbFilmPresenter >> yearNumber [
	^ yearNumber
]
