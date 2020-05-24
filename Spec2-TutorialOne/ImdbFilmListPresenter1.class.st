"
ImdbFilmListPresenter1 new openWithSpec
"
Class {
	#name : #ImdbFilmListPresenter1,
	#superclass : #ImdbFilmListPresenter0,
	#category : #'Spec2-TutorialOne-Presenters'
}

{ #category : #initialization }
ImdbFilmListPresenter1 >> addFilm [
	| dialog windowPresenter |
	dialog := ImdbFilmPresenter3 newApplication: self application.
	windowPresenter := dialog openModalWithSpec.
	windowPresenter isOk
		ifFalse: [ ^ self ].
	ImdbFilm
		addFilm:
			(ImdbFilm new
				name: dialog nameText text;
				director: dialog directorText text;
				year: dialog yearNumber number).
	self updatePresenter
	
]

{ #category : #initialization }
ImdbFilmListPresenter1 >> initializeWindow: aWindowPresenter [

	aWindowPresenter 
		title: 'Mini IMDB';
		initialExtent: 600@400;
		toolBar: (self newToolBar
						addItem: (SpToolBarButtonPresenter new
										label: 'Add film' ;
										icon: (self application iconNamed: #smallAdd);
										action: [ self addFilm ];
										yourself);
									yourself)
]
