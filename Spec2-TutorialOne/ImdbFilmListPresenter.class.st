"
(ImdbFilmListPresenter newApplication: ImdbApp new) openWithSpec
"
Class {
	#name : #ImdbFilmListPresenter,
	#superclass : #SpPresenter,
	#instVars : [
		'filmList',
		'detail'
	],
	#category : #'Spec2-TutorialOne'
}

{ #category : #specs }
ImdbFilmListPresenter class >> defaultLayout [
	^ SpBoxLayout newVertical
			add: #filmList; 
			add: #detail;
			yourself
]

{ #category : #specs }
ImdbFilmListPresenter class >> defaultSpec [ 
	^ self defaultLayout
]

{ #category : #specs }
ImdbFilmListPresenter class >> example [
	<sampleInstance>
	^ self new openWithSpec
]

{ #category : #initialization }
ImdbFilmListPresenter >> addFilm [
	| dialog windowPresenter |
	dialog := ImdbFilmPresenter newApplication: self application.
	windowPresenter := dialog openModalWithSpec.
	windowPresenter isOk
		ifFalse: [ ^ self ].
	"how would you do it differently?"
	ImdbFilm 
		addFilm:
			(ImdbFilm new
				name: dialog nameText text;
				director: dialog directorText text;
				year: dialog yearNumber number).
	"save is missing"
	self updatePresenter
]

{ #category : #initialization }
ImdbFilmListPresenter >> initializePresenters [

	filmList := self newTable
		addColumn: (SpStringTableColumn title: 'Name' evaluated: #name);
		addColumn: (SpStringTableColumn title: 'Director' evaluated: #director);
		addColumn: (SpStringTableColumn title: 'Year' evaluated: #year);
		yourself.
		
	detail := self instantiate: ImdbFilmPresenter.
	detail enabled: false.
	
	filmList transmitTo: detail.
	self updatePresenter
]

{ #category : #initialization }
ImdbFilmListPresenter >> initializeWindow: aWindowPresenter [
	aWindowPresenter
		title: 'Mini IMDB';
		initialExtent: 600 @ 400;
		toolBar:
			(self newToolBar
				addItem:
					(SpToolBarButtonPresenter new
						label: 'Add film';
						icon: (self application iconNamed: #smallAdd);
						action: [ self addFilm ];
						yourself);
				yourself)
]

{ #category : #initialization }
ImdbFilmListPresenter >> updatePresenter [
	
	filmList items: ImdbFilm films

	
]
