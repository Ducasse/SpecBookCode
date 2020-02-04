Class {
	#name : #ImdbFilmListPresenter,
	#superclass : #SpPresenter,
	#instVars : [
		'filmList'
	],
	#category : #'Spec2-TutorialOne'
}

{ #category : #specs }
ImdbFilmListPresenter class >> defaultSpec [ 
	^ SpBoxLayout newVertical
			add: #filmList; 
			yourself
]

{ #category : #initialization }
ImdbFilmListPresenter >> addFilm [

	| dialog | 
	dialog := ImdbFilmPresenter newApplication: self application.
	dialog openDialogWithSpec.
	dialog isOk ifFalse: [ ^ self ].
	"how would you do it differently?"
	ImdbFilm new
		name: dialog nameText text;
		director: dialog director text; 
		year: dialog yearNumber number.
	"save is missing"
 	self updatePresenter.
	
]

{ #category : #initialization }
ImdbFilmListPresenter >> initializePresenters [

	filmList := self newTable
		addColumn: (SpStringTableColumn title: 'Name' evaluated: #name);
		addColumn: (SpStringTableColumn title: 'Director' evaluated: #director);
		addColumn: (SpStringTableColumn title: 'Year' evaluated: #year);
		yourself.
		
	"why called from here?"
	self updatePresenter
]

{ #category : #initialization }
ImdbFilmListPresenter >> initializeWinddow: aWindowPresenter [

	aWindowPresenter 
		title: 'Mini IMDB';
		initialExtent: 600@400;
		toolBar: (self newToolBar
						addItem: (SpToolBarButton new 
										label: 'Add film' ;
										icon: (self application iconNamed: #smallAdd);
										action: [ self addFilm ];
										yourself);
									yourself)
						
]

{ #category : #initialization }
ImdbFilmListPresenter >> updatePresenter [
	
	"filmList items: ImdbFilm selectAll asOrderedCollection "
]
